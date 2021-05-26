import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = TextTheme(
      headline1: GoogleFonts.montserrat(
          fontSize: 97, fontWeight: FontWeight.w300, letterSpacing: -1.5),
      headline2: GoogleFonts.montserrat(
          fontSize: 61, fontWeight: FontWeight.w300, letterSpacing: -0.5),
      headline3:
          GoogleFonts.montserrat(fontSize: 48, fontWeight: FontWeight.w400),
      headline4: GoogleFonts.montserrat(
          fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
      headline5:
          GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.w400),
      headline6: GoogleFonts.montserrat(
          fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
      subtitle1: GoogleFonts.montserrat(
          fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
      subtitle2: GoogleFonts.montserrat(
          fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
      bodyText1: GoogleFonts.montserrat(
          fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
      bodyText2: GoogleFonts.montserrat(
          fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
      button: GoogleFonts.montserrat(
          fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
      caption: GoogleFonts.montserrat(
          fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
      overline: GoogleFonts.montserrat(
          fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
    );

    final ColorScheme colorScheme = ColorScheme.light(
      primary: Color(0xFFF0F0F0),
      secondary: Color(0xFF872CC2),
      primaryVariant: Color(0xFF540091),
      secondaryVariant: Color(0xFFBEBEBE),
      onPrimary: Color(0xFF000000),
      onSecondary: Color(0xFFFFFFFF),
      surface: Color(0xFFFFFFFF),
      onSurface: Color(0xFF000000),
      background: Color(0xFFF0F0F0),
      onBackground: Color(0xFF000000),
      error: Color(0xFFF44336),
      onError: Color(0xFFFFFFFF),
      brightness: Brightness.light,
    );

    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''),
        const Locale('hi', ''),
      ],
      theme: ThemeData(
        textTheme: textTheme,
        primaryTextTheme: textTheme,
        colorScheme: colorScheme,
        primaryColor: colorScheme.primary,
        accentColor: colorScheme.secondary,
        backgroundColor: colorScheme.background,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.homePageTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
