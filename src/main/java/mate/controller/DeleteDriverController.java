package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.DriverService;

@WebServlet(urlPatterns = "/drivers/delete")
public class DeleteDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String id = req.getParameter("id");
        driverService.delete(Long.valueOf(id));
        req.getRequestDispatcher("all").forward(req, resp);
        //mentor please skip this comment for me :)
        //req.getRequestDispatcher("/WEB-INF/views/drivers/all.jsp").forward(req, resp);
        //^--move to page without setting parameters--^
        //req.getRequestDispatcher("all").forward(req, resp);
        //^--move to controller--^
        //resp.sendRedirect(req.getContextPath() + "all");
        //^--redirect to controller--^
    }
}
