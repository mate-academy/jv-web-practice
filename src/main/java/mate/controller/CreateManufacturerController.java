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

@WebServlet(urlPatterns = "/manufacturers/create")
public class CreateManufacturerController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/manufacturers/createManufacturer.jsp").forward(req,resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        Manufacturer manufacturer = new Manufacturer();
        manufacturer.setCountry(req.getParameter("country"));
        manufacturer.setName(req.getParameter("name"));
        if (manufacturerService.create(manufacturer).getId() != null) {
            resp.sendRedirect(req.getContextPath() + "/message-box?referer="
                    + req.getHeader("Referer")
                    + "&msg=Manufacturer: " + manufacturer.getName() + ", created successfully!");
        }
    }
}
