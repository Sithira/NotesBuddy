//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:notes_buddy_api_client/src/date_serializer.dart';
import 'package:notes_buddy_api_client/src/model/date.dart';

import 'package:notes_buddy_api_client/src/model/api_error.dart';
import 'package:notes_buddy_api_client/src/model/login_request.dart';
import 'package:notes_buddy_api_client/src/model/login_response.dart';
import 'package:notes_buddy_api_client/src/model/note_request.dart';
import 'package:notes_buddy_api_client/src/model/note_response.dart';
import 'package:notes_buddy_api_client/src/model/sign_up_request.dart';
import 'package:notes_buddy_api_client/src/model/user_summary.dart';

part 'serializers.g.dart';

@SerializersFor([
  ApiError,
  LoginRequest,
  LoginResponse,
  NoteRequest,
  NoteResponse,
  SignUpRequest,
  UserSummary,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(NoteResponse)]),
        () => ListBuilder<NoteResponse>(),
      )
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
