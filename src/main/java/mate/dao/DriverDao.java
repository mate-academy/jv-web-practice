package mate.dao;

import java.util.List;
import mate.model.Driver;

public interface DriverDao extends GenericDao<Driver> {
    Driver create(Driver driver);

    List<Driver> getAll();
}
