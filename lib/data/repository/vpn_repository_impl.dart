import 'package:my_vpn_netnova/domain/repositories/vpn_repository.dart';
import 'package:openvpn_flutter/openvpn_flutter.dart';

class VpnRepositoryImpl extends VpnRepository {
  final OpenVPN openVPN;

  VpnRepositoryImpl({required this.openVPN});

  @override
  Future<void> startVpn(String config) async {
    try {
      await openVPN.connect(config, "USA");
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<void> stopVpn() async {
    try {
      openVPN.disconnect();
    } catch (e) {
      throw e.toString();
    }
  }
}
