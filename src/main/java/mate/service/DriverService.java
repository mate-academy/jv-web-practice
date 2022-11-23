package mate.service;

import java.util.List;
import mate.model.Driver;

public interface DriverService extends GenericService<Driver> {
    List<Driver> getAllByIdIn(String[] ids);
}
