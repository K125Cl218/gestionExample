package fr.formation.inti.action;

import com.opensymphony.xwork2.ActionSupport;

import fr.formation.inti.model.MessageStore;
import fr.formation.inti.model.Personne;

public class HelloStrutsAction extends ActionSupport {

	private MessageStore messageStore;
	private String name;
	private Personne personne;

	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
	
	
	public HelloStrutsAction() {
	}

	
	public MessageStore getMessageStore() {
		return messageStore;
	}

	public void setMessageStore(MessageStore messageStore) {
		this.messageStore = messageStore;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Personne getPersonne() {
		return personne;
	}

	public void setPersonne(Personne personne) {
		this.personne = personne;
	}

}
