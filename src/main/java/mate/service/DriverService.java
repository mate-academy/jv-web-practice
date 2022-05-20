package mate.service;

import java.util.List;
import mate.model.Driver;

public interface DriverService extends GenericService<Driver> {
    Driver create(Driver driver);

    public List<Driver> getAll();
}
