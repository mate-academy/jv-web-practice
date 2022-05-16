package mate.service;

import java.util.List;
import mate.dao.CarDao;
import mate.lib.Inject;
import mate.lib.Service;
import mate.model.Car;
import mate.model.Driver;

@Service
public class CarServiceImpl implements CarService {
    @Inject
    private CarDao carDao;

    @Override
    public void addDriverToCar(Driver driver, Car car) {
        carDao.addDriverToCar(car, driver);
    }

    @Override
    public void removeDriverFromCar(Driver driver, Car car) {
        //car.getDrivers().remove(driver);
        //carDao.update(car);
        //DRIVER MINUS CAR
    }

    @Override
    public List<Car> getAllByDriver(Long driverId) {
        //"====> ALL FOR DRIVER REDIRECT (Service)"
        return carDao.getAllByDriver(driverId);
    }

    @Override
    public Car create(Car car) {
        //"====> NEW CAR REDIRECT (Service)"
        return carDao.create(car);
    }

    @Override
    public Car get(Long id) {
        //"====> GET CARS REDIRECT (Service)"
        return carDao.get(id).get();
    }

    @Override
    public List<Car> getAll() {
        //"====> ALL CARS REDIRECT (Service)"
        return carDao.getAll();
    }

    @Override
    public Car update(Car car) {
        return carDao.update(car);
    }

    @Override
    public boolean delete(Long id) {
        return carDao.delete(id);
    }
}
