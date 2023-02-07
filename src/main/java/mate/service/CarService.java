package mate.service;

import java.util.List;
import java.util.Optional;
import mate.model.Car;
import mate.model.Driver;

public interface CarService extends GenericService<Car> {
    void addDriverToCar(Driver driver, Car car);

    void removeDriverFromCar(Driver driver, Car car);

    List<Car> getAllByDriver(Long driverId);

    Optional<Car> getByModelAndManufacturerId(String model, Long id);
}
