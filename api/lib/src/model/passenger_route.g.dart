// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passenger_route.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PassengerRoute extends PassengerRoute {
  @override
  final String? passengerRouteId;
  @override
  final Location? startPoint;
  @override
  final Location? endPoint;

  factory _$PassengerRoute([void Function(PassengerRouteBuilder)? updates]) =>
      (new PassengerRouteBuilder()..update(updates))._build();

  _$PassengerRoute._({this.passengerRouteId, this.startPoint, this.endPoint})
      : super._();

  @override
  PassengerRoute rebuild(void Function(PassengerRouteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PassengerRouteBuilder toBuilder() =>
      new PassengerRouteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PassengerRoute &&
        passengerRouteId == other.passengerRouteId &&
        startPoint == other.startPoint &&
        endPoint == other.endPoint;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, passengerRouteId.hashCode);
    _$hash = $jc(_$hash, startPoint.hashCode);
    _$hash = $jc(_$hash, endPoint.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PassengerRoute')
          ..add('passengerRouteId', passengerRouteId)
          ..add('startPoint', startPoint)
          ..add('endPoint', endPoint))
        .toString();
  }
}

class PassengerRouteBuilder
    implements Builder<PassengerRoute, PassengerRouteBuilder> {
  _$PassengerRoute? _$v;

  String? _passengerRouteId;
  String? get passengerRouteId => _$this._passengerRouteId;
  set passengerRouteId(String? passengerRouteId) =>
      _$this._passengerRouteId = passengerRouteId;

  LocationBuilder? _startPoint;
  LocationBuilder get startPoint =>
      _$this._startPoint ??= new LocationBuilder();
  set startPoint(LocationBuilder? startPoint) =>
      _$this._startPoint = startPoint;

  LocationBuilder? _endPoint;
  LocationBuilder get endPoint => _$this._endPoint ??= new LocationBuilder();
  set endPoint(LocationBuilder? endPoint) => _$this._endPoint = endPoint;

  PassengerRouteBuilder() {
    PassengerRoute._defaults(this);
  }

  PassengerRouteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _passengerRouteId = $v.passengerRouteId;
      _startPoint = $v.startPoint?.toBuilder();
      _endPoint = $v.endPoint?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PassengerRoute other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PassengerRoute;
  }

  @override
  void update(void Function(PassengerRouteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PassengerRoute build() => _build();

  _$PassengerRoute _build() {
    _$PassengerRoute _$result;
    try {
      _$result = _$v ??
          new _$PassengerRoute._(
              passengerRouteId: passengerRouteId,
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
            r'PassengerRoute', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
