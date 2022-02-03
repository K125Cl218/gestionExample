package fr.formation.inti.action;

import com.opensymphony.xwork2.ActionSupport;

import fr.formation.inti.model.MessageStore;

public class HelloStrutsAction extends ActionSupport {

	private MessageStore messageStore;

	@Override
	public String execute() throws Exception {
		
		messageStore = new MessageStore();
		
		return "success";
	}

	public MessageStore getMessageStore() {
		return messageStore;
	}

	public void setMessageStore(MessageStore messageStore) {
		this.messageStore = messageStore;
	}
	
	
}
