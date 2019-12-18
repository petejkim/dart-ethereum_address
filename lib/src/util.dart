import "dart:typed_data";

import "package:pointycastle/ecc/curves/secp256k1.dart";

String strip0x(String address) {
  if (address.startsWith("0x") || address.startsWith("0X")) {
    return address.substring(2);
  }
  return address;
}

bool isValidFormat(String address) {
  return RegExp(r"^[0-9a-fA-F]{40}$").hasMatch(strip0x(address));
}

Uint8List decompressPublicKey(Uint8List publicKey) {
  final length = publicKey.length;
  final firstByte = publicKey[0];

  if ((length != 33 && length != 65) || firstByte < 2 || firstByte > 4) {
    throw ArgumentError.value(publicKey, "publicKey", "invalid public key");
  }

  final ecPublicKey = ECCurve_secp256k1().curve.decodePoint(publicKey);
  return ecPublicKey.getEncoded(false);
}
