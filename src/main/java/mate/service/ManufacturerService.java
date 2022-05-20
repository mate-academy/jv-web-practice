package mate.service;

import mate.model.Manufacturer;

public interface ManufacturerService extends GenericService<Manufacturer> {
    Manufacturer create(Manufacturer manufacturer);

    Manufacturer get(Long id);
}
