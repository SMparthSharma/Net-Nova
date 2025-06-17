class VpnInfo {
  late final String ip;
  late final String hostName;
  late final int speed;
  late final String ping;
  late final String countryLongname;
  late final String countryShortname;
  late final int vpnSessionNum;
  late final String base64OpenVPNConfigurationData;
  VpnInfo({
    required this.hostName,
    required this.ip,
    required this.ping,
    required this.speed,
    required this.countryLongname,
    required this.countryShortname,
    required this.vpnSessionNum,
    required this.base64OpenVPNConfigurationData,
  });
  VpnInfo.fromJson(Map<String, dynamic> jsonData) {
    hostName = jsonData['HostName'] ?? '';
    ip = jsonData['IP'] ?? '';
    ping = jsonData['Ping'] ?? '';
    speed = jsonData['Speed'] ?? 0;
    countryLongname = jsonData['CountryLong'] ?? '';
    countryShortname = jsonData['CountryShort'] ?? '';
    vpnSessionNum = jsonData['NumVpnSession'] ?? 0;
    base64OpenVPNConfigurationData =
        jsonData['OpenVpn_ConfigData_Base64'] ?? '';
  }
  Map<String, dynamic> toJson() {
    final jsonData = <String, dynamic>{};
    jsonData['HostName'] = hostName;
    jsonData['IP'] = ip;
    jsonData['Ping'] = ping;
    jsonData['Speed'] = speed;
    jsonData['CountryLong'] = countryLongname;
    jsonData['CountryShort'] = countryShortname;
    jsonData['NumVpnSession'] = vpnSessionNum;
    jsonData['OpenVpn_ConfigData_Base64'] = base64OpenVPNConfigurationData;
    return jsonData;
  }
}
