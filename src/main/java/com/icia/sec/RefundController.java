// RefundController.java
package com.icia.sec;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.icia.sec.services.refund.RefundService;

@Controller
public class RefundController {

    @Autowired
    private RefundService refundService;

    @RequestMapping(value = "/refund", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> refund(@RequestBody Map<String, String> requestData) {
        String impUid = requestData.get("impUid");  // 결제 고유 ID
        String reason = requestData.get("reason");
        String type = requestData.get("type");
        String proCode = requestData.get("proCode");
        System.out.println("**********************타입 : "+type);
        int amount = Integer.parseInt(requestData.get("amount"));  // 부분 환불 금액
        Map<String, Object> response = new HashMap<>();
        try {
            boolean success = refundService.processPartialRefund(impUid, amount, reason, proCode);
            response.put("success", success);
            response.put("message", success ? "부분 환불 성공" : "부분 환불 실패");
        } catch (Exception e) {
            response.put("success", false);
            response.put("message", e.getMessage());
        }
        return response;
    }
    
    @RequestMapping(value = "/refundAll", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> refundAll(@RequestBody Map<String, String> requestData) {
    	String impUid = requestData.get("impUid");  // 결제 고유 ID
    	String reason = requestData.get("reason");
    	Map<String, Object> response = new HashMap<>();
    	try {
    		boolean success = refundService.processPartialRefundAll(impUid, reason);
    		response.put("success", success);
    		response.put("message", success ? "부분 환불 성공" : "부분 환불 실패");
    	} catch (Exception e) {
    		response.put("success", false);
    		response.put("message", e.getMessage());
    	}
    	return response;
    }
}
