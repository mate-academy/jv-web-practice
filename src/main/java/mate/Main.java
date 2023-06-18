package mate;

import mate.dao.ManufacturerDao;
import mate.dao.ManufacturerDaoImpl;
import mate.service.ManufacturerService;
import mate.service.ManufacturerServiceImpl;

public class Main {

    public static void main(String[] args) {
        ManufacturerService manufacturerService = new ManufacturerServiceImpl();
        ManufacturerDao manufacturerDao = new ManufacturerDaoImpl();
        System.out.println(manufacturerDao.getAll());
    }
}
