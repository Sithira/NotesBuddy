# notes_buddy_api_client.api.AuthenticationControllerApi

## Load the API package
```dart
import 'package:notes_buddy_api_client/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authenticateUser**](AuthenticationControllerApi.md#authenticateuser) | **post** /api/auth/login | 
[**getCurrentUser**](AuthenticationControllerApi.md#getcurrentuser) | **get** /api/auth/user/me | 
[**registerUser**](AuthenticationControllerApi.md#registeruser) | **post** /api/auth/signup | 


# **authenticateUser**
> LoginResponse authenticateUser(loginRequest)



### Example 
```dart
import 'package:notes_buddy_api_client/api.dart';

var api_instance = new AuthenticationControllerApi();
var loginRequest = new LoginRequest(); // LoginRequest | 

try { 
    var result = api_instance.authenticateUser(loginRequest);
    print(result);
} catch (e) {
    print('Exception when calling AuthenticationControllerApi->authenticateUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginRequest** | [**LoginRequest**](LoginRequest.md)|  | 

### Return type

[**LoginResponse**](LoginResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCurrentUser**
> UserSummary getCurrentUser()



### Example 
```dart
import 'package:notes_buddy_api_client/api.dart';

var api_instance = new AuthenticationControllerApi();

try { 
    var result = api_instance.getCurrentUser();
    print(result);
} catch (e) {
    print('Exception when calling AuthenticationControllerApi->getCurrentUser: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserSummary**](UserSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerUser**
> registerUser(signUpRequest)



### Example 
```dart
import 'package:notes_buddy_api_client/api.dart';

var api_instance = new AuthenticationControllerApi();
var signUpRequest = new SignUpRequest(); // SignUpRequest | 

try { 
    api_instance.registerUser(signUpRequest);
} catch (e) {
    print('Exception when calling AuthenticationControllerApi->registerUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signUpRequest** | [**SignUpRequest**](SignUpRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

