//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'note_document_response.g.dart';



abstract class NoteDocumentResponse implements Built<NoteDocumentResponse, NoteDocumentResponseBuilder> {
    @BuiltValueField(wireName: r'note_id')
    int? get noteId;

    @BuiltValueField(wireName: r'url_path')
    String? get urlPath;

    @BuiltValueField(wireName: r'created_at')
    String? get createdAt;

    @BuiltValueField(wireName: r'updated_at')
    String? get updatedAt;

    NoteDocumentResponse._();

    static void _initializeBuilder(NoteDocumentResponseBuilder b) => b;

    factory NoteDocumentResponse([void updates(NoteDocumentResponseBuilder b)]) = _$NoteDocumentResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<NoteDocumentResponse> get serializer => _$NoteDocumentResponseSerializer();
}

class _$NoteDocumentResponseSerializer implements StructuredSerializer<NoteDocumentResponse> {
    @override
    final Iterable<Type> types = const [NoteDocumentResponse, _$NoteDocumentResponse];

    @override
    final String wireName = r'NoteDocumentResponse';

    @override
    Iterable<Object?> serialize(Serializers serializers, NoteDocumentResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.noteId != null) {
            result
                ..add(r'note_id')
                ..add(serializers.serialize(object.noteId,
                    specifiedType: const FullType(int)));
        }
        if (object.urlPath != null) {
            result
                ..add(r'url_path')
                ..add(serializers.serialize(object.urlPath,
                    specifiedType: const FullType(String)));
        }
        if (object.createdAt != null) {
            result
                ..add(r'created_at')
                ..add(serializers.serialize(object.createdAt,
                    specifiedType: const FullType(String)));
        }
        if (object.updatedAt != null) {
            result
                ..add(r'updated_at')
                ..add(serializers.serialize(object.updatedAt,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    NoteDocumentResponse deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = NoteDocumentResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'note_id':
                    result.noteId = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'url_path':
                    result.urlPath = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'created_at':
                    result.createdAt = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'updated_at':
                    result.updatedAt = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

