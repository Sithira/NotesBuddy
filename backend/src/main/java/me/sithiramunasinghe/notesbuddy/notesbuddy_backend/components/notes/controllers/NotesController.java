package me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.controllers;

import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.dto.NoteRequest;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.dto.NoteResponse;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.services.NotesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping(path = "/api/v1/notes")
public class NotesController {

    private final NotesService notesService;

    @Autowired
    public NotesController(NotesService notesService) {
        this.notesService = notesService;
    }

    @RequestMapping(method = RequestMethod.GET, path = "/", produces = "application/json")
    public ResponseEntity<List<NoteResponse>> getNotes() {
        return ResponseEntity.status(HttpStatus.OK).body(this.notesService.getAllNotes());
    }

    @RequestMapping(method = RequestMethod.POST, path = "/", produces = "application/json")
    public ResponseEntity<NoteResponse> createANote(@Valid @RequestBody NoteRequest request, @RequestParam(required = false) MultipartFile[] documents) {
        return ResponseEntity.status(HttpStatus.CREATED).body(this.notesService.createNewNote(request, documents));
    }

    @RequestMapping(method = RequestMethod.GET, path = "/{note_id}", produces = "application/json")
    public ResponseEntity<NoteResponse> getANote(@PathVariable("note_id") Long noteId) {
        return ResponseEntity.status(HttpStatus.OK).body(this.notesService.getNote(noteId));
    }

    @RequestMapping(method = RequestMethod.GET, path = "/{note_id}/document")
    public ResponseEntity<byte[]> getDocument(@PathVariable("note_id") Long noteId, @RequestParam String fileName) {
        return ResponseEntity.status(HttpStatus.OK).body(this.notesService.getFile(noteId, fileName));
    }

    @RequestMapping(method = RequestMethod.POST, path = "/{note_id}", produces = "application/json")
    public ResponseEntity<NoteResponse> updateANote(@PathVariable("note_id") Long noteId, @Valid @RequestBody NoteRequest request, @RequestParam(required = false) MultipartFile[] documents) {
        return ResponseEntity.status(HttpStatus.OK).body(this.notesService.updateNote(noteId, request, documents));
    }

    @RequestMapping(method = RequestMethod.DELETE, path = "/{note_id}", produces = "application/json")
    public ResponseEntity<Void> deleteANote(@PathVariable("note_id") Long noteId) {
        this.notesService.deletedNote(noteId);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }
}
