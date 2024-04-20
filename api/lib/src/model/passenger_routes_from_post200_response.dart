//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'passenger_routes_from_post200_response.g.dart';

/// PassengerRoutesFromPost200Response
///
/// Properties:
/// * [passengerRouteId] 
@BuiltValue()
abstract class PassengerRoutesFromPost200Response implements Built<PassengerRoutesFromPost200Response, PassengerRoutesFromPost200ResponseBuilder> {
  @BuiltValueField(wireName: r'passengerRouteId')
  String? get passengerRouteId;

  PassengerRoutesFromPost200Response._();

  factory PassengerRoutesFromPost200Response([void updates(PassengerRoutesFromPost200ResponseBuilder b)]) = _$PassengerRoutesFromPost200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PassengerRoutesFromPost200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PassengerRoutesFromPost200Response> get serializer => _$PassengerRoutesFromPost200ResponseSerializer();
}

class _$PassengerRoutesFromPost200ResponseSerializer implements PrimitiveSerializer<PassengerRoutesFromPost200Response> {
  @override
  final Iterable<Type> types = const [PassengerRoutesFromPost200Response, _$PassengerRoutesFromPost200Response];

  @override
  final String wireName = r'PassengerRoutesFromPost200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PassengerRoutesFromPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.passengerRouteId != null) {
      yield r'passengerRouteId';
      yield serializers.serialize(
        object.passengerRouteId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PassengerRoutesFromPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PassengerRoutesFromPost200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'passengerRouteId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.passengerRouteId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PassengerRoutesFromPost200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PassengerRoutesFromPost200ResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

