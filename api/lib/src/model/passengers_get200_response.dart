//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/location.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'passengers_get200_response.g.dart';

/// PassengersGet200Response
///
/// Properties:
/// * [location] 
@BuiltValue()
abstract class PassengersGet200Response implements Built<PassengersGet200Response, PassengersGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'location')
  Location? get location;

  PassengersGet200Response._();

  factory PassengersGet200Response([void updates(PassengersGet200ResponseBuilder b)]) = _$PassengersGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PassengersGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PassengersGet200Response> get serializer => _$PassengersGet200ResponseSerializer();
}

class _$PassengersGet200ResponseSerializer implements PrimitiveSerializer<PassengersGet200Response> {
  @override
  final Iterable<Type> types = const [PassengersGet200Response, _$PassengersGet200Response];

  @override
  final String wireName = r'PassengersGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PassengersGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.location != null) {
      yield r'location';
      yield serializers.serialize(
        object.location,
        specifiedType: const FullType(Location),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PassengersGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PassengersGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'location':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Location),
          ) as Location;
          result.location.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PassengersGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PassengersGet200ResponseBuilder();
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

