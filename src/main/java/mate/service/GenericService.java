package mate.service;

import java.util.List;

public interface GenericService<T> {
    T create(T manufacturer);

    T get(Long id);

    List<T> getAll();

    T update(T manufacturer);

    boolean delete(Long id);
}
