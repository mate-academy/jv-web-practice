package mate.service;

import mate.model.Manufacturer;

public interface ManufacturerService extends GenericService<Manufacturer> {
    public Manufacturer getInstance(String name, String country);
}
