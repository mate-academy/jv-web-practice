package mate.dao;

import mate.model.Manufacturer;

import java.util.Optional;

public interface ManufacturerDao extends GenericDao<Manufacturer> {
        Optional<Manufacturer> getByName(String name);
}
