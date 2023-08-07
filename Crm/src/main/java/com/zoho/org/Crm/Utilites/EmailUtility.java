package com.zoho.org.Crm.Utilites;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

@Component
public class EmailUtility {
    
     @Autowired
	private JavaMailSender sender;
	
	public void sendEmail(String email, String Subject, String Body) {
			
		MimeMessage message = sender.createMimeMessage();
		try {
			MimeMessageHelper messageHelper = new MimeMessageHelper(message,true);
			messageHelper.setTo(email);
			messageHelper.setSubject(Subject);
			messageHelper.setText(Body);
			sender.send(message);
		} catch (Exception e) {
			e.printStackTrace();
		}
			
    }
}
