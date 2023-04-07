package mate.controller.driver;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.service.DriverService;
import mate.service.DriverServiceImpl;

@WebServlet("/drivers/all")
public class GetAllDriversController extends HttpServlet {
    //    public static final Injector injector = Injector.getInstance("mate");
    private DriverService driverService; //todo fix injector

    @Override
    public void init() throws ServletException {
        driverService = new DriverServiceImpl();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("drivers", driverService.getAll());
        req.getRequestDispatcher("/WEB-INF/views/driver/driversAll.jsp").forward(req, resp);
    }
}
