package model;

public class Client {
	private String nom;
	private String prenom;
	private String adresse_livraison;
	private String num_tel;
	private String adresse_email;
	
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getAdresse_livraison() {
		return adresse_livraison;
	}
	public void setAdresse_livraison(String adresse_livraison) {
		this.adresse_livraison = adresse_livraison;
	}
	public String getNum_tel() {
		return num_tel;
	}
	public void setNum_tel(String num_tel) {
		this.num_tel = num_tel;
	}
	public String getAdresse_email() {
		return adresse_email;
	}
	public void setAdresse_email(String adresse_email) {
		this.adresse_email = adresse_email;
	}
	@Override
	public String toString() {
		return "Client [nom=" + nom + ", prenom=" + prenom + ", adresse_livraison=" + adresse_livraison + ", num_tel="
				+ num_tel + ", adresse_email=" + adresse_email + "]";
	}
	
	
}
