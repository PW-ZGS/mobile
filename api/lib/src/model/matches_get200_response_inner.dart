//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'matches_get200_response_inner.g.dart';

/// MatchesGet200ResponseInner
///
/// Properties:
/// * [passengerRouteId] 
/// * [contact] 
/// * [name] 
/// * [link] 
@BuiltValue()
abstract class MatchesGet200ResponseInner implements Built<MatchesGet200ResponseInner, MatchesGet200ResponseInnerBuilder> {
  @BuiltValueField(wireName: r'passengerRouteId')
  String? get passengerRouteId;

  @BuiltValueField(wireName: r'contact')
  String? get contact;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'link')
  String? get link;

  MatchesGet200ResponseInner._();

  factory MatchesGet200ResponseInner([void updates(MatchesGet200ResponseInnerBuilder b)]) = _$MatchesGet200ResponseInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MatchesGet200ResponseInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MatchesGet200ResponseInner> get serializer => _$MatchesGet200ResponseInnerSerializer();
}

class _$MatchesGet200ResponseInnerSerializer implements PrimitiveSerializer<MatchesGet200ResponseInner> {
  @override
  final Iterable<Type> types = const [MatchesGet200ResponseInner, _$MatchesGet200ResponseInner];

  @override
  final String wireName = r'MatchesGet200ResponseInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MatchesGet200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.passengerRouteId != null) {
      yield r'passengerRouteId';
      yield serializers.serialize(
        object.passengerRouteId,
        specifiedType: const FullType(String),
      );
    }
    if (object.contact != null) {
      yield r'contact';
      yield serializers.serialize(
        object.contact,
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
    if (object.link != null) {
      yield r'link';
      yield serializers.serialize(
        object.link,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MatchesGet200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MatchesGet200ResponseInnerBuilder result,
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
        case r'contact':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contact = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'link':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.link = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MatchesGet200ResponseInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MatchesGet200ResponseInnerBuilder();
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

