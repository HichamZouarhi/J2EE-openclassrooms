package model;

import java.util.Date;
import model.Client;

public class Commande {
	private Date date;
	private float montant;
	private String mode_paiement;
	private String status_paiement;
	private String mode_livraison;
	private String status_livraison;
	private Client client;
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public float getMontant() {
		return montant;
	}
	public void setMontant(float montant) {
		this.montant = montant;
	}
	public String getMode_paiement() {
		return mode_paiement;
	}
	public void setMode_paiement(String mode_paiment) {
		this.mode_paiement = mode_paiment;
	}
	public String getStatus_paiement() {
		return status_paiement;
	}
	public void setStatus_paiement(String status_paiment) {
		this.status_paiement = status_paiment;
	}
	public String getMode_livraison() {
		return mode_livraison;
	}
	public void setMode_livraison(String mode_livraison) {
		this.mode_livraison = mode_livraison;
	}
	public String getStatus_livraison() {
		return status_livraison;
	}
	public void setStatus_livraison(String status_livraison) {
		this.status_livraison = status_livraison;
	}
	@Override
	public String toString() {
		return "Commande [date=" + date + ", montant=" + montant + ", mode_paiment=" + mode_paiement
				+ ", status_paiment=" + status_paiement + ", mode_livraison=" + mode_livraison + ", status_livraison="
				+ status_livraison + "]";
	}
	public Client getClient() {
		return client;
	}
	public void setClient(Client client) {
		this.client = client;
	}
	
	
}
