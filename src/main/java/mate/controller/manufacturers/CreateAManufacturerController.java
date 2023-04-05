package mate.controller.manufacturers;

import mate.lib.Injector;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/manufacturers/create-a-manufacturer")
public class CreateAManufacturerController extends HttpServlet {
    public static final Injector injector = Injector.getInstance("mate");
    public static final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/manufacturers/createAManufacturer.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Manufacturer manufacturer = new Manufacturer();
        String name = req.getParameter("name");
        String country = req.getParameter("country");
        manufacturer.setName(name);
        manufacturer.setCountry(country);
        manufacturerService.create(manufacturer);
        resp.sendRedirect(req.getContextPath() + "/manufacturers");
    }
}
