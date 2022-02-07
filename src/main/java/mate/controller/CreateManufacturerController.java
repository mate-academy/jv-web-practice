package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;

public class CreateManufacturerController extends HttpServlet {
    private static final String MANUFACTURER_CREATE_FORM = "/WEB-INF/views/"
            + "manufacturerCreateForm.jsp";
    private static final String ROOT_PACKAGE = "mate";
    private static final String NAME_ATTRIBUTE = "name";
    private static final String COUNTRY_ATTRIBUTE = "country";
    private static final String CREATE_MANUFACTURER_REQUEST = "/manufacturers/add";
    private ManufacturerService manufacturerService;

    @Override
    public void init() {
        Injector injector = Injector.getInstance(ROOT_PACKAGE);
        manufacturerService = (ManufacturerService) injector
                .getInstance(ManufacturerService.class);
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher(MANUFACTURER_CREATE_FORM).forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        String manufacturerName = req.getParameter(NAME_ATTRIBUTE);
        String manufacturerCountry = req.getParameter(COUNTRY_ATTRIBUTE);
        Manufacturer manufacturer = new Manufacturer();
        manufacturer.setName(manufacturerName);
        manufacturer.setCountry(manufacturerCountry);
        manufacturerService.create(manufacturer);
        resp.sendRedirect(getServletContext().getContextPath()
                + CREATE_MANUFACTURER_REQUEST);

    }
}
