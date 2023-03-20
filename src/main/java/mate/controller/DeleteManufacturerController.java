package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.dao.ManufacturerDaoImpl;
import mate.service.ManufacturerService;
import mate.service.ManufacturerServiceImpl;

public class DeleteManufacturerController extends HttpServlet {
    private ManufacturerService manufacturerService =
            new ManufacturerServiceImpl(new ManufacturerDaoImpl());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String id = req.getParameter("id");
        manufacturerService.delete(Long.parseLong(id));
        req.getRequestDispatcher("/WEB-INF/views/serviceViews/manufacturerRegistration.jsp")
                .forward(req, resp);
    }
}
