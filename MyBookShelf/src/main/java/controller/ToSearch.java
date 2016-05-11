package controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by Lora on 5/6/16.
 *
 * Takes you to the search page and shows you only the option you picked from the index page
 */
@WebServlet(
        name = "goToSearch",
        urlPatterns = { "/warArchive/goto-search" }
)
public class ToSearch extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String urlForward = "/warArchive/jsp/search.jsp";

        //get they type of search wanted
        String searchType = request.getParameter("searchType");

        //get the session object
        HttpSession session = request.getSession();
        session.setAttribute("searchType", searchType);

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(
                urlForward);
        dispatcher.forward(request, response);
    }
}
