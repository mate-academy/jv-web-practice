package mate.controller;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.dao.ManufacturerDao;
import mate.lib.Injector;
import mate.model.Manufacturer;

public class CreateManufacturerController extends HttpServlet {
    private ManufacturerDao manufacturerDao;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/interaction/registerManufacturer.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Manufacturer manufacturer = new Manufacturer();
        manufacturer.setName(req.getParameter("name"));
        manufacturer.setCountry(req.getParameter("country"));
        manufacturerDao.create(manufacturer);
        req.getRequestDispatcher("/WEB-INF/views/interaction/registerManufacturer.jsp")
                .forward(req, resp);
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        final Injector injector = Injector.getInstance("mate");
        manufacturerDao = (ManufacturerDao) injector.getInstance(ManufacturerDao.class);
    }
}
