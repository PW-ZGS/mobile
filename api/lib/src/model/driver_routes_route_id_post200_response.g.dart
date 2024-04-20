// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_routes_route_id_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DriverRoutesRouteIdPost200Response
    extends DriverRoutesRouteIdPost200Response {
  @override
  final int? updatedPassengerCount;

  factory _$DriverRoutesRouteIdPost200Response(
          [void Function(DriverRoutesRouteIdPost200ResponseBuilder)?
              updates]) =>
      (new DriverRoutesRouteIdPost200ResponseBuilder()..update(updates))
          ._build();

  _$DriverRoutesRouteIdPost200Response._({this.updatedPassengerCount})
      : super._();

  @override
  DriverRoutesRouteIdPost200Response rebuild(
          void Function(DriverRoutesRouteIdPost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DriverRoutesRouteIdPost200ResponseBuilder toBuilder() =>
      new DriverRoutesRouteIdPost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DriverRoutesRouteIdPost200Response &&
        updatedPassengerCount == other.updatedPassengerCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, updatedPassengerCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DriverRoutesRouteIdPost200Response')
          ..add('updatedPassengerCount', updatedPassengerCount))
        .toString();
  }
}

class DriverRoutesRouteIdPost200ResponseBuilder
    implements
        Builder<DriverRoutesRouteIdPost200Response,
            DriverRoutesRouteIdPost200ResponseBuilder> {
  _$DriverRoutesRouteIdPost200Response? _$v;

  int? _updatedPassengerCount;
  int? get updatedPassengerCount => _$this._updatedPassengerCount;
  set updatedPassengerCount(int? updatedPassengerCount) =>
      _$this._updatedPassengerCount = updatedPassengerCount;

  DriverRoutesRouteIdPost200ResponseBuilder() {
    DriverRoutesRouteIdPost200Response._defaults(this);
  }

  DriverRoutesRouteIdPost200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _updatedPassengerCount = $v.updatedPassengerCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DriverRoutesRouteIdPost200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DriverRoutesRouteIdPost200Response;
  }

  @override
  void update(
      void Function(DriverRoutesRouteIdPost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DriverRoutesRouteIdPost200Response build() => _build();

  _$DriverRoutesRouteIdPost200Response _build() {
    final _$result = _$v ??
        new _$DriverRoutesRouteIdPost200Response._(
            updatedPassengerCount: updatedPassengerCount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
