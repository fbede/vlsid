# Variable Length Sortable ID (VLSID)
This is a variable length sortable id generator. It is designed to generate 
sortable Ids of any length.

## Motivation
I have an app under development that uses [Pocketbase](https://pocketbase.io)
and sortable ids. Unforetunately, pocketbase only supports 15 character ids
[#246](https://github.com/pocketbase/pocketbase/issues/246#issuecomment-1211740527)
and I do not know of any sortable id generators that would generate exactly 15
characters. This package solves that problem. You can now generate sortable ids
of any length provided (length >= 8).

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

Submit an issue on [github](https://github.com/fbede/vlsid) if you experience
any bugs.
