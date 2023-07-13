package mx.edu.utez.mamex.models.crud;

import java.util.List;

public interface DAORepository<T> {
    List<T> findAll();

    T findOne();

    boolean save(T object);

    boolean login(T object);

    boolean update(T object);

    boolean delete(Long id);
    boolean addToCart(T object);
}

//DAO, se definen los metodos para acceder a los datos