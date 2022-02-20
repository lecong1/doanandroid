import 'package:doan/pages/bill.dart';
import 'package:doan/pages/home_page.dart';
import 'package:doan/pages/Personal.dart';
import 'package:doan/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'constants.dart';
import './screens/screen.dart';
import 'package:doan/Provider/ProviderSanpham.dart';
import 'package:doan/Provider/ProviderAccount.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductProvider()),
        ChangeNotifierProvider(create: (_) => ProviderAccount()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Shop Shoes',
          theme: ThemeData(
            textTheme:
                GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
            scaffoldBackgroundColor: kBackgroundColor,
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: WelcomePage()),
    );
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    //   home: Account(),
    //   debugShowCheckedModeBanner: false,
    // );
  }
}
