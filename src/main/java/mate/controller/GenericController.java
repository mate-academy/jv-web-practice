package mate.controller;

import javax.servlet.http.HttpServlet;
import mate.lib.Injector;

public abstract class GenericController extends HttpServlet {
    protected static final String VIEWS_PATH = "/WEB-INF/views/";
    protected static final Injector INJECTOR = Injector.getInstance("mate");
}
