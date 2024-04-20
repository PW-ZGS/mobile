// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offices_get200_response_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OfficesGet200ResponseInner extends OfficesGet200ResponseInner {
  @override
  final String? officeId;
  @override
  final String? name;
  @override
  final Location? location;

  factory _$OfficesGet200ResponseInner(
          [void Function(OfficesGet200ResponseInnerBuilder)? updates]) =>
      (new OfficesGet200ResponseInnerBuilder()..update(updates))._build();

  _$OfficesGet200ResponseInner._({this.officeId, this.name, this.location})
      : super._();

  @override
  OfficesGet200ResponseInner rebuild(
          void Function(OfficesGet200ResponseInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OfficesGet200ResponseInnerBuilder toBuilder() =>
      new OfficesGet200ResponseInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OfficesGet200ResponseInner &&
        officeId == other.officeId &&
        name == other.name &&
        location == other.location;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, officeId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OfficesGet200ResponseInner')
          ..add('officeId', officeId)
          ..add('name', name)
          ..add('location', location))
        .toString();
  }
}

class OfficesGet200ResponseInnerBuilder
    implements
        Builder<OfficesGet200ResponseInner, OfficesGet200ResponseInnerBuilder> {
  _$OfficesGet200ResponseInner? _$v;

  String? _officeId;
  String? get officeId => _$this._officeId;
  set officeId(String? officeId) => _$this._officeId = officeId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  LocationBuilder? _location;
  LocationBuilder get location => _$this._location ??= new LocationBuilder();
  set location(LocationBuilder? location) => _$this._location = location;

  OfficesGet200ResponseInnerBuilder() {
    OfficesGet200ResponseInner._defaults(this);
  }

  OfficesGet200ResponseInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _officeId = $v.officeId;
      _name = $v.name;
      _location = $v.location?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OfficesGet200ResponseInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OfficesGet200ResponseInner;
  }

  @override
  void update(void Function(OfficesGet200ResponseInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OfficesGet200ResponseInner build() => _build();

  _$OfficesGet200ResponseInner _build() {
    _$OfficesGet200ResponseInner _$result;
    try {
      _$result = _$v ??
          new _$OfficesGet200ResponseInner._(
              officeId: officeId, name: name, location: _location?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        _location?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OfficesGet200ResponseInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
