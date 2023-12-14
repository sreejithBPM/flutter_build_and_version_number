import 'package:package_info_plus/package_info_plus.dart';

class AppInfo {
  String version = '';
  String buildNumber = '';

  Future<void> getAppInfo() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    version = packageInfo.version;
    buildNumber = packageInfo.buildNumber;
  }
}