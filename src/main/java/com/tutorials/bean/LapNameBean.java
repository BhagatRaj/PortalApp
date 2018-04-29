package com.tutorials.bean;


public class LapNameBean extends LaptopEmiBean{

	private String lapDetails;
	private String lapProcessor;
	private String lapNameKey;
	private String lapNameValue;
	
	
	public String getLapNameKey() {
		return lapNameKey;
	}
	public void setLapNameKey(String lapNameKey) {
		this.lapNameKey = lapNameKey;
	}
	public String getLapNameValue() {
		return lapNameValue;
	}
	public void setLapNameValue(String lapNameValue) {
		this.lapNameValue = lapNameValue;
	}
	public String getLapDetails() {
		return lapDetails;
	}
	public void setLapDetails(String lapDetails) {
		this.lapDetails = lapDetails;
	}
	public String getLapProcessor() {
		return lapProcessor;
	}
	public void setLapProcessor(String lapProcessor) {
		this.lapProcessor = lapProcessor;
	}
	
}
