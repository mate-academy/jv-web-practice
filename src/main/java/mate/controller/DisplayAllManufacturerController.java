package mate.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.dao.ManufacturerDaoImpl;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;
import mate.service.ManufacturerServiceImpl;

public class DisplayAllManufacturerController extends HttpServlet {
    private ManufacturerService manufacturerService =
            new ManufacturerServiceImpl(new ManufacturerDaoImpl());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Manufacturer> all = manufacturerService.getAll();
        req.setAttribute("allManufacturer",all);
        req.getRequestDispatcher("/WEB-INF/views/displayAllManufacturer.jsp")
                .forward(req,resp);
    }
}
