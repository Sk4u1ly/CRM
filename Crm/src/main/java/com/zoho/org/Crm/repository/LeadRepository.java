package com.zoho.org.Crm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.zoho.org.Crm.entity.Lead;

public interface LeadRepository extends JpaRepository<Lead,Long>{
    
}
