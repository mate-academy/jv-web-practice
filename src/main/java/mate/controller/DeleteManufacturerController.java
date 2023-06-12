package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.service.ManufacturerService;

@WebServlet(name = "deleteManufacturer", urlPatterns = "/manufacturers/delete")
public class DeleteManufacturerController extends GenericController {
    private final ManufacturerService manufacturerService =
            (ManufacturerService) INJECTOR.getInstance(ManufacturerService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long id = Long.valueOf(req.getParameter("id"));
        manufacturerService.delete(id);
        resp.sendRedirect("/manufacturers");
    }
}
