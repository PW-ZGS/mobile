//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'driver_routes_route_id_post200_response.g.dart';

/// DriverRoutesRouteIdPost200Response
///
/// Properties:
/// * [updatedPassengerCount] 
@BuiltValue()
abstract class DriverRoutesRouteIdPost200Response implements Built<DriverRoutesRouteIdPost200Response, DriverRoutesRouteIdPost200ResponseBuilder> {
  @BuiltValueField(wireName: r'updatedPassengerCount')
  int? get updatedPassengerCount;

  DriverRoutesRouteIdPost200Response._();

  factory DriverRoutesRouteIdPost200Response([void updates(DriverRoutesRouteIdPost200ResponseBuilder b)]) = _$DriverRoutesRouteIdPost200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DriverRoutesRouteIdPost200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DriverRoutesRouteIdPost200Response> get serializer => _$DriverRoutesRouteIdPost200ResponseSerializer();
}

class _$DriverRoutesRouteIdPost200ResponseSerializer implements PrimitiveSerializer<DriverRoutesRouteIdPost200Response> {
  @override
  final Iterable<Type> types = const [DriverRoutesRouteIdPost200Response, _$DriverRoutesRouteIdPost200Response];

  @override
  final String wireName = r'DriverRoutesRouteIdPost200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DriverRoutesRouteIdPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.updatedPassengerCount != null) {
      yield r'updatedPassengerCount';
      yield serializers.serialize(
        object.updatedPassengerCount,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DriverRoutesRouteIdPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DriverRoutesRouteIdPost200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'updatedPassengerCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.updatedPassengerCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DriverRoutesRouteIdPost200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DriverRoutesRouteIdPost200ResponseBuilder();
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

