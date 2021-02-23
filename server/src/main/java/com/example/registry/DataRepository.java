package com.example.registry;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface DataRepository extends JpaRepository<UserDataDB, Integer> {
    UserDataDB findByUuid(String uuid);
    Boolean existsByUuid(String uuid);
    List<UserDataDB> findByInstancetypeAndStatus(String instancetype, SystemStatus status);
    List<UserDataDB> findByInstancetype(String instancetype);
    List<UserDataDB> findByStatus(SystemStatus status);
}
