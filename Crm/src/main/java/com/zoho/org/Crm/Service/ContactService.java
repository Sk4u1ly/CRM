package com.zoho.org.Crm.Service;

import java.util.List;

import com.zoho.org.Crm.entity.Contact;

public interface ContactService {
     public void saveOneContact(Contact contact);
    public List<Contact> getAllContacts();
    public Contact getOneContactData(long id);
    public Contact getContactBill();
}
    

