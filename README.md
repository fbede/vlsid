# Variable Length Sortable ID (VLSID)
This is a variable length sortable id generator. It is designed to generate 
sortable Ids of any length.

## Features
- Generate sortable string ids.
- Ids can be anylength (minimum of 8 characters).
- Uses base64url characters, so ids are url safe.

## Usage

```dart
// Create a factory for ids
final vlsid = Vlsid();

// Generate an id from the factory
final id1 = vlsid.nextId();

// Both can be done in one line
final id2 = Vlsid().nextId();

print(id1); //_MorKCLMA7VOQWy
print(id2); //_MorKCLVDBFTbQM
```

## Additional information

I created this package to generate sortable Ids at different length. Reach out
to me on github if you experience any bugs.
