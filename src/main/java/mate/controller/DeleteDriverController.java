package mate.controller;

import mate.lib.Injector;
import mate.service.DriverService;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeleteDriverController extends HttpServlet {
    Injector injector = Injector.getInstance("mate");
    DriverService driverService = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.valueOf(request.getParameter("id"));
        driverService.delete(id);
    }
}
