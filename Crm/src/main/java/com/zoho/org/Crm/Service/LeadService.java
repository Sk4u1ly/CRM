package com.zoho.org.Crm.Service;

import java.util.List;

import com.zoho.org.Crm.entity.Lead;

public interface LeadService {
    public void saveOneLead(Lead lead);
    public Lead getOneLeadData(long id);
    public void deleteOneLead(long id);
    public List<Lead> listLeads();

}
