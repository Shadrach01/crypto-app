import 'package:crypto_app/common/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  late SharedPreferences _pref;

  Future<StorageService> init() async {
    _pref = await SharedPreferences.getInstance();
    return this;
  }

  String getString(String key) {
    return _pref.getString(key) ?? "";
  }

  Future<bool> setString(String key, String value) async {
    return await _pref.setString(key, value);
  }

  Future<bool> setBool(String key, bool value) async {
    return await _pref.setBool(key, value);
  }

  ///Confirm if it's the first time launching the app on the device
  /// It confirms this by checking if the string has already been saved in the memory
  /// If its the first time, save this String in the storage so the app knows it has been opened
  bool getDeviceFirstOpen() {
    return _pref.getBool(ConstantTexts.STORAGE_DEVICE_OPEN_FIRST_KEY) ?? false;
  }

  // Check if the user has already logged in on the device
  // So that you no longer show the SingIn screen
  bool isLoggedIn() {
    return _pref.getString(ConstantTexts.STORAGE_USER_TOKEN_KEY) != null
        ? true
        : false;
  }
}
