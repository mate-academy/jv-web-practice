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

@WebServlet(urlPatterns = "/manufacturers/add")
public class CreateManufacturerController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/manufacturers/addManufacturer.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Manufacturer manufacturer = new Manufacturer();
        manufacturer.setName(request.getParameter("name"));
        manufacturer.setCountry(request.getParameter("country"));
        manufacturerService.create(manufacturer);

        response.sendRedirect(request.getContextPath() + "/manufacturers");
    }
}
