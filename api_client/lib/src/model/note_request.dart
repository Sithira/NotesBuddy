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

    @BuiltValueField(wireName: r'description')
    String? get description;

    @BuiltValueField(wireName: r'color')
    int? get color;

    @BuiltValueField(wireName: r'priority')
    int? get priority;

    @BuiltValueField(wireName: r'local_id')
    int? get localId;

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
        if (object.localId != null) {
            result
                ..add(r'local_id')
                ..add(serializers.serialize(object.localId,
                    specifiedType: const FullType(int)));
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
                case r'local_id':
                    result.localId = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
            }
        }
        return result.build();
    }
}

