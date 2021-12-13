package mate.controller.manufacturers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;

public class CreateController extends HttpServlet {

    private static final Injector injector = Injector.getInstance("mate");
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String pathToJsp = getServletContext().getInitParameter("viewsPath")
                + "manufacturers/createNew.jsp";
        req.getRequestDispatcher(pathToJsp).forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String manufacturerName = req.getParameter("name");
        String manufacturerCountry = req.getParameter("country");
        Manufacturer manufacturer = new Manufacturer(manufacturerName, manufacturerCountry);
        manufacturerService.create(manufacturer);
        resp.sendRedirect(req.getContextPath() + "/manufacturers");
    }
}
