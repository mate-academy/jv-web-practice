package mate.dao;

import java.util.Optional;
import mate.model.Manufacturer;

public interface ManufacturerDao extends GenericDao<Manufacturer> {
    Manufacturer create(Manufacturer manufacturer);

    Optional<Manufacturer> get(Long id);
}
