package mate.service.impl;

import java.util.List;
import mate.dao.DriverDao;
import mate.lib.Inject;
import mate.lib.Service;
import mate.model.Driver;
import mate.service.DriverService;

@Service
public class DriverServiceImpl implements DriverService {
    @Inject
    private DriverDao driverDao;

    @Override
    public Driver create(Driver driver) {
        List<Driver> drivers;
        drivers = driverDao.getAll();
        for (Driver driverItem : drivers) {
            if (driver.getLicenseNumber().equals(driverItem.getLicenseNumber())) {
                return driverItem;
            }
        }
        return driverDao.create(driver);
    }

    @Override
    public Driver get(Long id) {
        if (id == null) {
            return new Driver();
        }
        return driverDao.get(id).orElse(new Driver());
    }

    @Override
    public List<Driver> getAll() {
        return driverDao.getAll();
    }

    @Override
    public Driver update(Driver driver) {
        List<Driver> drivers;
        drivers = driverDao.getAll();
        for (Driver driverItem : drivers) {
            if (driver.getLicenseNumber().equals(driverItem.getLicenseNumber())
                    && !driverItem.getId().equals(driver.getId())) {
                return driverItem;
            }
        }
        return driverDao.update(driver);
    }

    @Override
    public boolean delete(Long id) {
        return driverDao.delete(id);
    }
}
