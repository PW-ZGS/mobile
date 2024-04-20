// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RouteInput extends RouteInput {
  @override
  final String? officeId;
  @override
  final Location? startPoint;
  @override
  final DateTime? fromTime;
  @override
  final int? availableSeats;
  @override
  final String? userId;

  factory _$RouteInput([void Function(RouteInputBuilder)? updates]) =>
      (new RouteInputBuilder()..update(updates))._build();

  _$RouteInput._(
      {this.officeId,
      this.startPoint,
      this.fromTime,
      this.availableSeats,
      this.userId})
      : super._();

  @override
  RouteInput rebuild(void Function(RouteInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RouteInputBuilder toBuilder() => new RouteInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RouteInput &&
        officeId == other.officeId &&
        startPoint == other.startPoint &&
        fromTime == other.fromTime &&
        availableSeats == other.availableSeats &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, officeId.hashCode);
    _$hash = $jc(_$hash, startPoint.hashCode);
    _$hash = $jc(_$hash, fromTime.hashCode);
    _$hash = $jc(_$hash, availableSeats.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RouteInput')
          ..add('officeId', officeId)
          ..add('startPoint', startPoint)
          ..add('fromTime', fromTime)
          ..add('availableSeats', availableSeats)
          ..add('userId', userId))
        .toString();
  }
}

class RouteInputBuilder implements Builder<RouteInput, RouteInputBuilder> {
  _$RouteInput? _$v;

  String? _officeId;
  String? get officeId => _$this._officeId;
  set officeId(String? officeId) => _$this._officeId = officeId;

  LocationBuilder? _startPoint;
  LocationBuilder get startPoint =>
      _$this._startPoint ??= new LocationBuilder();
  set startPoint(LocationBuilder? startPoint) =>
      _$this._startPoint = startPoint;

  DateTime? _fromTime;
  DateTime? get fromTime => _$this._fromTime;
  set fromTime(DateTime? fromTime) => _$this._fromTime = fromTime;

  int? _availableSeats;
  int? get availableSeats => _$this._availableSeats;
  set availableSeats(int? availableSeats) =>
      _$this._availableSeats = availableSeats;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  RouteInputBuilder() {
    RouteInput._defaults(this);
  }

  RouteInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _officeId = $v.officeId;
      _startPoint = $v.startPoint?.toBuilder();
      _fromTime = $v.fromTime;
      _availableSeats = $v.availableSeats;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RouteInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RouteInput;
  }

  @override
  void update(void Function(RouteInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RouteInput build() => _build();

  _$RouteInput _build() {
    _$RouteInput _$result;
    try {
      _$result = _$v ??
          new _$RouteInput._(
              officeId: officeId,
              startPoint: _startPoint?.build(),
              fromTime: fromTime,
              availableSeats: availableSeats,
              userId: userId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'startPoint';
        _startPoint?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RouteInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
