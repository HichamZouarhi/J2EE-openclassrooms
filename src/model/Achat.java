package model;
import java.util.Date;

public class Achat {
	
	private String Achat_ID;
	private String Article_ID;
	private String Client_ID;
	private int quantity;
	private Date date;
	public String getAchat_ID() {
		return Achat_ID;
	}
	public void setAchat_ID(String achat_ID) {
		Achat_ID = achat_ID;
	}
	public String getArticle_ID() {
		return Article_ID;
	}
	public void setArticle_ID(String article_ID) {
		Article_ID = article_ID;
	}
	public String getClient_ID() {
		return Client_ID;
	}
	public void setClient_ID(String client_ID) {
		Client_ID = client_ID;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	
}
