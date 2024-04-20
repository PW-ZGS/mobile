// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_routes_from_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DriverRoutesFromPost200Response
    extends DriverRoutesFromPost200Response {
  @override
  final String? routeId;

  factory _$DriverRoutesFromPost200Response(
          [void Function(DriverRoutesFromPost200ResponseBuilder)? updates]) =>
      (new DriverRoutesFromPost200ResponseBuilder()..update(updates))._build();

  _$DriverRoutesFromPost200Response._({this.routeId}) : super._();

  @override
  DriverRoutesFromPost200Response rebuild(
          void Function(DriverRoutesFromPost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DriverRoutesFromPost200ResponseBuilder toBuilder() =>
      new DriverRoutesFromPost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DriverRoutesFromPost200Response && routeId == other.routeId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, routeId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DriverRoutesFromPost200Response')
          ..add('routeId', routeId))
        .toString();
  }
}

class DriverRoutesFromPost200ResponseBuilder
    implements
        Builder<DriverRoutesFromPost200Response,
            DriverRoutesFromPost200ResponseBuilder> {
  _$DriverRoutesFromPost200Response? _$v;

  String? _routeId;
  String? get routeId => _$this._routeId;
  set routeId(String? routeId) => _$this._routeId = routeId;

  DriverRoutesFromPost200ResponseBuilder() {
    DriverRoutesFromPost200Response._defaults(this);
  }

  DriverRoutesFromPost200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _routeId = $v.routeId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DriverRoutesFromPost200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DriverRoutesFromPost200Response;
  }

  @override
  void update(void Function(DriverRoutesFromPost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DriverRoutesFromPost200Response build() => _build();

  _$DriverRoutesFromPost200Response _build() {
    final _$result =
        _$v ?? new _$DriverRoutesFromPost200Response._(routeId: routeId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
