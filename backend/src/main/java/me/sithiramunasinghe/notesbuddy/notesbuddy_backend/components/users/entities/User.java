package me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.users.entities;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.core.modal.BaseModal;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@Entity
@ToString
@Table(name = "users", uniqueConstraints = {
        @UniqueConstraint(columnNames = {
                "username"
        }),
        @UniqueConstraint(columnNames = {
                "email"
        })
})
public class User extends BaseModal {


    private String name;
    private String username;
    private String email;
    private String password;

    @ToString.Exclude
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "user_roles",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id"))
    private Set<Role> roles = new HashSet<>();
}
