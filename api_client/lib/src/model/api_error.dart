//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_error.g.dart';



abstract class ApiError implements Built<ApiError, ApiErrorBuilder> {
    @BuiltValueField(wireName: r'object')
    String? get object;

    @BuiltValueField(wireName: r'field')
    String? get field;

    @BuiltValueField(wireName: r'message')
    String? get message;

    @BuiltValueField(wireName: r'http_status')
    ApiErrorHttpStatusEnum? get httpStatus;
    // enum httpStatusEnum {  100 CONTINUE,  101 SWITCHING_PROTOCOLS,  102 PROCESSING,  103 CHECKPOINT,  200 OK,  201 CREATED,  202 ACCEPTED,  203 NON_AUTHORITATIVE_INFORMATION,  204 NO_CONTENT,  205 RESET_CONTENT,  206 PARTIAL_CONTENT,  207 MULTI_STATUS,  208 ALREADY_REPORTED,  226 IM_USED,  300 MULTIPLE_CHOICES,  301 MOVED_PERMANENTLY,  302 FOUND,  302 MOVED_TEMPORARILY,  303 SEE_OTHER,  304 NOT_MODIFIED,  305 USE_PROXY,  307 TEMPORARY_REDIRECT,  308 PERMANENT_REDIRECT,  400 BAD_REQUEST,  401 UNAUTHORIZED,  402 PAYMENT_REQUIRED,  403 FORBIDDEN,  404 NOT_FOUND,  405 METHOD_NOT_ALLOWED,  406 NOT_ACCEPTABLE,  407 PROXY_AUTHENTICATION_REQUIRED,  408 REQUEST_TIMEOUT,  409 CONFLICT,  410 GONE,  411 LENGTH_REQUIRED,  412 PRECONDITION_FAILED,  413 PAYLOAD_TOO_LARGE,  413 REQUEST_ENTITY_TOO_LARGE,  414 URI_TOO_LONG,  414 REQUEST_URI_TOO_LONG,  415 UNSUPPORTED_MEDIA_TYPE,  416 REQUESTED_RANGE_NOT_SATISFIABLE,  417 EXPECTATION_FAILED,  418 I_AM_A_TEAPOT,  419 INSUFFICIENT_SPACE_ON_RESOURCE,  420 METHOD_FAILURE,  421 DESTINATION_LOCKED,  422 UNPROCESSABLE_ENTITY,  423 LOCKED,  424 FAILED_DEPENDENCY,  425 TOO_EARLY,  426 UPGRADE_REQUIRED,  428 PRECONDITION_REQUIRED,  429 TOO_MANY_REQUESTS,  431 REQUEST_HEADER_FIELDS_TOO_LARGE,  451 UNAVAILABLE_FOR_LEGAL_REASONS,  500 INTERNAL_SERVER_ERROR,  501 NOT_IMPLEMENTED,  502 BAD_GATEWAY,  503 SERVICE_UNAVAILABLE,  504 GATEWAY_TIMEOUT,  505 HTTP_VERSION_NOT_SUPPORTED,  506 VARIANT_ALSO_NEGOTIATES,  507 INSUFFICIENT_STORAGE,  508 LOOP_DETECTED,  509 BANDWIDTH_LIMIT_EXCEEDED,  510 NOT_EXTENDED,  511 NETWORK_AUTHENTICATION_REQUIRED,  };

    @BuiltValueField(wireName: r'rejected_value')
    JsonObject? get rejectedValue;

    ApiError._();

    static void _initializeBuilder(ApiErrorBuilder b) => b;

    factory ApiError([void updates(ApiErrorBuilder b)]) = _$ApiError;

    @BuiltValueSerializer(custom: true)
    static Serializer<ApiError> get serializer => _$ApiErrorSerializer();
}

class _$ApiErrorSerializer implements StructuredSerializer<ApiError> {
    @override
    final Iterable<Type> types = const [ApiError, _$ApiError];

