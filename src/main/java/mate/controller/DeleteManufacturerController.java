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
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long id = Long.valueOf(req.getParameter("id"));
        boolean deleted = manufacturerService.delete(id);
        if (deleted) {
            //req.setAttribute("message", "Manufacturer ID=" + id
            //        + " was successfully deleted from database");
            //req.getRequestDispatcher("manufacturers/all.jsp").forward(req, resp);

            //resp.setAttribute("message", такого метода у resp нету,
            //как же тогда передать "message" в "/manufacturers"?
            resp.sendRedirect("/manufacturers");
        }
    }
}
