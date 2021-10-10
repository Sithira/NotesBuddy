//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_up_request.g.dart';



abstract class SignUpRequest implements Built<SignUpRequest, SignUpRequestBuilder> {
    @BuiltValueField(wireName: r'name')
    String get name;

    @BuiltValueField(wireName: r'username')
    String get username;

    @BuiltValueField(wireName: r'email')
    String get email;

    @BuiltValueField(wireName: r'password')
    String get password;

    SignUpRequest._();

    static void _initializeBuilder(SignUpRequestBuilder b) => b;

    factory SignUpRequest([void updates(SignUpRequestBuilder b)]) = _$SignUpRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<SignUpRequest> get serializer => _$SignUpRequestSerializer();
}

class _$SignUpRequestSerializer implements StructuredSerializer<SignUpRequest> {
    @override
    final Iterable<Type> types = const [SignUpRequest, _$SignUpRequest];

    @override
    final String wireName = r'SignUpRequest';

    @override
    Iterable<Object?> serialize(Serializers serializers, SignUpRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'name')
            ..add(serializers.serialize(object.name,
                specifiedType: const FullType(String)));
        result
            ..add(r'username')
            ..add(serializers.serialize(object.username,
                specifiedType: const FullType(String)));
        result
            ..add(r'email')
            ..add(serializers.serialize(object.email,
                specifiedType: const FullType(String)));
        result
            ..add(r'password')
            ..add(serializers.serialize(object.password,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    SignUpRequest deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SignUpRequestBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'name':
                    result.name = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'username':
                    result.username = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'email':
                    result.email = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'password':
                    result.password = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

