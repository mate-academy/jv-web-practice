package mate.controller;

import mate.lib.Injector;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.DriverService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/cars/add")
public class AddCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/drivers/add.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String driverName = req.getParameter("driverName");
//        String licenseNumber = req.getParameter("licenseNumber");
//        Driver driver = new Driver();
//        driver.setName(driverName);
//        driver.setLicenseNumber(licenseNumber);
//        carService.create(driver);
////        req.getRequestDispatcher("/WEB-INF/drivers/all").forward(req, resp);
//        resp.sendRedirect("all");
    }
}
