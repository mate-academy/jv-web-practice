package mate.dao;

import java.util.List;
import java.util.Optional;

public interface GenericDao<T> {
    T create(T manufacturer);

    Optional<T> get(Long id);

    List<T> getAll();

    T update(T manufacturer);

    boolean delete(Long id);
}
