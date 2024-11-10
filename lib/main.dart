import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testprayertime/Providers/prayertime_provider.dart';
import 'package:testprayertime/Screens/prayertime_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home:ChangeNotifierProvider(
          create: (context) => PrayertimeProvider(),
        child: PrayertimeScreen(),
      ) ,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
