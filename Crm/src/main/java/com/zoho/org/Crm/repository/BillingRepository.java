package com.zoho.org.Crm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.zoho.org.Crm.entity.Billing;

public interface BillingRepository extends JpaRepository<Billing,Long>{
    
}
