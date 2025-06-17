import 'package:my_vpn_netnova/domain/repositories/vpn_repository.dart';

class StartVpnUsecase {
  final VpnRepository repository;

  StartVpnUsecase({required this.repository});
  Future<void> call(String openvpnConfig) {
    return repository.startVpn(openvpnConfig);
  }
}
