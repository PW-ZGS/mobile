//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'driver_routes_route_id_post_request.g.dart';

/// DriverRoutesRouteIdPostRequest
///
/// Properties:
/// * [operation] 
@BuiltValue()
abstract class DriverRoutesRouteIdPostRequest implements Built<DriverRoutesRouteIdPostRequest, DriverRoutesRouteIdPostRequestBuilder> {
  @BuiltValueField(wireName: r'operation')
  DriverRoutesRouteIdPostRequestOperationEnum? get operation;
  // enum operationEnum {  inc,  dec,  };

  DriverRoutesRouteIdPostRequest._();

  factory DriverRoutesRouteIdPostRequest([void updates(DriverRoutesRouteIdPostRequestBuilder b)]) = _$DriverRoutesRouteIdPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DriverRoutesRouteIdPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DriverRoutesRouteIdPostRequest> get serializer => _$DriverRoutesRouteIdPostRequestSerializer();
}

class _$DriverRoutesRouteIdPostRequestSerializer implements PrimitiveSerializer<DriverRoutesRouteIdPostRequest> {
  @override
  final Iterable<Type> types = const [DriverRoutesRouteIdPostRequest, _$DriverRoutesRouteIdPostRequest];

  @override
  final String wireName = r'DriverRoutesRouteIdPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DriverRoutesRouteIdPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.operation != null) {
      yield r'operation';
      yield serializers.serialize(
        object.operation,
        specifiedType: const FullType(DriverRoutesRouteIdPostRequestOperationEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DriverRoutesRouteIdPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DriverRoutesRouteIdPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'operation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DriverRoutesRouteIdPostRequestOperationEnum),
          ) as DriverRoutesRouteIdPostRequestOperationEnum;
          result.operation = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DriverRoutesRouteIdPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DriverRoutesRouteIdPostRequestBuilder();
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

class DriverRoutesRouteIdPostRequestOperationEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'inc')
  static const DriverRoutesRouteIdPostRequestOperationEnum inc = _$driverRoutesRouteIdPostRequestOperationEnum_inc;
  @BuiltValueEnumConst(wireName: r'dec')
  static const DriverRoutesRouteIdPostRequestOperationEnum dec = _$driverRoutesRouteIdPostRequestOperationEnum_dec;

  static Serializer<DriverRoutesRouteIdPostRequestOperationEnum> get serializer => _$driverRoutesRouteIdPostRequestOperationEnumSerializer;

  const DriverRoutesRouteIdPostRequestOperationEnum._(String name): super(name);

  static BuiltSet<DriverRoutesRouteIdPostRequestOperationEnum> get values => _$driverRoutesRouteIdPostRequestOperationEnumValues;
  static DriverRoutesRouteIdPostRequestOperationEnum valueOf(String name) => _$driverRoutesRouteIdPostRequestOperationEnumValueOf(name);
}

