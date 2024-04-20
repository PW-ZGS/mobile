import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for DefaultApi
void main() {
  final instance = Openapi().getDefaultApi();

  group(DefaultApi, () {
    // Get Driver's Routes
    //
    // Retrieves a list of routes reported by the driver, with optional filtering by userId.
    //
    //Future<BuiltList<DriverRoute>> driverRoutesByUsersUserIdGet(String userId) async
    test('test driverRoutesByUsersUserIdGet', () async {
      // TODO
    });

    // Create DriverRoute (From)
    //
    // Creates a new route with a starting point (office) and specified details.
    //
    //Future<DriverRoutesFromPost200Response> driverRoutesFromPost(RouteInput routeInput) async
    test('test driverRoutesFromPost', () async {
      // TODO
    });

    // Delete DriverRoute
    //
    // Deletes the specified route.
    //
    //Future driverRoutesRouteIdDelete(String routeId) async
    test('test driverRoutesRouteIdDelete', () async {
      // TODO
    });

    // Get DriverRoute
    //
    // Retrieves a route
    //
    //Future<DriverRoute> driverRoutesRouteIdGet(String routeId) async
    test('test driverRoutesRouteIdGet', () async {
      // TODO
    });

    // Modify Passenger Count
    //
    //Future<DriverRoutesRouteIdPost200Response> driverRoutesRouteIdPost(String routeId, DriverRoutesRouteIdPostRequest driverRoutesRouteIdPostRequest) async
    test('test driverRoutesRouteIdPost', () async {
      // TODO
    });

    // Create DriverRoute (To)
    //
    // Creates a new route with an ending point (office) and specified details.
    //
    //Future<DriverRoutesFromPost200Response> driverRoutesToPost(RouteInput routeInput) async
    test('test driverRoutesToPost', () async {
      // TODO
    });

    // Get Matches by DriverRoute ID
    //
    // Retrieves a list of matches for a given route ID.
    //
    //Future<BuiltList<MatchesGet200ResponseInner>> matchesGet(String passengerRouteId) async
    test('test matchesGet', () async {
      // TODO
    });

    // Get List of Offices
    //
    // Retrieves a list of offices with ID, name, and location (geo).
    //
    //Future<BuiltList<OfficesGet200ResponseInner>> officesGet() async
    test('test officesGet', () async {
      // TODO
    });

    // Get Driver's PassengerRoutes
    //
    // Retrieves a list of desires reported by the driver, with optional filtering by userId.
    //
    //Future<BuiltList<PassengerRoute>> passengerRoutesByUsersUserIdGet(String userId) async
    test('test passengerRoutesByUsersUserIdGet', () async {
      // TODO
    });

    // Create PassengerRoute (From)
    //
    // Creates a new desire with a starting point (office) and specified details.
    //
    //Future<PassengerRoutesFromPost200Response> passengerRoutesFromPost(PassengerRouteInput passengerRouteInput) async
    test('test passengerRoutesFromPost', () async {
      // TODO
    });

    // Delete DriverRoute
    //
    // Deletes the specified route.
    //
    //Future passengerRoutesPassengerRouteIdDelete(String passengerRouteId) async
    test('test passengerRoutesPassengerRouteIdDelete', () async {
      // TODO
    });

    // Get PassengerRoute
    //
    // Retrieves a desire
    //
    //Future<PassengerRoute> passengerRoutesPassengerRouteIdGet(String passengerRouteId) async
    test('test passengerRoutesPassengerRouteIdGet', () async {
      // TODO
    });

    // Create PassengerRoute (To)
    //
    // Creates a new desire with an ending point (office) and specified details.
    //
    //Future<PassengerRoutesFromPost200Response> passengerRoutesToPost(PassengerRouteInput passengerRouteInput) async
    test('test passengerRoutesToPost', () async {
      // TODO
    });

    // Get Waiting Place Information
    //
    // Retrieves information about the passenger's waiting place, including location and estimated waiting time.
    //
    //Future<PassengersGet200Response> passengersGet(String contact, String userId) async
    test('test passengersGet', () async {
      // TODO
    });

    // Create User Account
    //
    // Creates a user account, storing the name, contact, and generating a userId. Returns the userId.
    //
    //Future<UsersPost200Response> usersPost(UsersPostRequest usersPostRequest) async
    test('test usersPost', () async {
      // TODO
    });

    // Validate User
    //
    // Verifies the user based on the userId and returns the contact and userId.
    //
    //Future<UsersPostRequest> usersValidationGet(String userId) async
    test('test usersValidationGet', () async {
      // TODO
    });

  });
}
