

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserOption
 */
@WebServlet("/UserOption")
public class UserOption extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserOption() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.requestHandler(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	public void requestHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String value = request.getParameter("data");
		String option = request.getParameter("option");
		String values[] = value.split("__");
		ArrayList<String> listData = new ArrayList<String>();
		for(int i=0; i<values.length; i++){
			listData.add(values[i]);
		}		
		Map<String, ArrayList<String>> mapData = new HashMap<String, ArrayList<String>>();
		mapData.put("list", listData);
		mapData.put("text", listData);		
		this.sendResult(mapData, option, request, response);
	}
	
	public void sendResult(Map<String, ArrayList<String>> data, String option, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setAttribute("mapData", data);
        request.setAttribute("option", option);
        RequestDispatcher rd = request.getRequestDispatcher("/Result.jsp");
        rd.forward(request, response);
	}

}
