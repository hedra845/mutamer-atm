import 'package:atm_mutamar/colores.dart';
import 'package:atm_mutamar/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:svg_flutter/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  Widget spinkit = const SpinKitRotatingCircle(
    color: AppColors.primaryColor,
    size: 50.0,
  );
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () async {
      // ignore: unnecessary_null_comparison
      const FlutterSecureStorage secureStorage = FlutterSecureStorage();

      // Read the token with the key 'token'
      String? token = await secureStorage.read(key: 'token');
Navigator.pushReplacement(context,
    MaterialPageRoute(builder: (context) =>  LoginScreen()));
        });
  }

  Future getvalidationdata() async {
    final SharedPreferences logined = await SharedPreferences.getInstance();
    // ignore: unused_local_variable
    var obtainedstateLogin = logined.getBool('logined') ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.white,
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/logo_atm.svg.svg",
                width: 150,
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
