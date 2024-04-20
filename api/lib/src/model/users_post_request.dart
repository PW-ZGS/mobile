//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'users_post_request.g.dart';

/// UsersPostRequest
///
/// Properties:
/// * [name] 
/// * [contact] 
@BuiltValue()
abstract class UsersPostRequest implements Built<UsersPostRequest, UsersPostRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'contact')
  String? get contact;

  UsersPostRequest._();

  factory UsersPostRequest([void updates(UsersPostRequestBuilder b)]) = _$UsersPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UsersPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UsersPostRequest> get serializer => _$UsersPostRequestSerializer();
}

class _$UsersPostRequestSerializer implements PrimitiveSerializer<UsersPostRequest> {
  @override
  final Iterable<Type> types = const [UsersPostRequest, _$UsersPostRequest];

  @override
  final String wireName = r'UsersPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UsersPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    UsersPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UsersPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'contact':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contact = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UsersPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsersPostRequestBuilder();
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

