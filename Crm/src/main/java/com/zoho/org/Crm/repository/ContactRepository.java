package com.zoho.org.Crm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.zoho.org.Crm.entity.Contact;

public interface ContactRepository extends JpaRepository<Contact,Long> {
    
}
