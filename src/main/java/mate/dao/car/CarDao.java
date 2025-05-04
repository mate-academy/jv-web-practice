package mate.dao.car;

import java.util.List;
import mate.dao.GenericDao;
import mate.model.Car;

public interface CarDao extends GenericDao<Car> {
    List<Car> getAllByDriver(Long driverId);
}
