//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'note_response.g.dart';



abstract class NoteResponse implements Built<NoteResponse, NoteResponseBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'title')
    String? get title;

    @BuiltValueField(wireName: r'note_body')
    String? get noteBody;

    @BuiltValueField(wireName: r'created_at')
    DateTime? get createdAt;

    @BuiltValueField(wireName: r'updated_at')
    DateTime? get updatedAt;

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
        if (object.noteBody != null) {
            result
                ..add(r'note_body')
                ..add(serializers.serialize(object.noteBody,
                    specifiedType: const FullType(String)));
        }
        if (object.createdAt != null) {
            result
                ..add(r'created_at')
                ..add(serializers.serialize(object.createdAt,
                    specifiedType: const FullType(DateTime)));
        }
        if (object.updatedAt != null) {
            result
                ..add(r'updated_at')
                ..add(serializers.serialize(object.updatedAt,
                    specifiedType: const FullType(DateTime)));
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
                case r'note_body':
                    result.noteBody = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'created_at':
                    result.createdAt = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    break;
                case r'updated_at':
                    result.updatedAt = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    break;
            }
        }
        return result.build();
    }
}

