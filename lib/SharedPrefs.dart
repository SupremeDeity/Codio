///
/// SharedPrefs.dart - SupremeDeity (https://github.com/SupremeDeity)
/// Description: Stores preferences for use in app.
///
import 'package:package_info/package_info.dart';

/// Stores/Gets preferences for app use.
class SharedPrefs {
  /// The app name. `CFBundleDisplayName` on iOS, `application/label` on Android.
  String appName;

  /// The package name. `bundleIdentifier` on iOS, `getPackageName` on Android.
  String packageName;

  /// The package version. `CFBundleShortVersionString` on iOS, `versionName` on Android.
  String version;

  /// The build number. `CFBundleVersion` on iOS, `versionCode` on Android.
  String buildNumber;

  SharedPrefs() {
    PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
      appName = packageInfo.appName;
      packageName = packageInfo.packageName;
      version = packageInfo.version;
      buildNumber = packageInfo.buildNumber;
    });
  }
}
