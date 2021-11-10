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

@WebServlet(urlPatterns = "/makers/create")
public class CreateMakerController extends HttpServlet {
    private static Injector injector = Injector.getInstance("mate");
    private static ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String makerName = req.getParameter("maker_name");
        String country = req.getParameter("country");
        List<Manufacturer> manufacturers = manufacturerService.getAll();
        Manufacturer maker = new Manufacturer(makerName,country);
        for (Manufacturer tempMaker : manufacturers) {
            if (tempMaker.getName().equals(maker.getName())
                    && tempMaker.getCountry().equals(maker.getCountry())) {
                throw new RuntimeException("Maker " + maker.getName()
                        + " from " + maker.getCountry()
                        + " is already exist");
            }
        }
        manufacturerService.create(maker);
        resp.sendRedirect("/index");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/maker_create.jsp").forward(req, resp);
    }
}
