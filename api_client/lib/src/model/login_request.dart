//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_request.g.dart';



abstract class LoginRequest implements Built<LoginRequest, LoginRequestBuilder> {
    @BuiltValueField(wireName: r'username')
    String? get username;

    @BuiltValueField(wireName: r'password')
    String? get password;

    LoginRequest._();

    static void _initializeBuilder(LoginRequestBuilder b) => b;

    factory LoginRequest([void updates(LoginRequestBuilder b)]) = _$LoginRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<LoginRequest> get serializer => _$LoginRequestSerializer();
}

class _$LoginRequestSerializer implements StructuredSerializer<LoginRequest> {
    @override
    final Iterable<Type> types = const [LoginRequest, _$LoginRequest];

    @override
    final String wireName = r'LoginRequest';

    @override
    Iterable<Object?> serialize(Serializers serializers, LoginRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.username != null) {
            result
                ..add(r'username')
                ..add(serializers.serialize(object.username,
                    specifiedType: const FullType(String)));
        }
        if (object.password != null) {
            result
                ..add(r'password')
                ..add(serializers.serialize(object.password,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    LoginRequest deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = LoginRequestBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'username':
                    result.username = serializers.deserialize(value,
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

