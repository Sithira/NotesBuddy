# notes_buddy_api_client.api.NotesControllerApi

## Load the API package
```dart
import 'package:notes_buddy_api_client/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createANote**](NotesControllerApi.md#createanote) | **post** /api/v1/notes/ | 
[**deleteANote**](NotesControllerApi.md#deleteanote) | **delete** /api/v1/notes/{note_id} | 
[**getANote**](NotesControllerApi.md#getanote) | **get** /api/v1/notes/{note_id} | 
[**getNotes**](NotesControllerApi.md#getnotes) | **get** /api/v1/notes/ | 
[**updateANote**](NotesControllerApi.md#updateanote) | **post** /api/v1/notes/{note_id} | 


# **createANote**
> NoteResponse createANote(noteRequest)



### Example 
```dart
import 'package:notes_buddy_api_client/api.dart';

var api_instance = new NotesControllerApi();
var noteRequest = new NoteRequest(); // NoteRequest | 

try { 
    var result = api_instance.createANote(noteRequest);
    print(result);
} catch (e) {
    print('Exception when calling NotesControllerApi->createANote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **noteRequest** | [**NoteRequest**](NoteRequest.md)|  | 

### Return type

[**NoteResponse**](NoteResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteANote**
> deleteANote(noteId)



### Example 
```dart
import 'package:notes_buddy_api_client/api.dart';

var api_instance = new NotesControllerApi();
var noteId = 789; // int | 

try { 
    api_instance.deleteANote(noteId);
} catch (e) {
    print('Exception when calling NotesControllerApi->deleteANote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **noteId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getANote**
> NoteResponse getANote(noteId)



### Example 
```dart
import 'package:notes_buddy_api_client/api.dart';

var api_instance = new NotesControllerApi();
var noteId = 789; // int | 

try { 
    var result = api_instance.getANote(noteId);
    print(result);
} catch (e) {
    print('Exception when calling NotesControllerApi->getANote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **noteId** | **int**|  | 

### Return type

[**NoteResponse**](NoteResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotes**
> BuiltList<NoteResponse> getNotes()



### Example 
```dart
import 'package:notes_buddy_api_client/api.dart';

var api_instance = new NotesControllerApi();

try { 
    var result = api_instance.getNotes();
    print(result);
} catch (e) {
    print('Exception when calling NotesControllerApi->getNotes: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList<NoteResponse>**](NoteResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateANote**
> NoteResponse updateANote(noteId, noteRequest)



### Example 
```dart
import 'package:notes_buddy_api_client/api.dart';

var api_instance = new NotesControllerApi();
var noteId = 789; // int | 
var noteRequest = new NoteRequest(); // NoteRequest | 

try { 
    var result = api_instance.updateANote(noteId, noteRequest);
    print(result);
} catch (e) {
    print('Exception when calling NotesControllerApi->updateANote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **noteId** | **int**|  | 
 **noteRequest** | [**NoteRequest**](NoteRequest.md)|  | 

### Return type

[**NoteResponse**](NoteResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

