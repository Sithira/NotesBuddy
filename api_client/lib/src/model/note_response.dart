//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:notes_buddy_api_client/src/model/note_document_response.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'note_response.g.dart';



abstract class NoteResponse implements Built<NoteResponse, NoteResponseBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'title')
    String? get title;

    @BuiltValueField(wireName: r'description')
    String? get description;

    @BuiltValueField(wireName: r'color')
    int? get color;

    @BuiltValueField(wireName: r'priority')
    int? get priority;

    @BuiltValueField(wireName: r'documents')
    BuiltList<NoteDocumentResponse>? get documents;

    @BuiltValueField(wireName: r'local_id')
    int? get localId;

    @BuiltValueField(wireName: r'created_at')
    String? get createdAt;

    @BuiltValueField(wireName: r'updated_at')
    String? get updatedAt;

    NoteResponse._();

    static void _initializeBuilder(NoteResponseBuilder b) => b;

    factory NoteResponse([void updates(NoteResponseBuilder b)]) = _$NoteResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<NoteResponse> get serializer => _$NoteResponseSerializer();
}

class _$NoteResponseSerializer implements StructuredSerializer<NoteResponse> {
    @override
    final Iterable<Type> types = const [NoteResponse, _$NoteResponse];

    @override
    final String wireName = r'NoteResponse';

    @override
    Iterable<Object?> serialize(Serializers serializers, NoteResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.title != null) {
            result
                ..add(r'title')
                ..add(serializers.serialize(object.title,
                    specifiedType: const FullType(String)));
        }
        if (object.description != null) {
            result
                ..add(r'description')
                ..add(serializers.serialize(object.description,
                    specifiedType: const FullType(String)));
        }
        if (object.color != null) {
            result
                ..add(r'color')
                ..add(serializers.serialize(object.color,
                    specifiedType: const FullType(int)));
        }
        if (object.priority != null) {
            result
                ..add(r'priority')
                ..add(serializers.serialize(object.priority,
                    specifiedType: const FullType(int)));
        }
        if (object.documents != null) {
            result
                ..add(r'documents')
                ..add(serializers.serialize(object.documents,
                    specifiedType: const FullType(BuiltList, [FullType(NoteDocumentResponse)])));
        }
        if (object.localId != null) {
            result
                ..add(r'local_id')
                ..add(serializers.serialize(object.localId,
                    specifiedType: const FullType(int)));
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
    NoteResponse deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = NoteResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'id':
                    result.id = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'title':
                    result.title = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'description':
                    result.description = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'color':
                    result.color = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'priority':
                    result.priority = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'documents':
                    result.documents.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(NoteDocumentResponse)])) as BuiltList<NoteDocumentResponse>);
                    break;
                case r'local_id':
                    result.localId = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
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

