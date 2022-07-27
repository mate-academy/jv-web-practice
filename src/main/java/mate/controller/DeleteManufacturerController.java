package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.ManufacturerService;
import mate.service.ManufacturerServiceImpl;

public class DeleteManufacturerController extends HttpServlet {
    public static final Injector injector = Injector.getInstance("mate");
    private final ManufacturerService manufacturerService = (ManufacturerServiceImpl)
            injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        manufacturerService.delete(Long.valueOf(req.getParameter("manufacturerId")));
        req.getRequestDispatcher("/WEB-INF/views/displayAllManufacturers.jsp");
    }
}
