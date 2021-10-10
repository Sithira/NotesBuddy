package me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.users.entities;

import lombok.Getter;
import lombok.Setter;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.core.modal.BaseModal;

import javax.persistence.Entity;
import javax.persistence.Table;

@Getter
@Setter
@Entity
@Table(name = "roles")
public class Role extends BaseModal {
    private String name;
    private String description;
}
