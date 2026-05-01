import 'package:shared_preferences/shared_preferences.dart';

class ApiService {
  // SharedPreferences (Key-Value storage)
  Future<void> saveUserName(String name) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('user_name', name);
  }

  Future<String> getUserName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('user_name') ?? 'User';
  }

  Future<void> saveThemePreference(bool isDarkMode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('dark_mode', isDarkMode);
  }

  Future<bool> getThemePreference() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('dark_mode') ?? false;
  }

  // Simple mock quote - NO API call
  Map<String, dynamic> getDailyQuote() {
    return {
      'quote': 'Build something amazing today!',
      'author': 'Portify',
    };
  }

  // Mock method for random quote (no network)
  static Future<Map<String, dynamic>> getRandomQuote() async {
    // Simulate a small delay for realistic effect
    await Future.delayed(const Duration(milliseconds: 500));

    final List<Map<String, dynamic>> mockQuotes = [
      {'quote': 'Build something amazing today!', 'author': 'Portify'},
      {
        'quote': 'Creativity is intelligence having fun.',
        'author': 'Albert Einstein'
      },
      {
        'quote': 'The only way to do great work is to love what you do.',
        'author': 'Steve Jobs'
      },
      {
        'quote':
            'Design is not just what it looks like, design is how it works.',
        'author': 'Steve Jobs'
      },
      {
        'quote': 'Code is like humor. When you have to explain it, it\'s bad.',
        'author': 'Cory House'
      },
    ];

    final randomIndex =
        DateTime.now().millisecondsSinceEpoch % mockQuotes.length;
    return mockQuotes[randomIndex];
  }
}

