package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/manufacturers/create")
public class ManufacturerCreateController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final String MANUFACTURER_NAME_PARAMETER = "manufacturerName";
    private static final String MANUFACTURER_COUNTRY_NUMBER_PARAMETER = "manufacturerCountry";
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/manufacturers/manufacturerCreate.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Manufacturer manufacturer = new Manufacturer();
        String name =
                req.getParameter(MANUFACTURER_NAME_PARAMETER);
        String country =
                req.getParameter(MANUFACTURER_COUNTRY_NUMBER_PARAMETER);
        manufacturer
                .setName(name.length() > 0 ? name : "-----");
        manufacturer
                .setCountry(country.length() > 0 ? country : "-----");
        manufacturerService.create(manufacturer);
        resp.sendRedirect(req.getContextPath() + "/manufacturers/all");
    }
}
