package mate.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/makers")
public class GetAllMakerController extends HttpServlet {
    private static Injector injector = Injector.getInstance("mate");
    private static ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Manufacturer> allMakers = manufacturerService.getAll();
        req.setAttribute("makers",allMakers);
        req.getRequestDispatcher("/WEB-INF/views/makers.jsp").forward(req,resp);
    }
}