    @override
    final String wireName = r'ApiError';

    @override
    Iterable<Object?> serialize(Serializers serializers, ApiError object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.object != null) {
            result
                ..add(r'object')
                ..add(serializers.serialize(object.object,
                    specifiedType: const FullType(String)));
        }
        if (object.field != null) {
            result
                ..add(r'field')
                ..add(serializers.serialize(object.field,
                    specifiedType: const FullType(String)));
        }
        if (object.message != null) {
            result
                ..add(r'message')
                ..add(serializers.serialize(object.message,
                    specifiedType: const FullType(String)));
        }
        if (object.httpStatus != null) {
            result
                ..add(r'http_status')
                ..add(serializers.serialize(object.httpStatus,
                    specifiedType: const FullType(ApiErrorHttpStatusEnum)));
        }
        if (object.rejectedValue != null) {
            result
                ..add(r'rejected_value')
                ..add(serializers.serialize(object.rejectedValue,
                    specifiedType: const FullType(JsonObject)));
        }
        return result;
    }

    @override
    ApiError deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ApiErrorBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'object':
                    result.object = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'field':
                    result.field = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'message':
                    result.message = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'http_status':
                    result.httpStatus = serializers.deserialize(value,
                        specifiedType: const FullType(ApiErrorHttpStatusEnum)) as ApiErrorHttpStatusEnum;
                    break;
                case r'rejected_value':
                    result.rejectedValue = serializers.deserialize(value,
                        specifiedType: const FullType(JsonObject)) as JsonObject;
                    break;
            }
        }
        return result.build();
    }
}

class ApiErrorHttpStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'100 CONTINUE')
  static const ApiErrorHttpStatusEnum n100cONTINUE = _$apiErrorHttpStatusEnum_n100cONTINUE;
  @BuiltValueEnumConst(wireName: r'101 SWITCHING_PROTOCOLS')
  static const ApiErrorHttpStatusEnum n101sWITCHINGPROTOCOLS = _$apiErrorHttpStatusEnum_n101sWITCHINGPROTOCOLS;
  @BuiltValueEnumConst(wireName: r'102 PROCESSING')
  static const ApiErrorHttpStatusEnum n102pROCESSING = _$apiErrorHttpStatusEnum_n102pROCESSING;
  @BuiltValueEnumConst(wireName: r'103 CHECKPOINT')
  static const ApiErrorHttpStatusEnum n103cHECKPOINT = _$apiErrorHttpStatusEnum_n103cHECKPOINT;
  @BuiltValueEnumConst(wireName: r'200 OK')
  static const ApiErrorHttpStatusEnum n200oK = _$apiErrorHttpStatusEnum_n200oK;
  @BuiltValueEnumConst(wireName: r'201 CREATED')
  static const ApiErrorHttpStatusEnum n201cREATED = _$apiErrorHttpStatusEnum_n201cREATED;
  @BuiltValueEnumConst(wireName: r'202 ACCEPTED')
  static const ApiErrorHttpStatusEnum n202aCCEPTED = _$apiErrorHttpStatusEnum_n202aCCEPTED;
  @BuiltValueEnumConst(wireName: r'203 NON_AUTHORITATIVE_INFORMATION')
  static const ApiErrorHttpStatusEnum n203nONAUTHORITATIVEINFORMATION = _$apiErrorHttpStatusEnum_n203nONAUTHORITATIVEINFORMATION;
  @BuiltValueEnumConst(wireName: r'204 NO_CONTENT')
  static const ApiErrorHttpStatusEnum n204nOCONTENT = _$apiErrorHttpStatusEnum_n204nOCONTENT;
  @BuiltValueEnumConst(wireName: r'205 RESET_CONTENT')
  static const ApiErrorHttpStatusEnum n205rESETCONTENT = _$apiErrorHttpStatusEnum_n205rESETCONTENT;
  @BuiltValueEnumConst(wireName: r'206 PARTIAL_CONTENT')
  static const ApiErrorHttpStatusEnum n206pARTIALCONTENT = _$apiErrorHttpStatusEnum_n206pARTIALCONTENT;
  @BuiltValueEnumConst(wireName: r'207 MULTI_STATUS')
  static const ApiErrorHttpStatusEnum n207mULTISTATUS = _$apiErrorHttpStatusEnum_n207mULTISTATUS;
  @BuiltValueEnumConst(wireName: r'208 ALREADY_REPORTED')
  static const ApiErrorHttpStatusEnum n208aLREADYREPORTED = _$apiErrorHttpStatusEnum_n208aLREADYREPORTED;
  @BuiltValueEnumConst(wireName: r'226 IM_USED')
  static const ApiErrorHttpStatusEnum n226iMUSED = _$apiErrorHttpStatusEnum_n226iMUSED;
  @BuiltValueEnumConst(wireName: r'300 MULTIPLE_CHOICES')
  static const ApiErrorHttpStatusEnum n300mULTIPLECHOICES = _$apiErrorHttpStatusEnum_n300mULTIPLECHOICES;
  @BuiltValueEnumConst(wireName: r'301 MOVED_PERMANENTLY')
  static const ApiErrorHttpStatusEnum n301mOVEDPERMANENTLY = _$apiErrorHttpStatusEnum_n301mOVEDPERMANENTLY;
  @BuiltValueEnumConst(wireName: r'302 FOUND')
  static const ApiErrorHttpStatusEnum n302fOUND = _$apiErrorHttpStatusEnum_n302fOUND;
  @BuiltValueEnumConst(wireName: r'302 MOVED_TEMPORARILY')
  static const ApiErrorHttpStatusEnum n302mOVEDTEMPORARILY = _$apiErrorHttpStatusEnum_n302mOVEDTEMPORARILY;
  @BuiltValueEnumConst(wireName: r'303 SEE_OTHER')
  static const ApiErrorHttpStatusEnum n303sEEOTHER = _$apiErrorHttpStatusEnum_n303sEEOTHER;
  @BuiltValueEnumConst(wireName: r'304 NOT_MODIFIED')
  static const ApiErrorHttpStatusEnum n304nOTMODIFIED = _$apiErrorHttpStatusEnum_n304nOTMODIFIED;
  @BuiltValueEnumConst(wireName: r'305 USE_PROXY')
  static const ApiErrorHttpStatusEnum n305uSEPROXY = _$apiErrorHttpStatusEnum_n305uSEPROXY;
  @BuiltValueEnumConst(wireName: r'307 TEMPORARY_REDIRECT')
  static const ApiErrorHttpStatusEnum n307tEMPORARYREDIRECT = _$apiErrorHttpStatusEnum_n307tEMPORARYREDIRECT;
  @BuiltValueEnumConst(wireName: r'308 PERMANENT_REDIRECT')
  static const ApiErrorHttpStatusEnum n308pERMANENTREDIRECT = _$apiErrorHttpStatusEnum_n308pERMANENTREDIRECT;
  @BuiltValueEnumConst(wireName: r'400 BAD_REQUEST')
  static const ApiErrorHttpStatusEnum n400bADREQUEST = _$apiErrorHttpStatusEnum_n400bADREQUEST;
  @BuiltValueEnumConst(wireName: r'401 UNAUTHORIZED')
  static const ApiErrorHttpStatusEnum n401uNAUTHORIZED = _$apiErrorHttpStatusEnum_n401uNAUTHORIZED;
  @BuiltValueEnumConst(wireName: r'402 PAYMENT_REQUIRED')
  static const ApiErrorHttpStatusEnum n402pAYMENTREQUIRED = _$apiErrorHttpStatusEnum_n402pAYMENTREQUIRED;
  @BuiltValueEnumConst(wireName: r'403 FORBIDDEN')
  static const ApiErrorHttpStatusEnum n403fORBIDDEN = _$apiErrorHttpStatusEnum_n403fORBIDDEN;
  @BuiltValueEnumConst(wireName: r'404 NOT_FOUND')
  static const ApiErrorHttpStatusEnum n404nOTFOUND = _$apiErrorHttpStatusEnum_n404nOTFOUND;
  @BuiltValueEnumConst(wireName: r'405 METHOD_NOT_ALLOWED')
  static const ApiErrorHttpStatusEnum n405mETHODNOTALLOWED = _$apiErrorHttpStatusEnum_n405mETHODNOTALLOWED;
  @BuiltValueEnumConst(wireName: r'406 NOT_ACCEPTABLE')
  static const ApiErrorHttpStatusEnum n406nOTACCEPTABLE = _$apiErrorHttpStatusEnum_n406nOTACCEPTABLE;
  @BuiltValueEnumConst(wireName: r'407 PROXY_AUTHENTICATION_REQUIRED')
  static const ApiErrorHttpStatusEnum n407pROXYAUTHENTICATIONREQUIRED = _$apiErrorHttpStatusEnum_n407pROXYAUTHENTICATIONREQUIRED;
  @BuiltValueEnumConst(wireName: r'408 REQUEST_TIMEOUT')
  static const ApiErrorHttpStatusEnum n408rEQUESTTIMEOUT = _$apiErrorHttpStatusEnum_n408rEQUESTTIMEOUT;
  @BuiltValueEnumConst(wireName: r'409 CONFLICT')
  static const ApiErrorHttpStatusEnum n409cONFLICT = _$apiErrorHttpStatusEnum_n409cONFLICT;
  @BuiltValueEnumConst(wireName: r'410 GONE')
  static const ApiErrorHttpStatusEnum n410gONE = _$apiErrorHttpStatusEnum_n410gONE;
  @BuiltValueEnumConst(wireName: r'411 LENGTH_REQUIRED')
  static const ApiErrorHttpStatusEnum n411lENGTHREQUIRED = _$apiErrorHttpStatusEnum_n411lENGTHREQUIRED;
  @BuiltValueEnumConst(wireName: r'412 PRECONDITION_FAILED')
  static const ApiErrorHttpStatusEnum n412pRECONDITIONFAILED = _$apiErrorHttpStatusEnum_n412pRECONDITIONFAILED;
  @BuiltValueEnumConst(wireName: r'413 PAYLOAD_TOO_LARGE')
  static const ApiErrorHttpStatusEnum n413pAYLOADTOOLARGE = _$apiErrorHttpStatusEnum_n413pAYLOADTOOLARGE;
  @BuiltValueEnumConst(wireName: r'413 REQUEST_ENTITY_TOO_LARGE')
  static const ApiErrorHttpStatusEnum n413rEQUESTENTITYTOOLARGE = _$apiErrorHttpStatusEnum_n413rEQUESTENTITYTOOLARGE;
  @BuiltValueEnumConst(wireName: r'414 URI_TOO_LONG')
  static const ApiErrorHttpStatusEnum n414uRITOOLONG = _$apiErrorHttpStatusEnum_n414uRITOOLONG;
  @BuiltValueEnumConst(wireName: r'414 REQUEST_URI_TOO_LONG')
  static const ApiErrorHttpStatusEnum n414rEQUESTURITOOLONG = _$apiErrorHttpStatusEnum_n414rEQUESTURITOOLONG;
  @BuiltValueEnumConst(wireName: r'415 UNSUPPORTED_MEDIA_TYPE')
  static const ApiErrorHttpStatusEnum n415uNSUPPORTEDMEDIATYPE = _$apiErrorHttpStatusEnum_n415uNSUPPORTEDMEDIATYPE;
  @BuiltValueEnumConst(wireName: r'416 REQUESTED_RANGE_NOT_SATISFIABLE')
  static const ApiErrorHttpStatusEnum n416rEQUESTEDRANGENOTSATISFIABLE = _$apiErrorHttpStatusEnum_n416rEQUESTEDRANGENOTSATISFIABLE;
  @BuiltValueEnumConst(wireName: r'417 EXPECTATION_FAILED')
  static const ApiErrorHttpStatusEnum n417eXPECTATIONFAILED = _$apiErrorHttpStatusEnum_n417eXPECTATIONFAILED;
  @BuiltValueEnumConst(wireName: r'418 I_AM_A_TEAPOT')
  static const ApiErrorHttpStatusEnum n418iAMATEAPOT = _$apiErrorHttpStatusEnum_n418iAMATEAPOT;
  @BuiltValueEnumConst(wireName: r'419 INSUFFICIENT_SPACE_ON_RESOURCE')
  static const ApiErrorHttpStatusEnum n419iNSUFFICIENTSPACEONRESOURCE = _$apiErrorHttpStatusEnum_n419iNSUFFICIENTSPACEONRESOURCE;
  @BuiltValueEnumConst(wireName: r'420 METHOD_FAILURE')
  static const ApiErrorHttpStatusEnum n420mETHODFAILURE = _$apiErrorHttpStatusEnum_n420mETHODFAILURE;
  @BuiltValueEnumConst(wireName: r'421 DESTINATION_LOCKED')
  static const ApiErrorHttpStatusEnum n421dESTINATIONLOCKED = _$apiErrorHttpStatusEnum_n421dESTINATIONLOCKED;
  @BuiltValueEnumConst(wireName: r'422 UNPROCESSABLE_ENTITY')
  static const ApiErrorHttpStatusEnum n422uNPROCESSABLEENTITY = _$apiErrorHttpStatusEnum_n422uNPROCESSABLEENTITY;
  @BuiltValueEnumConst(wireName: r'423 LOCKED')
  static const ApiErrorHttpStatusEnum n423lOCKED = _$apiErrorHttpStatusEnum_n423lOCKED;
  @BuiltValueEnumConst(wireName: r'424 FAILED_DEPENDENCY')
  static const ApiErrorHttpStatusEnum n424fAILEDDEPENDENCY = _$apiErrorHttpStatusEnum_n424fAILEDDEPENDENCY;
  @BuiltValueEnumConst(wireName: r'425 TOO_EARLY')
  static const ApiErrorHttpStatusEnum n425tOOEARLY = _$apiErrorHttpStatusEnum_n425tOOEARLY;
  @BuiltValueEnumConst(wireName: r'426 UPGRADE_REQUIRED')
  static const ApiErrorHttpStatusEnum n426uPGRADEREQUIRED = _$apiErrorHttpStatusEnum_n426uPGRADEREQUIRED;
  @BuiltValueEnumConst(wireName: r'428 PRECONDITION_REQUIRED')
  static const ApiErrorHttpStatusEnum n428pRECONDITIONREQUIRED = _$apiErrorHttpStatusEnum_n428pRECONDITIONREQUIRED;
  @BuiltValueEnumConst(wireName: r'429 TOO_MANY_REQUESTS')
  static const ApiErrorHttpStatusEnum n429tOOMANYREQUESTS = _$apiErrorHttpStatusEnum_n429tOOMANYREQUESTS;
  @BuiltValueEnumConst(wireName: r'431 REQUEST_HEADER_FIELDS_TOO_LARGE')
  static const ApiErrorHttpStatusEnum n431rEQUESTHEADERFIELDSTOOLARGE = _$apiErrorHttpStatusEnum_n431rEQUESTHEADERFIELDSTOOLARGE;
  @BuiltValueEnumConst(wireName: r'451 UNAVAILABLE_FOR_LEGAL_REASONS')
  static const ApiErrorHttpStatusEnum n451uNAVAILABLEFORLEGALREASONS = _$apiErrorHttpStatusEnum_n451uNAVAILABLEFORLEGALREASONS;
  @BuiltValueEnumConst(wireName: r'500 INTERNAL_SERVER_ERROR')
  static const ApiErrorHttpStatusEnum n500iNTERNALSERVERERROR = _$apiErrorHttpStatusEnum_n500iNTERNALSERVERERROR;
  @BuiltValueEnumConst(wireName: r'501 NOT_IMPLEMENTED')
  static const ApiErrorHttpStatusEnum n501nOTIMPLEMENTED = _$apiErrorHttpStatusEnum_n501nOTIMPLEMENTED;
  @BuiltValueEnumConst(wireName: r'502 BAD_GATEWAY')
  static const ApiErrorHttpStatusEnum n502bADGATEWAY = _$apiErrorHttpStatusEnum_n502bADGATEWAY;
  @BuiltValueEnumConst(wireName: r'503 SERVICE_UNAVAILABLE')
  static const ApiErrorHttpStatusEnum n503sERVICEUNAVAILABLE = _$apiErrorHttpStatusEnum_n503sERVICEUNAVAILABLE;
  @BuiltValueEnumConst(wireName: r'504 GATEWAY_TIMEOUT')
  static const ApiErrorHttpStatusEnum n504gATEWAYTIMEOUT = _$apiErrorHttpStatusEnum_n504gATEWAYTIMEOUT;
  @BuiltValueEnumConst(wireName: r'505 HTTP_VERSION_NOT_SUPPORTED')
  static const ApiErrorHttpStatusEnum n505hTTPVERSIONNOTSUPPORTED = _$apiErrorHttpStatusEnum_n505hTTPVERSIONNOTSUPPORTED;
  @BuiltValueEnumConst(wireName: r'506 VARIANT_ALSO_NEGOTIATES')
  static const ApiErrorHttpStatusEnum n506vARIANTALSONEGOTIATES = _$apiErrorHttpStatusEnum_n506vARIANTALSONEGOTIATES;
  @BuiltValueEnumConst(wireName: r'507 INSUFFICIENT_STORAGE')
  static const ApiErrorHttpStatusEnum n507iNSUFFICIENTSTORAGE = _$apiErrorHttpStatusEnum_n507iNSUFFICIENTSTORAGE;
  @BuiltValueEnumConst(wireName: r'508 LOOP_DETECTED')
  static const ApiErrorHttpStatusEnum n508lOOPDETECTED = _$apiErrorHttpStatusEnum_n508lOOPDETECTED;
  @BuiltValueEnumConst(wireName: r'509 BANDWIDTH_LIMIT_EXCEEDED')
  static const ApiErrorHttpStatusEnum n509bANDWIDTHLIMITEXCEEDED = _$apiErrorHttpStatusEnum_n509bANDWIDTHLIMITEXCEEDED;
  @BuiltValueEnumConst(wireName: r'510 NOT_EXTENDED')
  static const ApiErrorHttpStatusEnum n510nOTEXTENDED = _$apiErrorHttpStatusEnum_n510nOTEXTENDED;
  @BuiltValueEnumConst(wireName: r'511 NETWORK_AUTHENTICATION_REQUIRED')
  static const ApiErrorHttpStatusEnum n511nETWORKAUTHENTICATIONREQUIRED = _$apiErrorHttpStatusEnum_n511nETWORKAUTHENTICATIONREQUIRED;

  static Serializer<ApiErrorHttpStatusEnum> get serializer => _$apiErrorHttpStatusEnumSerializer;

  const ApiErrorHttpStatusEnum._(String name): super(name);

  static BuiltSet<ApiErrorHttpStatusEnum> get values => _$apiErrorHttpStatusEnumValues;
  static ApiErrorHttpStatusEnum valueOf(String name) => _$apiErrorHttpStatusEnumValueOf(name);
}

