package mate.controller;

import static mate.controller.GetAllDriversController.injector;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.service.ManufacturerService;

public class DeleteManufacturerController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        ManufacturerService manufacturerService = (ManufacturerService) injector.getInstance(
                ManufacturerService.class);
        Long id = Long.valueOf(req.getParameter("id"));
        manufacturerService.delete(id);
        resp.sendRedirect("/manufacturers/all");
    }
}
