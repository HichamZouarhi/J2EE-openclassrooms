

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Client;

/**
 * Servlet implementation class CreationClient
 */
@WebServlet("/CreationClient")
public class CreationClient extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreationClient() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		System.out.println((String) request.getParameter("nomClient"));
		Client client = new Client();
		client.setNom((String) request.getParameter("nomClient"));
		client.setPrenom((String) request.getParameter("prenomClient"));
		client.setAdresse_livraison((String) request.getParameter("adresseClient"));
		client.setNum_tel((String) request.getParameter("telephoneClient"));
		client.setAdresse_email((String) request.getParameter("emailClient"));
		
		request.setAttribute( "client", client );
		System.out.println(client.toString());
    	this.getServletContext().getRequestDispatcher( "/afficherClient.jsp" ).forward( request, response );
		
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
