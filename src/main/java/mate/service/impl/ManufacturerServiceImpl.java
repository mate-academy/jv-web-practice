package mate.service.impl;

import java.util.List;
import java.util.NoSuchElementException;
import mate.dao.ManufacturerDao;
import mate.exception.DataProcessingException;
import mate.lib.Inject;
import mate.lib.Service;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;

@Service
public class ManufacturerServiceImpl implements ManufacturerService {
    @Inject
    private ManufacturerDao manufacturerDao;
    
    @Override
    public Manufacturer create(Manufacturer manufacturer) {
        List<Manufacturer> manufacturers;
        manufacturers = manufacturerDao.getAll();
        for (Manufacturer manufacturerItem : manufacturers) {
            if (manufacturer.getName().equals(manufacturerItem.getName())) {
                return manufacturerItem;
            }
        }
        return manufacturerDao.create(manufacturer);
    }

    @Override
    public Manufacturer get(Long id) {
        try {
            return manufacturerDao.get(id).orElseThrow();
        } catch (NoSuchElementException e) {
            throw new DataProcessingException("Don't exist Manufacturer dy id " + id, e);
        }
    }

    @Override
    public List<Manufacturer> getAll() {
        return manufacturerDao.getAll();
    }

    @Override
    public Manufacturer update(Manufacturer manufacturer) {
        List<Manufacturer> manufacturers;
        manufacturers = manufacturerDao.getAll();
        for (Manufacturer manufacturerItem : manufacturers) {
            if (manufacturer.getName().equals(manufacturerItem.getName())
                    && !manufacturerItem.getId().equals(manufacturer.getId())) {
                return manufacturerItem;
            }
        }
        return manufacturerDao.update(manufacturer);
    }

    @Override
    public boolean delete(Long id) {
        return manufacturerDao.delete(id);
    }
}
