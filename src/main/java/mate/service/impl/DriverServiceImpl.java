package mate.service.impl;

import java.util.List;
import java.util.NoSuchElementException;
import mate.dao.DriverDao;
import mate.exception.DataProcessingException;
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
        return driverDao.create(driver);
    }

    @Override
    public Driver get(Long id) {
        try {
            return driverDao.get(id).orElseThrow();
        } catch (NoSuchElementException e) {
            throw new DataProcessingException("Don't exist Driver dy id " + id, e);
        }
    }

    @Override
    public List<Driver> getAll() {
        return driverDao.getAll();
    }

    @Override
    public Driver update(Driver driver) {
        return driverDao.update(driver);
    }

    @Override
    public boolean delete(Long id) {
        return driverDao.delete(id);
    }
}
