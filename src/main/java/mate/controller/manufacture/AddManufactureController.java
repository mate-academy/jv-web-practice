package mate.controller.manufacture;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.dao.ManufacturerDao;
import mate.lib.Injector;
import mate.model.Manufacturer;

@WebServlet(urlPatterns = "/manufacturer/add")
public class AddManufactureController extends HttpServlet {
    private final Injector injector = Injector.getInstance("mate");
    private final ManufacturerDao manufacturerDao =
            (ManufacturerDao) injector.getInstance(ManufacturerDao.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/manufacturer/add.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String name = req.getParameter("name");
        String county = req.getParameter("country");
        Manufacturer manufacturer = new Manufacturer(name, county);
        manufacturerDao.create(manufacturer);
    }
}
