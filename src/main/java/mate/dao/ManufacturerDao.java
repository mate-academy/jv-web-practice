package mate.dao;

import mate.model.Manufacturer;

public interface ManufacturerDao extends GenericDao<Manufacturer> {
    Manufacturer getByManufacturerName(String manufacturerName);
}
