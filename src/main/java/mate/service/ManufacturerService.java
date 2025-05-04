package mate.service;

import mate.model.Manufacturer;

import java.util.Optional;

public interface ManufacturerService extends GenericService<Manufacturer> {
    Optional<Manufacturer> getManufacturerByName(String name);
}
