package mate.controller;

import mate.lib.Injector;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/create/manufacturer")
public class CreateManufacturerController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/create/manufacturer.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ManufacturerService manufacturerService = (ManufacturerService) injector.getInstance(ManufacturerService.class);
        Manufacturer manufacturer = new Manufacturer();
        manufacturer.setName(req.getParameter("name"));
        manufacturer.setCountry(req.getParameter("country"));
        manufacturerService.create(manufacturer);
        resp.sendRedirect("/create/manufacturer");
    }
}
