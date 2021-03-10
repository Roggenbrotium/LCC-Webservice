package com.liland.lcc.ws;

import com.liland.lcc.dto.InstanceType;
import com.liland.lcc.dto.SystemStatus;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.time.LocalDateTime;
import java.util.List;

public interface DataRepository extends JpaRepository<UserDataDB, Integer>{
    UserDataDB findByUuid(String uuid);
    
    UserDataDB findById(int id);
    
    Boolean existsByUuid(String uuid);
    
    List<UserDataDB> findByInstancetypeAndStatus(InstanceType instancetype, SystemStatus status);
    
    List<UserDataDB> findByInstancetype(InstanceType instancetype);
    
    List<UserDataDB> findByStatus(SystemStatus status);
    
    @Modifying
    @Query(value = "update data set status = :status where uuid = :uuid", nativeQuery = true)
    void updateStatus(@Param("status") int status, @Param("uuid") String uuid);
    
    @Modifying
    @Query(value = "update data set version = :version, ipaddress = :ipAddress where uuid = :uuid", nativeQuery = true)
    void updateVersion(@Param("version") String version, @Param("uuid") String uuid, @Param("ipAddress") String ipAddress);
    
    @Modifying
    @Query(value = "update data set timestamp = :timestamp, ipaddress = :ipAddress where uuid = :uuid", nativeQuery = true)
    void updateTimestamp(@Param("timestamp") LocalDateTime timestamp, @Param("uuid") String uuid, @Param("ipAddress") String ipAddress);
}
