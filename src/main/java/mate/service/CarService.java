package mate.service;

import java.util.List;
import mate.model.Car;
import mate.model.Driver;

public interface CarService extends GenericService<Car> {
    Car getByModel(String model);

    void addDriverToCar(Driver driver, Car car);

    void removeDriverFromCar(Driver driver, Car car);

    List<Car> getAllByDriver(Long driverId);
}
