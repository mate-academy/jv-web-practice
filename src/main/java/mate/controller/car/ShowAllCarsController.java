package mate.controller.car;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/cars")
public class ShowAllCarsController extends HttpServlet {
    private static final String PAGE_TITLE = "list of cars";
    private static final String PAGE_HEADER = "All cars";
    private static final String PAGE_DIRECTORY = "/WEB-INF/views/cars/list.jsp";

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("page_title", PAGE_TITLE);
        req.setAttribute("page_header", PAGE_HEADER);
        req.getRequestDispatcher(PAGE_DIRECTORY).forward(req, resp);
    }
}
