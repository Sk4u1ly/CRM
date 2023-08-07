package com.zoho.org.Crm.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zoho.org.Crm.Service.ContactService;
import com.zoho.org.Crm.Service.LeadService;
import com.zoho.org.Crm.entity.Contact;
import com.zoho.org.Crm.entity.Lead;

@Controller
public class LeadController {
    @Autowired
    private LeadService leadService;

    @Autowired
    private ContactService contactService;

    @RequestMapping("/createLeadPage")
    public String CreateData() {
        return "create_lead";
    }

    @RequestMapping("/")
    public String defaultMethod() {
        return "menu";
    }

    @RequestMapping("/save")
    public String saveOneLead(@ModelAttribute("lead") Lead lead, Model model) {
        leadService.saveOneLead(lead);
       model.addAttribute("lead", lead);
        return "lead_info" ;
    }
    
    
    @RequestMapping("/composeEmail")
    public String sendEmail(@RequestParam("email") String email, Model model) {
       model.addAttribute("email",email);
        return "compose_email";

    }
    @RequestMapping("/convertLead")
    public String convertLead(@RequestParam("id") long id, Model model) {
        Lead lead = leadService.getOneLeadData(id);
        Contact contact=new Contact();
        contact.setFirstName(lead.getFirstName());
        contact.setLastName(lead.getLastName());
        contact.setEmail(lead.getEmail());
        contact.setMobile(lead.getMobile());
        contact.setSource(lead.getSource());

        contactService.saveOneContact(contact);

        leadService.deleteOneLead(lead.getId());


        List<Contact> contacts=contactService.getAllContacts();
        model.addAttribute("contacts",contacts);
        return "list_contacts";


    }
    @RequestMapping("/listall")
    public String getAllLeads(Model model) {
        List<Lead> leads=leadService.listLeads();
        model.addAttribute("leads",leads);
        return "list_leads";
    }
    @RequestMapping("/getLead")
    public String getOneLead(@RequestParam("id")long id, Model
            model) {
        Lead lead=leadService.getOneLeadData(id);
        model.addAttribute("lead",lead);
        return "lead_info";
    }
}
