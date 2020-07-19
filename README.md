# Notice
This package is a fork of the original simple_rsa package, all the credit is to their original authors.
We created this package just to have an updated version of this awesome library, our plans are to
keep as updated as possible :).

# Simple RSA Encryption
Flutter plugin to encrypt, decrypt (RSA/ECB/PCSK1), verify and sign string with a public and a private key

Support for ANDROID and iOS(thanks to adlanarifzr)

## Installation

To use the plugin, add `simple_rsa2` as a
[dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

## Usage

First, initialize private and public key. Preferably in BASE64 format.

```
final publicKey = '...';
final privateKey = '...';
```

After that, you can encrypt or decyrpt text

```
let plainText = 'something';
final encryptedText = await encryptString(plainText, utf8.decode(base64.decode(publicKey)));
final decryptedText = await decryptString(encryptedText, utf8.decode(base64.decode(privateKey)));

// Test
print(plainText == decryptedText ? 'true' : 'false');
```

Or you might want to sign and verify text

```
let plainText = 'something';
final signedText = await signString(plainText, utf8.decode(base64.decode(privateKey)));
final verified = await verifyString(plainText, signedText, utf8.decode(base64.decode(publicKey)));

// Test
print(verified ? 'true' : 'false');
```

### Contributions
[Adlan Arif Zakaria (adlanarifzr)](https://github.com/adlanarifzr) iOS compatibility, sign and verify method.
