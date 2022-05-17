package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/manufacturers/delete")
public class DeleteManufacturerController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ManufacturerService manufacturerService =
                (ManufacturerService) injector.getInstance(ManufacturerService.class);
        manufacturerService.delete(Long.valueOf(request.getParameter("id")));
        request.getRequestDispatcher("/WEB-INF/views/drivers/all.jsp")
                .forward(request, response);
    }
}
