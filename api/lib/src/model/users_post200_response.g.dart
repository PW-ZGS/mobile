// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UsersPost200Response extends UsersPost200Response {
  @override
  final String? userId;

  factory _$UsersPost200Response(
          [void Function(UsersPost200ResponseBuilder)? updates]) =>
      (new UsersPost200ResponseBuilder()..update(updates))._build();

  _$UsersPost200Response._({this.userId}) : super._();

  @override
  UsersPost200Response rebuild(
          void Function(UsersPost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersPost200ResponseBuilder toBuilder() =>
      new UsersPost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersPost200Response && userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersPost200Response')
          ..add('userId', userId))
        .toString();
  }
}

class UsersPost200ResponseBuilder
    implements Builder<UsersPost200Response, UsersPost200ResponseBuilder> {
  _$UsersPost200Response? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  UsersPost200ResponseBuilder() {
    UsersPost200Response._defaults(this);
  }

  UsersPost200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersPost200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersPost200Response;
  }

  @override
  void update(void Function(UsersPost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersPost200Response build() => _build();

  _$UsersPost200Response _build() {
    final _$result = _$v ?? new _$UsersPost200Response._(userId: userId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
