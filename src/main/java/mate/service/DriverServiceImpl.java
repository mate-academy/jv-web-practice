package mate.service;

import java.util.List;
import mate.dao.DriverDao;
import mate.exception.DataProcessingException;
import mate.lib.Inject;
import mate.lib.Service;
import mate.model.Driver;

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
        return driverDao.get(id).get();
    }

    @Override
    public Driver getByLicenceNumber(String licenceNumber) {
        return getAll()
                .stream()
                .filter(f -> f.getLicenseNumber().equals(licenceNumber))
                .findFirst()
                .orElseThrow(
                    () -> new DataProcessingException("can not find driver by licence number"
                        + licenceNumber));
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
