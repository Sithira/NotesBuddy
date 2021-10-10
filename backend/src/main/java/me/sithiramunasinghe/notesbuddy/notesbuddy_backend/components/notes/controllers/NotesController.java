package me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.controllers;

import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.dto.NoteRequest;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.dto.NoteResponse;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping(path = "/api/v1/notes")
public class NotesController {

    @RequestMapping(method = RequestMethod.GET, path = "/", produces = "application/json")
    public ResponseEntity<List<NoteResponse>> getNotes() {
        return null;
    }

    @RequestMapping(method = RequestMethod.POST, path = "/", produces = "application/json")
    public ResponseEntity<NoteResponse> createANote(@Valid @RequestBody NoteRequest request) {
        return null;
    }

    @RequestMapping(method = RequestMethod.GET, path = "/{note_id}", produces = "application/json")
    public ResponseEntity<NoteResponse> getANote(@PathVariable("note_id") Long noteId) {
        return null;
    }

    @RequestMapping(method = RequestMethod.POST, path = "/{note_id}", produces = "application/json")
    public ResponseEntity<NoteResponse> updateANote(@PathVariable("note_id") Long noteId, @Valid @RequestBody NoteRequest request) {
        return null;
    }

    @RequestMapping(method = RequestMethod.DELETE, path = "/{note_id}", produces = "application/json")
    public ResponseEntity<Void> deleteANote(@PathVariable("note_id") Long noteId) {
        return null;
    }
}
