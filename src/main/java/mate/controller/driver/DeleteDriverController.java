package mate.controller.driver;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.CarService;
import mate.service.DriverService;

@WebServlet(urlPatterns = "/driver/delete")
public class DeleteDriverController extends HttpServlet {
    public static final Injector injector = Injector.getInstance("mate");
    private final DriverService driveService =
        (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {
        Long id = Long.valueOf(req.getParameter("id"));
        driveService.delete(id);
        resp.sendRedirect(req.getContextPath() + "/all_drivers");


    }

}
