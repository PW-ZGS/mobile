// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UsersPostRequest extends UsersPostRequest {
  @override
  final String? name;
  @override
  final String? contact;

  factory _$UsersPostRequest(
          [void Function(UsersPostRequestBuilder)? updates]) =>
      (new UsersPostRequestBuilder()..update(updates))._build();

  _$UsersPostRequest._({this.name, this.contact}) : super._();

  @override
  UsersPostRequest rebuild(void Function(UsersPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersPostRequestBuilder toBuilder() =>
      new UsersPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersPostRequest &&
        name == other.name &&
        contact == other.contact;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, contact.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersPostRequest')
          ..add('name', name)
          ..add('contact', contact))
        .toString();
  }
}

class UsersPostRequestBuilder
    implements Builder<UsersPostRequest, UsersPostRequestBuilder> {
  _$UsersPostRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _contact;
  String? get contact => _$this._contact;
  set contact(String? contact) => _$this._contact = contact;

  UsersPostRequestBuilder() {
    UsersPostRequest._defaults(this);
  }

  UsersPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _contact = $v.contact;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersPostRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersPostRequest;
  }

  @override
  void update(void Function(UsersPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersPostRequest build() => _build();

  _$UsersPostRequest _build() {
    final _$result =
        _$v ?? new _$UsersPostRequest._(name: name, contact: contact);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
