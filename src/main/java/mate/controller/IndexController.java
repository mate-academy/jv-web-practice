package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/", "/index"})
public class IndexController extends HttpServlet {
    private static final String PAGE_TITLE = "main page";
    private static final String PAGE_HEADER = "";
    private static final String PAGE_DIRECTORY = "/WEB-INF/views/index.jsp";

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("page_title", PAGE_TITLE);
        req.setAttribute("page_header", PAGE_HEADER);
        req.getRequestDispatcher(PAGE_DIRECTORY).forward(req, resp);
    }
}
