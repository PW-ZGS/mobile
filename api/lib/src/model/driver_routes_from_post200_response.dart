//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'driver_routes_from_post200_response.g.dart';

/// DriverRoutesFromPost200Response
///
/// Properties:
/// * [routeId] 
@BuiltValue()
abstract class DriverRoutesFromPost200Response implements Built<DriverRoutesFromPost200Response, DriverRoutesFromPost200ResponseBuilder> {
  @BuiltValueField(wireName: r'routeId')
  String? get routeId;

  DriverRoutesFromPost200Response._();

  factory DriverRoutesFromPost200Response([void updates(DriverRoutesFromPost200ResponseBuilder b)]) = _$DriverRoutesFromPost200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DriverRoutesFromPost200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DriverRoutesFromPost200Response> get serializer => _$DriverRoutesFromPost200ResponseSerializer();
}

class _$DriverRoutesFromPost200ResponseSerializer implements PrimitiveSerializer<DriverRoutesFromPost200Response> {
  @override
  final Iterable<Type> types = const [DriverRoutesFromPost200Response, _$DriverRoutesFromPost200Response];

  @override
  final String wireName = r'DriverRoutesFromPost200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DriverRoutesFromPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.routeId != null) {
      yield r'routeId';
      yield serializers.serialize(
        object.routeId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DriverRoutesFromPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DriverRoutesFromPost200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'routeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.routeId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DriverRoutesFromPost200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DriverRoutesFromPost200ResponseBuilder();
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

