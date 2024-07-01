package com.icia.sec;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.icia.sec.services.payment.PaymentService;

import java.util.HashMap;
import java.util.Map;

@Controller
public class PaymentController {

    @Autowired
    private PaymentService paymentService;

    @RequestMapping(value = "/checkPaymentStatus.do", method = RequestMethod.GET)
    @ResponseBody
    public Map<String, Object> checkPaymentStatus(String orderCode) {
        Map<String, Object> response = new HashMap<>();

        try {
            boolean isCancelled = paymentService.isPaymentCancelled(orderCode);
            response.put("cancelled", isCancelled);
        } catch (Exception e) {
            response.put("cancelled", false);
            response.put("error", e.getMessage());
        }

        return response;
    }
}
