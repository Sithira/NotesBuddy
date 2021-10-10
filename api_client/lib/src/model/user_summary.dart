//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_summary.g.dart';



abstract class UserSummary implements Built<UserSummary, UserSummaryBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'username')
    String? get username;

    @BuiltValueField(wireName: r'name')
    String? get name;

    UserSummary._();

    static void _initializeBuilder(UserSummaryBuilder b) => b;

    factory UserSummary([void updates(UserSummaryBuilder b)]) = _$UserSummary;

    @BuiltValueSerializer(custom: true)
    static Serializer<UserSummary> get serializer => _$UserSummarySerializer();
}

class _$UserSummarySerializer implements StructuredSerializer<UserSummary> {
    @override
    final Iterable<Type> types = const [UserSummary, _$UserSummary];

    @override
    final String wireName = r'UserSummary';

    @override
    Iterable<Object?> serialize(Serializers serializers, UserSummary object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.username != null) {
            result
                ..add(r'username')
                ..add(serializers.serialize(object.username,
                    specifiedType: const FullType(String)));
        }
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    UserSummary deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = UserSummaryBuilder();

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
                case r'username':
                    result.username = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'name':
                    result.name = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

