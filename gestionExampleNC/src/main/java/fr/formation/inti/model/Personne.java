package fr.formation.inti.model;

import java.util.ArrayList;
import java.util.List;

public class Personne {
	private String firstName;
	private String lastName;
	private String email;
	private String city;
	private String gender;
	private List<String> sports = new ArrayList<String>();



	@Override
	public String toString() {
		return "Personne [firstName=" + firstName + ", lastName=" + lastName + ", email=" + email + ", city=" + city
				+ ", gender=" + gender + ", sports=" + sports + "]";
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public List<String> getSports() {
		return sports;
	}

	public void setSports(List<String> sports) {
		this.sports = sports;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


}
