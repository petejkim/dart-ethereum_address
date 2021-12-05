import 'dart:typed_data';

import "package:convert/convert.dart" show hex;
import "package:ethereum_addresses/ethereum_addresses.dart";

void main() {
  final publicKey = hex.decode(
    "028a8c59fa27d1e0f1643081ff80c3cf0392902acbf76ab0dc9c414b8d115b0ab3",
  );

  // Derives an Ethereum address from a given public key.
  print(ethereumAddressFromPublicKey(Uint8List.fromList(publicKey)));

  // Converts an Ethereum address to a checksummed address (EIP-55).
  print(checksumEthereumAddress("0x5aaeb6053f3e94c9b9a09f33669435e7ef1beaed"));

  // Returns whether a given Ethereum address is valid.
  print(isValidEthereumAddress("0x5aAeb6053F3E94C9b9A09f33669435E7Ef1BeAed"));
  print(isValidEthereumAddress("0x5aaeb6053F3E94C9b9A09f33669435E7Ef1beaed"));
}
