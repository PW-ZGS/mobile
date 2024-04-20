// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passenger_routes_from_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PassengerRoutesFromPost200Response
    extends PassengerRoutesFromPost200Response {
  @override
  final String? passengerRouteId;

  factory _$PassengerRoutesFromPost200Response(
          [void Function(PassengerRoutesFromPost200ResponseBuilder)?
              updates]) =>
      (new PassengerRoutesFromPost200ResponseBuilder()..update(updates))
          ._build();

  _$PassengerRoutesFromPost200Response._({this.passengerRouteId}) : super._();

  @override
  PassengerRoutesFromPost200Response rebuild(
          void Function(PassengerRoutesFromPost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PassengerRoutesFromPost200ResponseBuilder toBuilder() =>
      new PassengerRoutesFromPost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PassengerRoutesFromPost200Response &&
        passengerRouteId == other.passengerRouteId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, passengerRouteId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PassengerRoutesFromPost200Response')
          ..add('passengerRouteId', passengerRouteId))
        .toString();
  }
}

class PassengerRoutesFromPost200ResponseBuilder
    implements
        Builder<PassengerRoutesFromPost200Response,
            PassengerRoutesFromPost200ResponseBuilder> {
  _$PassengerRoutesFromPost200Response? _$v;

  String? _passengerRouteId;
  String? get passengerRouteId => _$this._passengerRouteId;
  set passengerRouteId(String? passengerRouteId) =>
      _$this._passengerRouteId = passengerRouteId;

  PassengerRoutesFromPost200ResponseBuilder() {
    PassengerRoutesFromPost200Response._defaults(this);
  }

  PassengerRoutesFromPost200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _passengerRouteId = $v.passengerRouteId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PassengerRoutesFromPost200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PassengerRoutesFromPost200Response;
  }

  @override
  void update(
      void Function(PassengerRoutesFromPost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PassengerRoutesFromPost200Response build() => _build();

  _$PassengerRoutesFromPost200Response _build() {
    final _$result = _$v ??
        new _$PassengerRoutesFromPost200Response._(
            passengerRouteId: passengerRouteId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
