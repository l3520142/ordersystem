package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

@WebServlet("/add")
public class add extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public add() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("BIG5");
		String desk=request.getParameter("desk");
		int pro1=Integer.parseInt(request.getParameter("pro1"));
		int pro2=Integer.parseInt(request.getParameter("pro2"));
		int pro3=Integer.parseInt(request.getParameter("pro3"));
		porder p=new porder(desk,pro1,pro2,pro3);
		HttpSession session=request.getSession();
		session.setAttribute("P", p);		
		response.sendRedirect("addEX/check.jsp");
	}

}
