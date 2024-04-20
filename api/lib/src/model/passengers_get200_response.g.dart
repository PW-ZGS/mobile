// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passengers_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PassengersGet200Response extends PassengersGet200Response {
  @override
  final Location? location;

  factory _$PassengersGet200Response(
          [void Function(PassengersGet200ResponseBuilder)? updates]) =>
      (new PassengersGet200ResponseBuilder()..update(updates))._build();

  _$PassengersGet200Response._({this.location}) : super._();

  @override
  PassengersGet200Response rebuild(
          void Function(PassengersGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PassengersGet200ResponseBuilder toBuilder() =>
      new PassengersGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PassengersGet200Response && location == other.location;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PassengersGet200Response')
          ..add('location', location))
        .toString();
  }
}

class PassengersGet200ResponseBuilder
    implements
        Builder<PassengersGet200Response, PassengersGet200ResponseBuilder> {
  _$PassengersGet200Response? _$v;

  LocationBuilder? _location;
  LocationBuilder get location => _$this._location ??= new LocationBuilder();
  set location(LocationBuilder? location) => _$this._location = location;

  PassengersGet200ResponseBuilder() {
    PassengersGet200Response._defaults(this);
  }

  PassengersGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _location = $v.location?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PassengersGet200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PassengersGet200Response;
  }

  @override
  void update(void Function(PassengersGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PassengersGet200Response build() => _build();

  _$PassengersGet200Response _build() {
    _$PassengersGet200Response _$result;
    try {
      _$result =
          _$v ?? new _$PassengersGet200Response._(location: _location?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        _location?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PassengersGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
