package com.example.registry;

import org.springframework.data.jpa.repository.JpaRepository;

public interface DataRepository extends JpaRepository<UserData, Integer> {

}
