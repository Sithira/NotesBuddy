package me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.services;

import lombok.extern.slf4j.Slf4j;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.dto.NoteRequest;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.dto.NoteResponse;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.mappers.NoteMapper;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.modals.Note;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.repository.NotesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Slf4j
@Service
public class NotesService {
    private final NotesRepository notesRepository;
    private final DocumentPersistService documentPersistService;

    @Autowired
    public NotesService(
            NotesRepository notesRepository,
            DocumentPersistService documentPersistService) {
        this.notesRepository = notesRepository;
        this.documentPersistService = documentPersistService;
    }

    public NoteResponse createNewNote(NoteRequest request, MultipartFile[] documents) {
        Note note = NoteMapper.INSTANCE.toNoteModal(request);
        note = this.notesRepository.save(note);
        if (documents != null) {
            this.documentPersistService.persistDocuments(note, documents);
        }
        return NoteMapper.INSTANCE.toResponse(note);
    }

    public NoteResponse updateNote(Long noteId, NoteRequest noteRequest, MultipartFile[] documents) {
        Note note = this.notesRepository.getByLocalId(noteId).orElse(null);

        if (note == null) {
            return NoteMapper.INSTANCE.toResponse(new Note());
        }
        note = NoteMapper.INSTANCE.mapRequestToModal(noteRequest, note);
        note = notesRepository.save(note);

        if (documents != null) {
            documentPersistService.removeExistingAndPersist(note, documents);
        }
        return NoteMapper.INSTANCE.toResponse(note);
    }

    public NoteResponse getNote(Long noteId) {
        Note note = this.notesRepository.getByLocalId(noteId).orElse(new Note());
        return NoteMapper.INSTANCE.toResponse(note);
    }

    public List<NoteResponse> getAllNotes() {
        List<Note> notes = this.notesRepository.findAll();
        return NoteMapper.INSTANCE.toListResponse(notes);
    }

    public void deletedNote(Long noteId) {
        this.notesRepository.getByLocalId(noteId)
                .ifPresent(this.notesRepository::delete);
    }

    public byte[] getFile(Long noteId, String fileName) {
        return null;
    }
}
