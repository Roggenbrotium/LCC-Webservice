package com.example.registry;

import org.apache.catalina.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface DataRepository extends JpaRepository<UserData, Integer> {
    UserData findByUuid(String uuid);
    boolean existsByUuid(String uuid);
    List<UserData> findByInstancetypeAndStatus(String instancetype, Integer status);
    List<UserData> findByInstancetype(String instancetype);
}
