package me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.users.repository;

import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.users.entities.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {
    Optional<Role> findByName(String name);
}
