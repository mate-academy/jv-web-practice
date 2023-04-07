package mate.controller.manufacturer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;
import mate.service.ManufacturerServiceImpl;

@WebServlet("/manufacturers/add")
public class AddManufacturersController extends HttpServlet {
    //        public static final Injector injector
    //                = Injector.getInstance("mate");
    private static final ManufacturerService manufacturerService
            = new ManufacturerServiceImpl(); //todo fix injector

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/manufacturer/manufacturerAdd.jsp")
                .forward(req, resp);
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        final Manufacturer manufacturer = new Manufacturer();
        manufacturer.setName(req.getParameter("name"));
        manufacturer.setCountry(req.getParameter("country"));
        manufacturerService.create(manufacturer);
        resp.sendRedirect(req.getContextPath() + "/");
    }
}
