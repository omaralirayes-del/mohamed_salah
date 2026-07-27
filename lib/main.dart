import 'package:flutter/material.dart';
import 'package:mohamed_salah/front.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// أضف هذا السطر في دالة main() قبل runApp() لمنع الأخطاء أثناء التطوير
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GoogleFonts.config.allowRuntimeFetching = true; // أو false إذا قمت بإضافة الخط يدويًا في المجلدات
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  State<MyApp> createState() => _myapp();
}

class _myapp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
  // 1. تحديد لغة التطبيق إلى العربية
  locale: const Locale('ar'), 
  
  // 2. إضافة دعم محاذاة RTL والترجمة
  localizationsDelegates: const [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: const [
    Locale('ar'), // العربية
  ],
  theme: ThemeData(
    // تطبيق خط Cairo على كل التطبيق
    textTheme: GoogleFonts.cairoTextTheme(
      Theme.of(context).textTheme,
    ),
  ),
      home: front(),

    );
  }
}
