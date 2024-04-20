# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**driverRoutesByUsersUserIdGet**](DefaultApi.md#driverroutesbyusersuseridget) | **GET** /driver_routes/by-users/{userId} | Get Driver&#39;s Routes
[**driverRoutesFromPost**](DefaultApi.md#driverroutesfrompost) | **POST** /driver_routes/from | Create DriverRoute (From)
[**driverRoutesRouteIdDelete**](DefaultApi.md#driverroutesrouteiddelete) | **DELETE** /driver_routes/{routeId} | Delete DriverRoute
[**driverRoutesRouteIdGet**](DefaultApi.md#driverroutesrouteidget) | **GET** /driver_routes/{routeId} | Get DriverRoute
[**driverRoutesRouteIdPost**](DefaultApi.md#driverroutesrouteidpost) | **POST** /driver_routes/{routeId} | Modify Passenger Count
[**driverRoutesToPost**](DefaultApi.md#driverroutestopost) | **POST** /driver_routes/to | Create DriverRoute (To)
[**matchesGet**](DefaultApi.md#matchesget) | **GET** /matches | Get Matches by DriverRoute ID
[**officesGet**](DefaultApi.md#officesget) | **GET** /offices | Get List of Offices
[**passengerRoutesByUsersUserIdGet**](DefaultApi.md#passengerroutesbyusersuseridget) | **GET** /passenger_routes/by-users/{userId} | Get Driver&#39;s PassengerRoutes
[**passengerRoutesFromPost**](DefaultApi.md#passengerroutesfrompost) | **POST** /passenger_routes/from | Create PassengerRoute (From)
[**passengerRoutesPassengerRouteIdDelete**](DefaultApi.md#passengerroutespassengerrouteiddelete) | **DELETE** /passenger_routes/{passengerRouteId} | Delete DriverRoute
[**passengerRoutesPassengerRouteIdGet**](DefaultApi.md#passengerroutespassengerrouteidget) | **GET** /passenger_routes/{passengerRouteId} | Get PassengerRoute
[**passengerRoutesToPost**](DefaultApi.md#passengerroutestopost) | **POST** /passenger_routes/to | Create PassengerRoute (To)
[**passengersGet**](DefaultApi.md#passengersget) | **GET** /passengers | Get Waiting Place Information
[**usersPost**](DefaultApi.md#userspost) | **POST** /users | Create User Account
[**usersValidationGet**](DefaultApi.md#usersvalidationget) | **GET** /users/validation | Validate User


# **driverRoutesByUsersUserIdGet**
> BuiltList<DriverRoute> driverRoutesByUsersUserIdGet(userId)

Get Driver's Routes

Retrieves a list of routes reported by the driver, with optional filtering by userId.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String userId = userId_example; // String | 

try {
    final response = api.driverRoutesByUsersUserIdGet(userId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->driverRoutesByUsersUserIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 

### Return type

[**BuiltList&lt;DriverRoute&gt;**](DriverRoute.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **driverRoutesFromPost**
> DriverRoutesFromPost200Response driverRoutesFromPost(routeInput)

Create DriverRoute (From)

Creates a new route with a starting point (office) and specified details.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final RouteInput routeInput = ; // RouteInput | 

try {
    final response = api.driverRoutesFromPost(routeInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->driverRoutesFromPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **routeInput** | [**RouteInput**](RouteInput.md)|  | 

### Return type

[**DriverRoutesFromPost200Response**](DriverRoutesFromPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **driverRoutesRouteIdDelete**
> driverRoutesRouteIdDelete(routeId)

Delete DriverRoute

Deletes the specified route.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String routeId = routeId_example; // String | 

try {
    api.driverRoutesRouteIdDelete(routeId);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->driverRoutesRouteIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **routeId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **driverRoutesRouteIdGet**
> DriverRoute driverRoutesRouteIdGet(routeId)

Get DriverRoute

Retrieves a route

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String routeId = routeId_example; // String | 

try {
    final response = api.driverRoutesRouteIdGet(routeId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->driverRoutesRouteIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **routeId** | **String**|  | 

### Return type

[**DriverRoute**](DriverRoute.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **driverRoutesRouteIdPost**
> DriverRoutesRouteIdPost200Response driverRoutesRouteIdPost(routeId, driverRoutesRouteIdPostRequest)

Modify Passenger Count

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String routeId = routeId_example; // String | 
final DriverRoutesRouteIdPostRequest driverRoutesRouteIdPostRequest = ; // DriverRoutesRouteIdPostRequest | 

try {
    final response = api.driverRoutesRouteIdPost(routeId, driverRoutesRouteIdPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->driverRoutesRouteIdPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **routeId** | **String**|  | 
 **driverRoutesRouteIdPostRequest** | [**DriverRoutesRouteIdPostRequest**](DriverRoutesRouteIdPostRequest.md)|  | 

### Return type

[**DriverRoutesRouteIdPost200Response**](DriverRoutesRouteIdPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **driverRoutesToPost**
> DriverRoutesFromPost200Response driverRoutesToPost(routeInput)

Create DriverRoute (To)

Creates a new route with an ending point (office) and specified details.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final RouteInput routeInput = ; // RouteInput | 

try {
    final response = api.driverRoutesToPost(routeInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->driverRoutesToPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **routeInput** | [**RouteInput**](RouteInput.md)|  | 

### Return type

[**DriverRoutesFromPost200Response**](DriverRoutesFromPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **matchesGet**
> BuiltList<MatchesGet200ResponseInner> matchesGet(passengerRouteId)

Get Matches by DriverRoute ID

Retrieves a list of matches for a given route ID.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String passengerRouteId = passengerRouteId_example; // String | 

try {
    final response = api.matchesGet(passengerRouteId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->matchesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **passengerRouteId** | **String**|  | 

### Return type

[**BuiltList&lt;MatchesGet200ResponseInner&gt;**](MatchesGet200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **officesGet**
> BuiltList<OfficesGet200ResponseInner> officesGet()

Get List of Offices

Retrieves a list of offices with ID, name, and location (geo).

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();

try {
    final response = api.officesGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->officesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;OfficesGet200ResponseInner&gt;**](OfficesGet200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **passengerRoutesByUsersUserIdGet**
> BuiltList<PassengerRoute> passengerRoutesByUsersUserIdGet(userId)

Get Driver's PassengerRoutes

Retrieves a list of desires reported by the driver, with optional filtering by userId.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String userId = userId_example; // String | 

try {
    final response = api.passengerRoutesByUsersUserIdGet(userId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->passengerRoutesByUsersUserIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 

### Return type

[**BuiltList&lt;PassengerRoute&gt;**](PassengerRoute.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **passengerRoutesFromPost**
> PassengerRoutesFromPost200Response passengerRoutesFromPost(passengerRouteInput)

Create PassengerRoute (From)

Creates a new desire with a starting point (office) and specified details.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final PassengerRouteInput passengerRouteInput = ; // PassengerRouteInput | 

try {
    final response = api.passengerRoutesFromPost(passengerRouteInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->passengerRoutesFromPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **passengerRouteInput** | [**PassengerRouteInput**](PassengerRouteInput.md)|  | 

### Return type

[**PassengerRoutesFromPost200Response**](PassengerRoutesFromPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **passengerRoutesPassengerRouteIdDelete**
> passengerRoutesPassengerRouteIdDelete(passengerRouteId)

Delete DriverRoute

Deletes the specified route.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String passengerRouteId = passengerRouteId_example; // String | 

try {
    api.passengerRoutesPassengerRouteIdDelete(passengerRouteId);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->passengerRoutesPassengerRouteIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **passengerRouteId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **passengerRoutesPassengerRouteIdGet**
> PassengerRoute passengerRoutesPassengerRouteIdGet(passengerRouteId)

Get PassengerRoute

Retrieves a desire

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String passengerRouteId = passengerRouteId_example; // String | 

try {
    final response = api.passengerRoutesPassengerRouteIdGet(passengerRouteId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->passengerRoutesPassengerRouteIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **passengerRouteId** | **String**|  | 

### Return type

[**PassengerRoute**](PassengerRoute.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **passengerRoutesToPost**
> PassengerRoutesFromPost200Response passengerRoutesToPost(passengerRouteInput)

Create PassengerRoute (To)

Creates a new desire with an ending point (office) and specified details.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final PassengerRouteInput passengerRouteInput = ; // PassengerRouteInput | 

try {
    final response = api.passengerRoutesToPost(passengerRouteInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->passengerRoutesToPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **passengerRouteInput** | [**PassengerRouteInput**](PassengerRouteInput.md)|  | 

### Return type

[**PassengerRoutesFromPost200Response**](PassengerRoutesFromPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **passengersGet**
> PassengersGet200Response passengersGet(contact, userId)

Get Waiting Place Information

Retrieves information about the passenger's waiting place, including location and estimated waiting time.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String contact = contact_example; // String | 
final String userId = userId_example; // String | 

try {
    final response = api.passengersGet(contact, userId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->passengersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact** | **String**|  | 
 **userId** | **String**|  | 

### Return type

[**PassengersGet200Response**](PassengersGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersPost**
> UsersPost200Response usersPost(usersPostRequest)

Create User Account

Creates a user account, storing the name, contact, and generating a userId. Returns the userId.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final UsersPostRequest usersPostRequest = ; // UsersPostRequest | 

try {
    final response = api.usersPost(usersPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->usersPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usersPostRequest** | [**UsersPostRequest**](UsersPostRequest.md)|  | 

### Return type

[**UsersPost200Response**](UsersPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersValidationGet**
> UsersPostRequest usersValidationGet(userId)

Validate User

Verifies the user based on the userId and returns the contact and userId.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String userId = userId_example; // String | 

try {
    final response = api.usersValidationGet(userId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->usersValidationGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 

### Return type

[**UsersPostRequest**](UsersPostRequest.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

