//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/date_range.dart';
import 'package:openapi/src/model/driver_route.dart';
import 'package:openapi/src/model/driver_routes_from_post200_response.dart';
import 'package:openapi/src/model/driver_routes_route_id_post200_response.dart';
import 'package:openapi/src/model/driver_routes_route_id_post_request.dart';
import 'package:openapi/src/model/location.dart';
import 'package:openapi/src/model/matches_get200_response_inner.dart';
import 'package:openapi/src/model/offices_get200_response_inner.dart';
import 'package:openapi/src/model/passenger_route.dart';
import 'package:openapi/src/model/passenger_route_input.dart';
import 'package:openapi/src/model/passenger_routes_from_post200_response.dart';
import 'package:openapi/src/model/passengers_get200_response.dart';
import 'package:openapi/src/model/route_input.dart';
import 'package:openapi/src/model/users_post200_response.dart';
import 'package:openapi/src/model/users_post_request.dart';

part 'serializers.g.dart';

@SerializersFor([
  DateRange,
  DriverRoute,
  DriverRoutesFromPost200Response,
  DriverRoutesRouteIdPost200Response,
  DriverRoutesRouteIdPostRequest,
  Location,
  MatchesGet200ResponseInner,
  OfficesGet200ResponseInner,
  PassengerRoute,
  PassengerRouteInput,
  PassengerRoutesFromPost200Response,
  PassengersGet200Response,
  RouteInput,
  UsersPost200Response,
  UsersPostRequest,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PassengerRoute)]),
        () => ListBuilder<PassengerRoute>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(OfficesGet200ResponseInner)]),
        () => ListBuilder<OfficesGet200ResponseInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DriverRoute)]),
        () => ListBuilder<DriverRoute>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(MatchesGet200ResponseInner)]),
        () => ListBuilder<MatchesGet200ResponseInner>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
