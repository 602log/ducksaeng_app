import 'package:ducksaeng_app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  // 앱 실행 전 프레임워크 초기화
  WidgetsFlutterBinding.ensureInitialized();
  // 화면 회전 방지
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      // debug banner
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontFamily: GoogleFonts.kodeMono().fontFamily,
            color: Colors.black,
            fontSize: 24,
          ),
          bodyMedium: TextStyle(
            fontFamily: GoogleFonts.ibmPlexSansKr().fontFamily,
            fontSize: 13,
            color: Colors.black,
            fontWeight: FontWeight.w400,

          ),

        )


      ),
    );
  }
}
