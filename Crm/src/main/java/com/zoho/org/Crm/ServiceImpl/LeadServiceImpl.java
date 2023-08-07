package com.zoho.org.Crm.ServiceImpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zoho.org.Crm.Service.LeadService;
import com.zoho.org.Crm.entity.Lead;
import com.zoho.org.Crm.repository.LeadRepository;

@Service
public class LeadServiceImpl implements LeadService{

  @Autowired
 private LeadRepository leadRepository;
 
    @Override
    public void saveOneLead(Lead lead) {
        leadRepository.save(lead);
    }

    @Override
    public Lead getOneLeadData(long id) {
        Optional<Lead> findById = leadRepository.findById(id);
     Lead  lead = findById.get();
        return lead;
    }

    @Override
    public void deleteOneLead(long id) {
         leadRepository.deleteById(id);
    }

    @Override
    public List<Lead> listLeads() {
        List<Lead> leadList = leadRepository.findAll();
        return leadList;
    }
    
}
