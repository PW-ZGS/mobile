//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'date_range.g.dart';

/// DateRange
///
/// Properties:
/// * [startDate] 
/// * [endDate] 
@BuiltValue()
abstract class DateRange implements Built<DateRange, DateRangeBuilder> {
  @BuiltValueField(wireName: r'startDate')
  int? get startDate;

  @BuiltValueField(wireName: r'endDate')
  int? get endDate;

  DateRange._();

  factory DateRange([void updates(DateRangeBuilder b)]) = _$DateRange;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DateRangeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DateRange> get serializer => _$DateRangeSerializer();
}

class _$DateRangeSerializer implements PrimitiveSerializer<DateRange> {
  @override
  final Iterable<Type> types = const [DateRange, _$DateRange];

  @override
  final String wireName = r'DateRange';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DateRange object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.startDate != null) {
      yield r'startDate';
      yield serializers.serialize(
        object.startDate,
        specifiedType: const FullType(int),
      );
    }
    if (object.endDate != null) {
      yield r'endDate';
      yield serializers.serialize(
        object.endDate,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DateRange object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DateRangeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'startDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.startDate = valueDes;
          break;
        case r'endDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.endDate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DateRange deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DateRangeBuilder();
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

