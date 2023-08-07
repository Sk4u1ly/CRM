package com.zoho.org.Crm.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zoho.org.Crm.Service.BillingService;
import com.zoho.org.Crm.Service.ContactService;
import com.zoho.org.Crm.entity.Billing;
import com.zoho.org.Crm.entity.Contact;

@Controller
public class BillingController {
    @Autowired
    private ContactService contactService;

    @Autowired
    private BillingService billService;

    @RequestMapping("/getBilling")
    public String getBill(@RequestParam("id") long id, ModelMap model) {

        Contact contact=contactService.getOneContactData(id);
        model.addAttribute("contact",contact);
        return "generate_bill";
    }

    @RequestMapping("/billingPage")
    public String saveBill(@ModelAttribute("bill") Billing bill, ModelMap model) {
        billService.saveCustomerBill(bill);
        return "bill";

    }

}
