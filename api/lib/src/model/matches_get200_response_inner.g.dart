// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matches_get200_response_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MatchesGet200ResponseInner extends MatchesGet200ResponseInner {
  @override
  final String? passengerRouteId;
  @override
  final String? contact;
  @override
  final String? name;
  @override
  final String? link;

  factory _$MatchesGet200ResponseInner(
          [void Function(MatchesGet200ResponseInnerBuilder)? updates]) =>
      (new MatchesGet200ResponseInnerBuilder()..update(updates))._build();

  _$MatchesGet200ResponseInner._(
      {this.passengerRouteId, this.contact, this.name, this.link})
      : super._();

  @override
  MatchesGet200ResponseInner rebuild(
          void Function(MatchesGet200ResponseInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MatchesGet200ResponseInnerBuilder toBuilder() =>
      new MatchesGet200ResponseInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MatchesGet200ResponseInner &&
        passengerRouteId == other.passengerRouteId &&
        contact == other.contact &&
        name == other.name &&
        link == other.link;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, passengerRouteId.hashCode);
    _$hash = $jc(_$hash, contact.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, link.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MatchesGet200ResponseInner')
          ..add('passengerRouteId', passengerRouteId)
          ..add('contact', contact)
          ..add('name', name)
          ..add('link', link))
        .toString();
  }
}

class MatchesGet200ResponseInnerBuilder
    implements
        Builder<MatchesGet200ResponseInner, MatchesGet200ResponseInnerBuilder> {
  _$MatchesGet200ResponseInner? _$v;

  String? _passengerRouteId;
  String? get passengerRouteId => _$this._passengerRouteId;
  set passengerRouteId(String? passengerRouteId) =>
      _$this._passengerRouteId = passengerRouteId;

  String? _contact;
  String? get contact => _$this._contact;
  set contact(String? contact) => _$this._contact = contact;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  MatchesGet200ResponseInnerBuilder() {
    MatchesGet200ResponseInner._defaults(this);
  }

  MatchesGet200ResponseInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _passengerRouteId = $v.passengerRouteId;
      _contact = $v.contact;
      _name = $v.name;
      _link = $v.link;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MatchesGet200ResponseInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MatchesGet200ResponseInner;
  }

  @override
  void update(void Function(MatchesGet200ResponseInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MatchesGet200ResponseInner build() => _build();

  _$MatchesGet200ResponseInner _build() {
    final _$result = _$v ??
        new _$MatchesGet200ResponseInner._(
            passengerRouteId: passengerRouteId,
            contact: contact,
            name: name,
            link: link);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
