package fr.formation.inti.model;

public class MessageStore {
	private String message;
	
	public MessageStore() {
		message = "Hello Struts 2 !";
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	
}
