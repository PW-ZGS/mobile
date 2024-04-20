//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/location.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'offices_get200_response_inner.g.dart';

/// OfficesGet200ResponseInner
///
/// Properties:
/// * [officeId] - Unique identifier of the office
/// * [name] - Name of the office
/// * [location] 
@BuiltValue()
abstract class OfficesGet200ResponseInner implements Built<OfficesGet200ResponseInner, OfficesGet200ResponseInnerBuilder> {
  /// Unique identifier of the office
  @BuiltValueField(wireName: r'officeId')
  String? get officeId;

  /// Name of the office
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'location')
  Location? get location;

  OfficesGet200ResponseInner._();

  factory OfficesGet200ResponseInner([void updates(OfficesGet200ResponseInnerBuilder b)]) = _$OfficesGet200ResponseInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OfficesGet200ResponseInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OfficesGet200ResponseInner> get serializer => _$OfficesGet200ResponseInnerSerializer();
}

class _$OfficesGet200ResponseInnerSerializer implements PrimitiveSerializer<OfficesGet200ResponseInner> {
  @override
  final Iterable<Type> types = const [OfficesGet200ResponseInner, _$OfficesGet200ResponseInner];

  @override
  final String wireName = r'OfficesGet200ResponseInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OfficesGet200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.officeId != null) {
      yield r'officeId';
      yield serializers.serialize(
        object.officeId,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
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
    OfficesGet200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OfficesGet200ResponseInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'officeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.officeId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
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
  OfficesGet200ResponseInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OfficesGet200ResponseInnerBuilder();
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

