// RefundService.java
package com.icia.sec.services.refund;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icia.sec.utils.SimpleTransactionManager;
import com.icia.sec.utils.TransactionAssistant;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.request.CancelData;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

@Service
public class RefundService extends TransactionAssistant  {
	@Autowired
	private SimpleTransactionManager tranManager;
    private IamportClient client;

    public RefundService() {
        this.client = new IamportClient("3524268181084271", "87VDgykHU6vua41v5f8Ofxvr6qiWiMegYdFlCh7xeDEGST9TG9PvMDPW1jTvm81lyoDXuQITwizuP6gf");
    }

    public boolean processPartialRefund(String impUid, int amount, String reason, String proCode) throws Exception {
        // 부분 환불 금액을 포함하는 CancelData 생성
        CancelData cancelData = new CancelData(impUid, true, new BigDecimal(amount));  // 부분 환불 가능 여부 true
        //CancelData cancelData = new CancelData(impUid, true);  // 부분 환불 가능 여부 true
        cancelData.setReason(reason);  // 환불 사유 설정

        IamportResponse<Payment> cancelResponse = client.cancelPaymentByImpUid(cancelData);
        //this.tranManager = this.getTransaction(false);
        if (cancelResponse.getResponse() != null) {
        	try {
        		Map<String, Object> m = new HashMap<>();
        		m.put("proCode", proCode);
        		m.put("orderCode", impUid);
        		if(this.convertToBoolean(this.sqlSession.update("upCancelOrder", m))) {
        			System.out.println("update");
        		}
			} catch (Exception e) {
				e.printStackTrace();
			}
            return true;  // 환불 성공
        } else {
            throw new Exception(cancelResponse.getMessage());  // 환불 실패
        }
    }
    
    public boolean processPartialRefundAll(String impUid, String reason) throws Exception {
    	// 부분 환불 금액을 포함하는 CancelData 생성
    	CancelData cancelData = new CancelData(impUid, true);  // 부분 환불 가능 여부 true
    	//CancelData cancelData = new CancelData(impUid, true);  // 부분 환불 가능 여부 true
    	cancelData.setReason(reason);  // 환불 사유 설정
    	
    	IamportResponse<Payment> cancelResponse = client.cancelPaymentByImpUid(cancelData);
    	this.tranManager = this.getTransaction(false);
    	if (cancelResponse.getResponse() != null) {
    		try {
    			this.tranManager.tranStart();
    			if(this.convertToBoolean(this.sqlSession.update("upCancelOrderAll", impUid))) {
    				if(this.convertToBoolean(this.sqlSession.update("upCancelDate", impUid))) {
    					this.tranManager.commit();
    				}else {
    					this.tranManager.rollback();
    				}
    			}else {
    				this.tranManager.rollback();
    			}
    		} catch (Exception e) {
    			e.printStackTrace();
    		}
    		return true;  // 환불 성공
    	} else {
    		throw new Exception(cancelResponse.getMessage());  // 환불 실패
    	}
    }
    
    /* boolean 변환 */
	protected boolean convertToBoolean(int value) {
		return value > 0 ? true : false;
	}
}
