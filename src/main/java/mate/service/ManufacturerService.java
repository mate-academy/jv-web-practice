package mate.service;

import java.util.Optional;
import mate.model.Manufacturer;

public interface ManufacturerService extends GenericService<Manufacturer> {
    Optional<Manufacturer> findManufacturer(Long manufacturerId);
}
