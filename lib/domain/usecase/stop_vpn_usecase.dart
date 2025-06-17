import 'package:my_vpn_netnova/domain/repositories/vpn_repository.dart';

class StopVpnUsecase {
  final VpnRepository repository;
  const StopVpnUsecase({required this.repository});
  Future<void> call(String openvpnConfig) {
    return repository.stopVpn();
  }
}
