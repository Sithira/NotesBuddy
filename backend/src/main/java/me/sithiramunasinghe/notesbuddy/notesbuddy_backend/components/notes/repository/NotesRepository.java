package me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.repository;

import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.modals.Note;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface NotesRepository extends JpaRepository<Note, Long> {

    Optional<Note> getByLocalId(Long noteId);
}
