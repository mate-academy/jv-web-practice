package mate.service;

import java.util.List;
import mate.model.Car;
import mate.model.Driver;
import mate.model.Manufacturer;

public interface CarService extends GenericService<Car> {
    void addDriverToCar(Driver driver, Car car);

    void removeDriverFromCar(Driver driver, Car car);

    List<Car> getAllByDriver(Long driverId);

    public Car getInstance(String model, Manufacturer manufacturer);
}
