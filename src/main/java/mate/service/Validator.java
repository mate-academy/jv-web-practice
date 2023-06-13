package mate.service;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.controller.PageAddress;

public class Validator {
    public static Long getId(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String requestId = req.getParameter("id");
        if (requestId == null) {
            resp.sendRedirect(PageAddress.EXCEPTION_PAGE.getPath());
            return null;
        }
        return Long.valueOf(requestId);
    }
}
