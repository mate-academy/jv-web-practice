package mate.dao;

import java.util.List;
import mate.model.Driver;

public interface DriverDao extends GenericDao<Driver> {
    List<Driver> getAllDriversByCar(Long carId);
}
