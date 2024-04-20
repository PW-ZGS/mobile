//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/location.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'route_input.g.dart';

/// RouteInput
///
/// Properties:
/// * [officeId] 
/// * [startPoint] 
/// * [fromTime] 
/// * [availableSeats] 
/// * [userId] 
@BuiltValue()
abstract class RouteInput implements Built<RouteInput, RouteInputBuilder> {
  @BuiltValueField(wireName: r'officeId')
  String? get officeId;

  @BuiltValueField(wireName: r'startPoint')
  Location? get startPoint;

  @BuiltValueField(wireName: r'fromTime')
  DateTime? get fromTime;

  @BuiltValueField(wireName: r'availableSeats')
  int? get availableSeats;

  @BuiltValueField(wireName: r'userId')
  String? get userId;

  RouteInput._();

  factory RouteInput([void updates(RouteInputBuilder b)]) = _$RouteInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RouteInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RouteInput> get serializer => _$RouteInputSerializer();
}

class _$RouteInputSerializer implements PrimitiveSerializer<RouteInput> {
  @override
  final Iterable<Type> types = const [RouteInput, _$RouteInput];

  @override
  final String wireName = r'RouteInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RouteInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.officeId != null) {
      yield r'officeId';
      yield serializers.serialize(
        object.officeId,
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
    if (object.fromTime != null) {
      yield r'fromTime';
      yield serializers.serialize(
        object.fromTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.availableSeats != null) {
      yield r'availableSeats';
      yield serializers.serialize(
        object.availableSeats,
        specifiedType: const FullType(int),
      );
    }
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RouteInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RouteInputBuilder result,
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
        case r'startPoint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Location),
          ) as Location;
          result.startPoint.replace(valueDes);
          break;
        case r'fromTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.fromTime = valueDes;
          break;
        case r'availableSeats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.availableSeats = valueDes;
          break;
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RouteInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RouteInputBuilder();
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

