# ethereum_address

## Usage

```dart
import "package:convert/convert.dart" show hex;
import "package:ethereum_address/ethereum_address.dart";

final publicKey = hex.decode(
  "028a8c59fa27d1e0f1643081ff80c3cf0392902acbf76ab0dc9c414b8d115b0ab3",
);

// Derives an Ethereum address from a given public key.
ethereumAddressFromPublicKey(publicKey);
// => "0xD11A13f484E2f2bD22d93c3C3131f61c05E876a9"

// Converts an Ethereum address to a checksummed address (EIP-55).
checksumEthereumAddress("0x5aaeb6053f3e94c9b9a09f33669435e7ef1beaed");
// => "0x5aAeb6053F3E94C9b9A09f33669435E7Ef1BeAed"

// Returns whether a given Ethereum address is valid.
isValidEthereumAddress("0x5aAeb6053F3E94C9b9A09f33669435E7Ef1BeAed");
// => true
isValidEthereumAddress("0x5aaeb6053F3E94C9b9A09f33669435E7Ef1beaed");
// => false
```

## License

MIT License

---

Copyright (c) 2019 Peter Jihoon Kim
