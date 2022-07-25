package mate.controller;

import mate.lib.Injector;
import mate.model.Driver;
import mate.model.Manufacturer;
import mate.service.DriverService;
import mate.service.DriverServiceImpl;
import mate.service.ManufacturerService;
import mate.service.ManufacturerServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddManufacturerController extends HttpServlet {
    public static final Injector injector = Injector.getInstance("mate");
    private final ManufacturerService manufacturerService = (ManufacturerServiceImpl) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/addManufacturer.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Manufacturer manufacturer = new Manufacturer();
        manufacturer.setName(req.getParameter("manufacturerName"));
        manufacturer.setCountry(req.getParameter("manufacturerCountry"));
        manufacturerService.create(manufacturer);

    }
}
