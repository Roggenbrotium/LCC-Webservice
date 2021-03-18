package com.liland.lcc.ws;

import com.liland.lcc.dto.InstanceType;
import com.liland.lcc.dto.Roles;
import com.liland.lcc.dto.SystemStatus;

import javax.persistence.*;
import java.sql.Blob;
import java.time.LocalDateTime;

@Entity
@Table(name = "liland_system")
public class UserDataDB {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    private String uuid;

    @Lob
    @Column(length = 3000)
    private Blob publickey;
    private InstanceType instancetype;
    private String version;
    private SystemStatus status;
    private LocalDateTime timestamp;
    private String ipaddress;
    private Roles role;
    
    //region getter
    public Integer getId() {
        return id;
    }
    
    public String getUuid() {
        return uuid;
    }

    public Blob getPublickey() {
        return publickey;
    }

    public InstanceType getInstancetype() {
        return instancetype;
    }

    public String getVersion() {
        return version;
    }

    public SystemStatus getStatus() {
        return status;
    }

    public LocalDateTime getTimestamp() {
        return timestamp;
    }
    
    public String getIpaddress() {
        return ipaddress;
    }
    
    public Roles getRole() {
        return role;
    }
    //endregion

    //region setter
    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public void setPublickey(Blob publickey) {
        this.publickey = publickey;
    }

    public void setInstancetype(InstanceType instancetype) {
        this.instancetype = instancetype;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public void setStatus(SystemStatus status) {
        this.status = status;
    }

    public void setTimestamp(LocalDateTime timestamp) {
        this.timestamp = timestamp;
    }
    
    public void setIpaddress(String ipaddress) {
        this.ipaddress = ipaddress;
    }
    
    public void setRole(Roles role) {
        this.role = role;
    }
    //endregion
}
