//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'users_post200_response.g.dart';

/// UsersPost200Response
///
/// Properties:
/// * [userId] 
@BuiltValue()
abstract class UsersPost200Response implements Built<UsersPost200Response, UsersPost200ResponseBuilder> {
  @BuiltValueField(wireName: r'userId')
  String? get userId;

  UsersPost200Response._();

  factory UsersPost200Response([void updates(UsersPost200ResponseBuilder b)]) = _$UsersPost200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UsersPost200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UsersPost200Response> get serializer => _$UsersPost200ResponseSerializer();
}

class _$UsersPost200ResponseSerializer implements PrimitiveSerializer<UsersPost200Response> {
  @override
  final Iterable<Type> types = const [UsersPost200Response, _$UsersPost200Response];

  @override
  final String wireName = r'UsersPost200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UsersPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    UsersPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UsersPost200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  UsersPost200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsersPost200ResponseBuilder();
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

