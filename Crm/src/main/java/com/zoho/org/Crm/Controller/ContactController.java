package com.zoho.org.Crm.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zoho.org.Crm.Service.ContactService;
import com.zoho.org.Crm.entity.Contact;

@Controller
public class ContactController {
      @Autowired
    private ContactService contactService;

    @RequestMapping("/listContacts")
    public String listContacts(ModelMap model) {
        List<Contact> contacts=contactService.getAllContacts();
        model.addAttribute("contacts", contacts);
        return "list_contacts";
    }
    @RequestMapping("/getContact")
    public String getOneLead(@RequestParam("id")long id, ModelMap
            model) {
        Contact contact=contactService.getOneContactData(id);
        model.addAttribute("contact",contact);
        return "contact_info";
    }
    
}
