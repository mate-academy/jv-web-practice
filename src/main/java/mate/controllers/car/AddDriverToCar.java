package mate.controllers.car;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.CarService;
import mate.service.DriverService;

@WebServlet(urlPatterns = "/cars/drivers/add")
public class AddDriverToCar extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");

    private static final CarService carService
            = (CarService) injector.getInstance(CarService.class);

    private static final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/addDriverToCar.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String carName = req.getParameter("model").toLowerCase();
        String licenceNumber = req.getParameter("licence number");
        carService.addDriverToCar(driverService.getByLicenceNumber(licenceNumber),
                carService.getByModel(carName));
        resp.sendRedirect(req.getContextPath() + "/success");
    }
}
