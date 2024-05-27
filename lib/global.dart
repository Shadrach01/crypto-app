// This is where you make sure all the depencies have been initialized
import 'package:crypto_app/common/services/storage.dart';
import 'package:crypto_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';

class Global {
  static late StorageService storageService;
  static Future init() async {
    // Ensure all dependencies have been initialized
    WidgetsFlutterBinding.ensureInitialized();

    // initialize Firebase
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);

    storageService = await StorageService().init();
  }
}
