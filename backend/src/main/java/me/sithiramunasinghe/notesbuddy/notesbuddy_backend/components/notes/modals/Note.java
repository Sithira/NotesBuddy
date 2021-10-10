package me.sithiramunasinghe.notesbuddy.notesbuddy_backend.components.notes.modals;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Getter
@Setter
@Entity
@Table(name = "notes")
public class Note {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "local_id")
    private Long localId;

    private String title;

    private String description;

    private Integer color;

    private int priority;

    private Date createdAt;
    private Date updatedAt;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "note")
    List<NoteDocument> documents;

    @PrePersist
    public void setDate() {
        createdAt = new Date();
    }

    @PreUpdate
    public void setUpdatedDate() {
        updatedAt = new Date();
    }
}
