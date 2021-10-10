package me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.mappers;

import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.dto.NoteRequest;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.dto.NoteResponse;
import me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.modals.Note;
import org.mapstruct.*;
import org.mapstruct.factory.Mappers;

import java.util.List;

@Mapper
public interface NoteMapper {

    NoteMapper INSTANCE = Mappers.getMapper(NoteMapper.class);

    Note toNoteModal(NoteRequest request);

    NoteResponse toResponse(Note note);

    @BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE,
            nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS)
    Note mapRequestToModal(NoteRequest noteRequest, @MappingTarget Note note);

    List<NoteResponse> toListResponse(List<Note> notes);
}
