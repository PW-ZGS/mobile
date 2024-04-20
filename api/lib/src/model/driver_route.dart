//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/location.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'driver_route.g.dart';

/// DriverRoute
///
/// Properties:
/// * [routeId] 
/// * [startPoint] 
/// * [endPoint] 
@BuiltValue()
abstract class DriverRoute implements Built<DriverRoute, DriverRouteBuilder> {
  @BuiltValueField(wireName: r'routeId')
  String? get routeId;

  @BuiltValueField(wireName: r'startPoint')
  Location? get startPoint;

  @BuiltValueField(wireName: r'endPoint')
  Location? get endPoint;

  DriverRoute._();

  factory DriverRoute([void updates(DriverRouteBuilder b)]) = _$DriverRoute;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DriverRouteBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DriverRoute> get serializer => _$DriverRouteSerializer();
}

class _$DriverRouteSerializer implements PrimitiveSerializer<DriverRoute> {
  @override
  final Iterable<Type> types = const [DriverRoute, _$DriverRoute];

  @override
  final String wireName = r'DriverRoute';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DriverRoute object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.routeId != null) {
      yield r'routeId';
      yield serializers.serialize(
        object.routeId,
        specifiedType: const FullType(String),
      );
    }
    if (object.startPoint != null) {
      yield r'startPoint';
      yield serializers.serialize(
        object.startPoint,
        specifiedType: const FullType(Location),
      );
    }
    if (object.endPoint != null) {
      yield r'endPoint';
      yield serializers.serialize(
        object.endPoint,
        specifiedType: const FullType(Location),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DriverRoute object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DriverRouteBuilder result,
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
        case r'startPoint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Location),
          ) as Location;
          result.startPoint.replace(valueDes);
          break;
        case r'endPoint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Location),
          ) as Location;
          result.endPoint.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DriverRoute deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DriverRouteBuilder();
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

