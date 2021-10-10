//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'note_request.g.dart';



abstract class NoteRequest implements Built<NoteRequest, NoteRequestBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'title')
    String? get title;

    @BuiltValueField(wireName: r'note_body')
    String? get noteBody;

    NoteRequest._();

    static void _initializeBuilder(NoteRequestBuilder b) => b;

    factory NoteRequest([void updates(NoteRequestBuilder b)]) = _$NoteRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<NoteRequest> get serializer => _$NoteRequestSerializer();
}

class _$NoteRequestSerializer implements StructuredSerializer<NoteRequest> {
    @override
    final Iterable<Type> types = const [NoteRequest, _$NoteRequest];

    @override
    final String wireName = r'NoteRequest';

    @override
    Iterable<Object?> serialize(Serializers serializers, NoteRequest object,
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
        return result;
    }

    @override
    NoteRequest deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = NoteRequestBuilder();

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
            }
        }
        return result.build();
    }
}

