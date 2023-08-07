package com.zoho.org.Crm.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zoho.org.Crm.Service.BillingService;
import com.zoho.org.Crm.entity.Billing;
import com.zoho.org.Crm.repository.BillingRepository;
@Service
public class BillingServiceImpl implements BillingService {

    @Autowired
    private BillingRepository BillingRepo;

    @Override
    public void saveCustomerBill(Billing bill) {
        BillingRepo.save(bill);
       
    }
    
}
