package mate.controller.manufacturersControllers;

import mate.lib.Injector;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/manufacturers/add")
public class ManufacturersAddController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    ManufacturerService manufacturerService;

    public ManufacturersAddController() {
        manufacturerService = (ManufacturerService)
                injector.getInstance(ManufacturerService.class);
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/manufacturers/operations/add.jsp")
                .forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String country = req.getParameter("country");
        manufacturerService.create(getManufacturer(name, country));
        req.getRequestDispatcher("/WEB-INF/views/success.jsp").forward(req, resp);
    }

    private Manufacturer getManufacturer(String name, String country) {
        Manufacturer manufacturer = new Manufacturer();
        manufacturer.setName(name);
        manufacturer.setCountry(country);
        return manufacturer;
    }
}
