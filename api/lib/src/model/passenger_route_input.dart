//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/location.dart';
import 'package:openapi/src/model/date_range.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'passenger_route_input.g.dart';

/// PassengerRouteInput
///
/// Properties:
/// * [officeId] 
/// * [startPoint] 
/// * [timeRange] 
/// * [maxDist] 
@BuiltValue()
abstract class PassengerRouteInput implements Built<PassengerRouteInput, PassengerRouteInputBuilder> {
  @BuiltValueField(wireName: r'officeId')
  String? get officeId;

  @BuiltValueField(wireName: r'startPoint')
  Location? get startPoint;

  @BuiltValueField(wireName: r'timeRange')
  DateRange? get timeRange;

  @BuiltValueField(wireName: r'maxDist')
  int? get maxDist;

  PassengerRouteInput._();

  factory PassengerRouteInput([void updates(PassengerRouteInputBuilder b)]) = _$PassengerRouteInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PassengerRouteInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PassengerRouteInput> get serializer => _$PassengerRouteInputSerializer();
}

class _$PassengerRouteInputSerializer implements PrimitiveSerializer<PassengerRouteInput> {
  @override
  final Iterable<Type> types = const [PassengerRouteInput, _$PassengerRouteInput];

  @override
  final String wireName = r'PassengerRouteInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PassengerRouteInput object, {
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
    if (object.timeRange != null) {
      yield r'timeRange';
      yield serializers.serialize(
        object.timeRange,
        specifiedType: const FullType(DateRange),
      );
    }
    if (object.maxDist != null) {
      yield r'maxDist';
      yield serializers.serialize(
        object.maxDist,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PassengerRouteInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PassengerRouteInputBuilder result,
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
        case r'timeRange':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateRange),
          ) as DateRange;
          result.timeRange.replace(valueDes);
          break;
        case r'maxDist':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxDist = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PassengerRouteInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PassengerRouteInputBuilder();
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

