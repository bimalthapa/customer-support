package com.beezzybee;

import java.time.Instant;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

public class Ticket {

	private Map<String, Attachment> attachments = new LinkedHashMap<>();
	private String customerName;
	private String subject;
	private String body;
	private Instant dateCreated;
	
	public Attachment getAttachment(String name) {
		return this.attachments.get(name);
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	public void addAttachment(Attachment attachment) {
		this.attachments.put(attachment.getName(), attachment);
	}
	
	public Collection<Attachment> getAttachments() {
		return this.attachments.values();
	}

	public int getNumberOfAttachments() {
		return this.attachments.size();
	}

	public Instant getDateCreated() {
		return dateCreated;
	}

	public void setDateCreated(Instant dateCreated) {
		this.dateCreated = dateCreated;
	}
}
