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
public class DriverDeleteController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final String ID_PARAM = "id";
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        driverService.delete(driverService.get(Long.parseLong(req.getParameter(ID_PARAM))).getId());
        resp.sendRedirect(req.getContextPath() + "/drivers/all");
    }
}
