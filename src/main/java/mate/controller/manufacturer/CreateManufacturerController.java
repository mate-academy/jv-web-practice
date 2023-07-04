package mate.controller.manufacturer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/manufacturers/new")
public class CreateManufacturerController extends HttpServlet {
    private static final Injector INJECTOR = Injector.getInstance("mate");

    private final ManufacturerService manufacturerService =
            (ManufacturerService) INJECTOR.getInstance(ManufacturerService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/manufacturers/new.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String manufacturerName = req.getParameter("name");
        String manufacturerCountry = req.getParameter("country");
        Manufacturer newManufacturer = new Manufacturer();
        newManufacturer.setName(manufacturerName);
        newManufacturer.setCountry(manufacturerCountry);
        manufacturerService.create(newManufacturer);
        resp.sendRedirect(req.getContextPath() + "/manufacturers");
    }
}
