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

## Note
_A bug was discovered in v1.0.0 where the length of the id was 1 character 
longer than the length specified in the constructor. This has been fixed in
this version. So to continue generating the same length of ids you were using
in v1.x.x subtract the length you used then by 1. If you did not specify a 
length in the constructor, the default length is 15._

```dart
// v1.0.0
final vlsid1 = Vlsid(length: 15);
final id1 = vlsid1.nextId().length; // 16

// v2.0.0
final vlsid2 = Vlsid(length: 15);
final id2 = vlsid2.nextId().length; // 15

```

## Features
- Generate sortable string ids.
- Ids can be any length (minimum of 8 characters).
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
