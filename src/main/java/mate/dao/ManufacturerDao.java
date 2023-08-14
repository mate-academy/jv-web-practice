package mate.dao;

import java.util.Optional;
import mate.model.Manufacturer;

public interface ManufacturerDao extends GenericDao<Manufacturer> {
    Optional<Manufacturer> getByName(String name);
}
