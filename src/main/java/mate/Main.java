package mate;

import mate.dao.DriverDao;
import mate.dao.DriverDaoImpl;
import mate.lib.Injector;
import mate.service.DriverService;

public class Main {
    public static void main(String[] args) {
        DriverDao driverDao = new DriverDaoImpl();
        //System.out.println(driverDao.getAll());
        // connection to db OK

        Injector injectorDao = Injector.getInstance("mate.dao");
        DriverDao driverDao1 = (DriverDao) injectorDao.getInstance(DriverDao.class);
        Injector injectorService = Injector.getInstance("mate.service");
        DriverService driverService = (DriverService)
                injectorService.getInstance(DriverService.class);

    }
}
