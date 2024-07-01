package com.icia.sec.services.payment;

import org.springframework.stereotype.Service;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

@Service
public class PaymentService {
    private IamportClient client;

    public PaymentService() {
        this.client = new IamportClient("3524268181084271", "87VDgykHU6vua41v5f8Ofxvr6qiWiMegYdFlCh7xeDEGST9TG9PvMDPW1jTvm81lyoDXuQITwizuP6gf");
    }

    public boolean isPaymentCancelled(String orderCode) throws Exception {
        IamportResponse<Payment> paymentResponse = client.paymentByImpUid(orderCode);

        if (paymentResponse.getResponse() != null) {
            return "cancelled".equals(paymentResponse.getResponse().getStatus());
        } else {
            throw new Exception(paymentResponse.getMessage());
        }
    }
}
