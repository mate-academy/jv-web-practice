package mate.controller.manufacturer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;

public class GetManufacturerByIdController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static ManufacturerService manufacturerService
            = (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/manufacturer/get.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long manufacturerId = Long.parseLong(req.getParameter("Id"));
        Manufacturer manufacturer = manufacturerService.get(manufacturerId);
        req.setAttribute("manufacturer", manufacturer);
        req.getRequestDispatcher("/WEB-INF/views/manufacturer/page-for-get-method.jsp")
                .forward(req, resp);
    }
}
