package mate.controller;

import mate.lib.Injector;
import mate.model.Driver;
import mate.model.Manufacturer;
import mate.service.DriverService;
import mate.service.ManufacturerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/manufacturers/createManufacturer")
public class CreateManufacturerController extends HttpServlet {
    private final Injector injector = Injector.getInstance("mate");
    private final ManufacturerService manufacturerService = (ManufacturerService)
            injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/manufacturers/createManufacturer.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Manufacturer manufacturer = new Manufacturer();
        manufacturer.setName(req.getParameter("manufacturer_name"));
        manufacturer.setCountry(req.getParameter("country"));
        manufacturerService.create(manufacturer);
        resp.sendRedirect(req.getContextPath() + "/index");
    }
}
