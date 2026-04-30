import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/portfolio_model.dart';
import 'screens/onboarding_screen.dart';
import 'screens/home_screen.dart';
import 'screens/create_portfolio_screen.dart';
import 'screens/portfolio_preview_screen.dart';
import 'screens/portfolio_detail_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/qr_share_screen.dart';

void main() {
  runApp(const PortifyApp());
}

class PortifyApp extends StatelessWidget {
  const PortifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PortfolioModel()),
      ],
      child: Consumer<PortfolioModel>(
        builder: (context, model, child) {
          return MaterialApp(
            title: 'Portify',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              brightness: Brightness.light,
              primaryColor: Colors.blue,
              scaffoldBackgroundColor: Colors.grey.shade50,
              useMaterial3: true,
              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.blue,
                brightness: Brightness.light,
              ),
              appBarTheme: const AppBarTheme(
                elevation: 0,
                centerTitle: true,
                backgroundColor: Colors.white,
                foregroundColor: Colors.black87,
                titleTextStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              inputDecorationTheme: InputDecorationTheme(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.grey.shade200),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.blue, width: 2),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              primaryColor: Colors.blue,
              scaffoldBackgroundColor: Colors.grey.shade900,
              useMaterial3: true,
              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.blue,
                brightness: Brightness.dark,
              ),
              appBarTheme: const AppBarTheme(
                elevation: 0,
                centerTitle: true,
                backgroundColor: Color(0xFF1E1E1E),
                foregroundColor: Colors.white,
              ),
              inputDecorationTheme: InputDecorationTheme(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.grey.shade200),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.blue, width: 2),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
              ),
            ),
            themeMode: ThemeMode.system,
            initialRoute: '/',
            routes: {
              '/': (context) => const OnboardingScreen(),
              '/home': (context) => const HomeScreen(),
              '/create': (context) => const CreatePortfolioScreen(),
              '/settings': (context) => const SettingsScreen(),
            },
            onGenerateRoute: (settings) {
              if (settings.name == '/preview') {
                final portfolio = settings.arguments as Portfolio;
                return MaterialPageRoute(
                  builder: (context) =>
                      PortfolioPreviewScreen(portfolio: portfolio),
                );
              }
              if (settings.name == '/detail') {
                final portfolio = settings.arguments as Portfolio;
                return MaterialPageRoute(
                  builder: (context) =>
                      PortfolioDetailScreen(portfolio: portfolio),
                );
              }
              if (settings.name == '/qr-share') {
                final portfolio = settings.arguments as Portfolio;
                return MaterialPageRoute(
                  builder: (context) => QRShareScreen(portfolio: portfolio),
                );
              }
              return null;
            },
          );
        },
      ),
    );
  }
}
