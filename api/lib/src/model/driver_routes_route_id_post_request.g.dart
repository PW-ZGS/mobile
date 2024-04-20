// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_routes_route_id_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DriverRoutesRouteIdPostRequestOperationEnum
    _$driverRoutesRouteIdPostRequestOperationEnum_inc =
    const DriverRoutesRouteIdPostRequestOperationEnum._('inc');
const DriverRoutesRouteIdPostRequestOperationEnum
    _$driverRoutesRouteIdPostRequestOperationEnum_dec =
    const DriverRoutesRouteIdPostRequestOperationEnum._('dec');

DriverRoutesRouteIdPostRequestOperationEnum
    _$driverRoutesRouteIdPostRequestOperationEnumValueOf(String name) {
  switch (name) {
    case 'inc':
      return _$driverRoutesRouteIdPostRequestOperationEnum_inc;
    case 'dec':
      return _$driverRoutesRouteIdPostRequestOperationEnum_dec;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<DriverRoutesRouteIdPostRequestOperationEnum>
    _$driverRoutesRouteIdPostRequestOperationEnumValues = new BuiltSet<
        DriverRoutesRouteIdPostRequestOperationEnum>(const <DriverRoutesRouteIdPostRequestOperationEnum>[
  _$driverRoutesRouteIdPostRequestOperationEnum_inc,
  _$driverRoutesRouteIdPostRequestOperationEnum_dec,
]);

Serializer<DriverRoutesRouteIdPostRequestOperationEnum>
    _$driverRoutesRouteIdPostRequestOperationEnumSerializer =
    new _$DriverRoutesRouteIdPostRequestOperationEnumSerializer();

class _$DriverRoutesRouteIdPostRequestOperationEnumSerializer
    implements
        PrimitiveSerializer<DriverRoutesRouteIdPostRequestOperationEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'inc': 'inc',
    'dec': 'dec',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'inc': 'inc',
    'dec': 'dec',
  };

  @override
  final Iterable<Type> types = const <Type>[
    DriverRoutesRouteIdPostRequestOperationEnum
  ];
  @override
  final String wireName = 'DriverRoutesRouteIdPostRequestOperationEnum';

  @override
  Object serialize(Serializers serializers,
          DriverRoutesRouteIdPostRequestOperationEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DriverRoutesRouteIdPostRequestOperationEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DriverRoutesRouteIdPostRequestOperationEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$DriverRoutesRouteIdPostRequest extends DriverRoutesRouteIdPostRequest {
  @override
  final DriverRoutesRouteIdPostRequestOperationEnum? operation;

  factory _$DriverRoutesRouteIdPostRequest(
          [void Function(DriverRoutesRouteIdPostRequestBuilder)? updates]) =>
      (new DriverRoutesRouteIdPostRequestBuilder()..update(updates))._build();

  _$DriverRoutesRouteIdPostRequest._({this.operation}) : super._();

  @override
  DriverRoutesRouteIdPostRequest rebuild(
          void Function(DriverRoutesRouteIdPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DriverRoutesRouteIdPostRequestBuilder toBuilder() =>
      new DriverRoutesRouteIdPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DriverRoutesRouteIdPostRequest &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DriverRoutesRouteIdPostRequest')
          ..add('operation', operation))
        .toString();
  }
}

class DriverRoutesRouteIdPostRequestBuilder
    implements
        Builder<DriverRoutesRouteIdPostRequest,
            DriverRoutesRouteIdPostRequestBuilder> {
  _$DriverRoutesRouteIdPostRequest? _$v;

  DriverRoutesRouteIdPostRequestOperationEnum? _operation;
  DriverRoutesRouteIdPostRequestOperationEnum? get operation =>
      _$this._operation;
  set operation(DriverRoutesRouteIdPostRequestOperationEnum? operation) =>
      _$this._operation = operation;

  DriverRoutesRouteIdPostRequestBuilder() {
    DriverRoutesRouteIdPostRequest._defaults(this);
  }

  DriverRoutesRouteIdPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _operation = $v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DriverRoutesRouteIdPostRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DriverRoutesRouteIdPostRequest;
  }

  @override
  void update(void Function(DriverRoutesRouteIdPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DriverRoutesRouteIdPostRequest build() => _build();

  _$DriverRoutesRouteIdPostRequest _build() {
    final _$result =
        _$v ?? new _$DriverRoutesRouteIdPostRequest._(operation: operation);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
