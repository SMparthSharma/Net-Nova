package com.example.my_vpn_netnova

import android.content.Intent
import android.os.Bundle
import io.flutter.embedding.android.FlutterActivity
import id.laskarmedia.openvpn_flutter.OpenVPNFlutterPlugin

class MainActivity : FlutterActivity() {

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        if (requestCode == 24 && resultCode == RESULT_OK) {
            OpenVPNFlutterPlugin.connectWhileGranted(true)
        } else {
            OpenVPNFlutterPlugin.connectWhileGranted(false)
        }
    }
}