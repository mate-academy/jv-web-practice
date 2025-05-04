package mate.dao;

import java.util.List;
import java.util.Optional;
import mate.model.Car;

public interface CarDao extends GenericDao<Car> {
    List<Car> getAllByDriver(Long driverId);

    Optional<Car> getByModelAndManufacturerId(String model, Long id);
}
