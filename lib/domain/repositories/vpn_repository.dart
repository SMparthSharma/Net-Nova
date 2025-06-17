abstract class VpnRepository {
  Future<void> startVpn(String config);
  Future<void> stopVpn();
}
