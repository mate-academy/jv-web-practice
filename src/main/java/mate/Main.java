package mate;

import mate.dao.ManufacturerDaoImpl;
import mate.lib.Injector;
import mate.service.ManufacturerService;
import mate.util.ConnectionUtil;

import java.sql.Connection;

public class Main {

    public static void main(String[] args) {

        ManufacturerDaoImpl manufacturerDao = new ManufacturerDaoImpl();
        System.out.println(manufacturerDao.get(1L));


    }
}
