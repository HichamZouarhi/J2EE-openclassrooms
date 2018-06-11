

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Client;
import model.Commande;

/**
 * Servlet implementation class CreationCommande
 */
@WebServlet("/CreationCommande")
public class CreationCommande extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreationCommande() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Client client = new Client();
		client.setNom((String) request.getAttribute("nomClient"));
		client.setPrenom((String) request.getAttribute("prenomClient"));
		client.setAdresse_livraison((String) request.getAttribute("adresseClient"));
		client.setNum_tel((String) request.getAttribute("telephoneClient"));
		client.setAdresse_email((String) request.getAttribute("emailClient"));
		
		request.setAttribute( "client", client );
		
		
		Commande commande = new Commande();
		commande.setDate((Date) request.getAttribute("dateCommande"));
		commande.setMontant((float) request.getAttribute("montantCommande"));
		commande.setMode_paiement((String) request.getAttribute("modePaiementCommande"));
		commande.setStatus_paiement((String) request.getAttribute("statuspaiementCommande"));
		commande.setMode_livraison((String) request.getAttribute("modeLivraisonCommande"));
		commande.setStatus_livraison((String) request.getAttribute("statusLivraisonCommande"));
		
		request.setAttribute( "commande", commande );

    	this.getServletContext().getRequestDispatcher( "/afficherCommande.jsp" ).forward( request, response );
		
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
