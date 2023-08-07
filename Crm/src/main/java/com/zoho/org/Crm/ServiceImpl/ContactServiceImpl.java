package com.zoho.org.Crm.ServiceImpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zoho.org.Crm.Service.ContactService;
import com.zoho.org.Crm.entity.Contact;
import com.zoho.org.Crm.repository.ContactRepository;

@Service
public class ContactServiceImpl implements ContactService {

   @Autowired
    private ContactRepository contactRepository;
    @Override
    public void saveOneContact(Contact contact) {
          contactRepository.save(contact);
    }

    @Override
    public List<Contact> getAllContacts() {

        List<Contact> Contacts = contactRepository.findAll();
        return Contacts;
    }

    @Override
    public Contact getOneContactData(long id) {
        Optional<Contact> findById = contactRepository.findById(id);
        Contact contact=findById.get();

        return contact;
    }

    @Override
    public Contact getContactBill() {
        return null;
    }
}
