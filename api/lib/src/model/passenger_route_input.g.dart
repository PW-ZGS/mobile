// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passenger_route_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PassengerRouteInput extends PassengerRouteInput {
  @override
  final String? officeId;
  @override
  final Location? startPoint;
  @override
  final DateRange? timeRange;
  @override
  final int? maxDist;

  factory _$PassengerRouteInput(
          [void Function(PassengerRouteInputBuilder)? updates]) =>
      (new PassengerRouteInputBuilder()..update(updates))._build();

  _$PassengerRouteInput._(
      {this.officeId, this.startPoint, this.timeRange, this.maxDist})
      : super._();

  @override
  PassengerRouteInput rebuild(
          void Function(PassengerRouteInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PassengerRouteInputBuilder toBuilder() =>
      new PassengerRouteInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PassengerRouteInput &&
        officeId == other.officeId &&
        startPoint == other.startPoint &&
        timeRange == other.timeRange &&
        maxDist == other.maxDist;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, officeId.hashCode);
    _$hash = $jc(_$hash, startPoint.hashCode);
    _$hash = $jc(_$hash, timeRange.hashCode);
    _$hash = $jc(_$hash, maxDist.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PassengerRouteInput')
          ..add('officeId', officeId)
          ..add('startPoint', startPoint)
          ..add('timeRange', timeRange)
          ..add('maxDist', maxDist))
        .toString();
  }
}

class PassengerRouteInputBuilder
    implements Builder<PassengerRouteInput, PassengerRouteInputBuilder> {
  _$PassengerRouteInput? _$v;

  String? _officeId;
  String? get officeId => _$this._officeId;
  set officeId(String? officeId) => _$this._officeId = officeId;

  LocationBuilder? _startPoint;
  LocationBuilder get startPoint =>
      _$this._startPoint ??= new LocationBuilder();
  set startPoint(LocationBuilder? startPoint) =>
      _$this._startPoint = startPoint;

  DateRangeBuilder? _timeRange;
  DateRangeBuilder get timeRange =>
      _$this._timeRange ??= new DateRangeBuilder();
  set timeRange(DateRangeBuilder? timeRange) => _$this._timeRange = timeRange;

  int? _maxDist;
  int? get maxDist => _$this._maxDist;
  set maxDist(int? maxDist) => _$this._maxDist = maxDist;

  PassengerRouteInputBuilder() {
    PassengerRouteInput._defaults(this);
  }

  PassengerRouteInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _officeId = $v.officeId;
      _startPoint = $v.startPoint?.toBuilder();
      _timeRange = $v.timeRange?.toBuilder();
      _maxDist = $v.maxDist;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PassengerRouteInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PassengerRouteInput;
  }

  @override
  void update(void Function(PassengerRouteInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PassengerRouteInput build() => _build();

  _$PassengerRouteInput _build() {
    _$PassengerRouteInput _$result;
    try {
      _$result = _$v ??
          new _$PassengerRouteInput._(
              officeId: officeId,
              startPoint: _startPoint?.build(),
              timeRange: _timeRange?.build(),
              maxDist: maxDist);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'startPoint';
        _startPoint?.build();
        _$failedField = 'timeRange';
        _timeRange?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PassengerRouteInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
