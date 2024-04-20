// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_route.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DriverRoute extends DriverRoute {
  @override
  final String? routeId;
  @override
  final Location? startPoint;
  @override
  final Location? endPoint;

  factory _$DriverRoute([void Function(DriverRouteBuilder)? updates]) =>
      (new DriverRouteBuilder()..update(updates))._build();

  _$DriverRoute._({this.routeId, this.startPoint, this.endPoint}) : super._();

  @override
  DriverRoute rebuild(void Function(DriverRouteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DriverRouteBuilder toBuilder() => new DriverRouteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DriverRoute &&
        routeId == other.routeId &&
        startPoint == other.startPoint &&
        endPoint == other.endPoint;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, routeId.hashCode);
    _$hash = $jc(_$hash, startPoint.hashCode);
    _$hash = $jc(_$hash, endPoint.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DriverRoute')
          ..add('routeId', routeId)
          ..add('startPoint', startPoint)
          ..add('endPoint', endPoint))
        .toString();
  }
}

class DriverRouteBuilder implements Builder<DriverRoute, DriverRouteBuilder> {
  _$DriverRoute? _$v;

  String? _routeId;
  String? get routeId => _$this._routeId;
  set routeId(String? routeId) => _$this._routeId = routeId;

  LocationBuilder? _startPoint;
  LocationBuilder get startPoint =>
      _$this._startPoint ??= new LocationBuilder();
  set startPoint(LocationBuilder? startPoint) =>
      _$this._startPoint = startPoint;

  LocationBuilder? _endPoint;
  LocationBuilder get endPoint => _$this._endPoint ??= new LocationBuilder();
  set endPoint(LocationBuilder? endPoint) => _$this._endPoint = endPoint;

  DriverRouteBuilder() {
    DriverRoute._defaults(this);
  }

  DriverRouteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _routeId = $v.routeId;
      _startPoint = $v.startPoint?.toBuilder();
      _endPoint = $v.endPoint?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DriverRoute other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DriverRoute;
  }

  @override
  void update(void Function(DriverRouteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DriverRoute build() => _build();

  _$DriverRoute _build() {
    _$DriverRoute _$result;
    try {
      _$result = _$v ??
          new _$DriverRoute._(
              routeId: routeId,
              startPoint: _startPoint?.build(),
              endPoint: _endPoint?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'startPoint';
        _startPoint?.build();
        _$failedField = 'endPoint';
        _endPoint?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DriverRoute', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
