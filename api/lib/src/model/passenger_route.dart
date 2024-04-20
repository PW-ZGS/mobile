//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/location.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'passenger_route.g.dart';

/// PassengerRoute
///
/// Properties:
/// * [passengerRouteId] 
/// * [startPoint] 
/// * [endPoint] 
@BuiltValue()
abstract class PassengerRoute implements Built<PassengerRoute, PassengerRouteBuilder> {
  @BuiltValueField(wireName: r'passengerRouteId')
  String? get passengerRouteId;

  @BuiltValueField(wireName: r'startPoint')
  Location? get startPoint;

  @BuiltValueField(wireName: r'endPoint')
  Location? get endPoint;

  PassengerRoute._();

  factory PassengerRoute([void updates(PassengerRouteBuilder b)]) = _$PassengerRoute;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PassengerRouteBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PassengerRoute> get serializer => _$PassengerRouteSerializer();
}

class _$PassengerRouteSerializer implements PrimitiveSerializer<PassengerRoute> {
  @override
  final Iterable<Type> types = const [PassengerRoute, _$PassengerRoute];

  @override
  final String wireName = r'PassengerRoute';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PassengerRoute object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.passengerRouteId != null) {
      yield r'passengerRouteId';
      yield serializers.serialize(
        object.passengerRouteId,
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
    PassengerRoute object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PassengerRouteBuilder result,
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
  PassengerRoute deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PassengerRouteBuilder();
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

