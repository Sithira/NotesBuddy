package me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.services;

import lombok.extern.slf4j.Slf4j;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.modals.Note;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.modals.NoteDocument;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.repository.NoteDocumentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.web.servlet.MultipartProperties;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;
import java.util.Objects;
import java.util.UUID;

@Slf4j
@Service
@Transactional
public class DocumentPersistService {

    private final Path systemUploadDir;
    private final NoteDocumentRepository noteDocumentRepository;

    @Autowired
    public DocumentPersistService(
            MultipartProperties multipartProperties,
            NoteDocumentRepository noteDocumentRepository) {
        this.systemUploadDir = Paths.get(multipartProperties.getLocation());
        this.noteDocumentRepository = noteDocumentRepository;
    }

    public void persistDocuments(Note note, MultipartFile[] documents) {
        Path uploadPath = this.systemUploadDir.resolve("__note_id_" + note.getId());

        if (!Files.exists(uploadPath)) {
            try {
                Files.createDirectories(uploadPath);

                for (final MultipartFile document : documents) {

                    final String originalFileName = StringUtils.cleanPath(Objects.requireNonNull(document.getOriginalFilename()));
                    final String fileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));

                    final String savingFileName = UUID.randomUUID() + fileExtension;
                    Path storagePath = Paths.get(uploadPath.toString(), savingFileName);

                    try (InputStream inputStream = document.getInputStream()) {
                        Files.copy(inputStream, storagePath, StandardCopyOption.REPLACE_EXISTING);

                        NoteDocument noteDocument = new NoteDocument();
                        noteDocument.setNoteId(note.getId());
                        noteDocument.setUrlPath("__note_id_" + note.getId() + "/" + savingFileName);
                        noteDocument = this.noteDocumentRepository.save(noteDocument);
                        log.info("Note document: {}", noteDocument);

                    } catch (IOException ioe) {
                        throw new IOException("Could not save image file: " + document.getName(), ioe);
                    }
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public void removeExistingAndPersist(Note note, MultipartFile[] documents) {

        try {
            List<NoteDocument> noteDocuments = note.getDocuments();
            for (NoteDocument noteDocument : noteDocuments) {
                Path filePath = this.systemUploadDir.resolve(noteDocument.getUrlPath());
                if (Files.exists(filePath)) {
                    Files.delete(filePath);
                    this.noteDocumentRepository.delete(noteDocument);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        // re-persist
        this.persistDocuments(note, documents);
    }
}
