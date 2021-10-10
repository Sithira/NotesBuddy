package me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.modals;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.util.Date;

@Getter
@Setter
@Entity
@Table(name = "note_document")
public class NoteDocument {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "note_id")
    private Long noteId;

    @Column(name = "url_path")
    private String urlPath;

    @ToString.Exclude
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "note_id", nullable = false, insertable = false, updatable = false)
    private Note note;

    private Date createdAt;
    private Date updatedAt;


    @PrePersist
    public void setDate() {
        createdAt = new Date();
    }

    @PreUpdate
    public void setUpdatedDate() {
        updatedAt = new Date();
    }
}
