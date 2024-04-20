// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_range.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DateRange extends DateRange {
  @override
  final int? startDate;
  @override
  final int? endDate;

  factory _$DateRange([void Function(DateRangeBuilder)? updates]) =>
      (new DateRangeBuilder()..update(updates))._build();

  _$DateRange._({this.startDate, this.endDate}) : super._();

  @override
  DateRange rebuild(void Function(DateRangeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DateRangeBuilder toBuilder() => new DateRangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DateRange &&
        startDate == other.startDate &&
        endDate == other.endDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DateRange')
          ..add('startDate', startDate)
          ..add('endDate', endDate))
        .toString();
  }
}

class DateRangeBuilder implements Builder<DateRange, DateRangeBuilder> {
  _$DateRange? _$v;

  int? _startDate;
  int? get startDate => _$this._startDate;
  set startDate(int? startDate) => _$this._startDate = startDate;

  int? _endDate;
  int? get endDate => _$this._endDate;
  set endDate(int? endDate) => _$this._endDate = endDate;

  DateRangeBuilder() {
    DateRange._defaults(this);
  }

  DateRangeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DateRange other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DateRange;
  }

  @override
  void update(void Function(DateRangeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DateRange build() => _build();

  _$DateRange _build() {
    final _$result =
        _$v ?? new _$DateRange._(startDate: startDate, endDate: endDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
