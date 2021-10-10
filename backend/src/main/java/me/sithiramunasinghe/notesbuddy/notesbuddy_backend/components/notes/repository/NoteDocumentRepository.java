package me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.repository;

import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.modals.NoteDocument;
import org.springframework.data.jpa.repository.JpaRepository;

public interface NoteDocumentRepository extends JpaRepository<NoteDocument, Long> {
}
