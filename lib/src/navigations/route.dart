part of 'navigation.dart';

class Routes {
  static const String welcomeScreen = '/';
  static const String homeScreen = '/home_screen';
  static const String homeFragment = '/home_fragment';
  static const String ticketFragment = '/ticket__fragment';
  static const String historyFragment = '/history_fragment';
  static const String profileFragment = '/profile_fragment';


  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcomeScreen:
        return MaterialPageRoute(
          builder: (_) => const WelcomeScreen(),
          settings: settings,
        );
      case homeFragment:
        return MaterialPageRoute(
          builder: (_) => const HomeFragment(),
          settings: settings,
        );
      case ticketFragment:
        return MaterialPageRoute(
          builder: (_) => const TicketFragment(),
          settings: settings,
        );
      case historyFragment:
        return MaterialPageRoute(
          builder: (_) => const HistoryFragment(),
          settings: settings,
        );
      case homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
          settings: settings,
        );
      case profileFragment:
        return MaterialPageRoute(
          builder: (_) => const ProfileFragment(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined ${settings.name}'),
            ),
          ),
          settings: settings,
        );
    }
  }
}

void navigateAndRemoveUntil(BuildContext context, String newRouteName) {
  Navigator.pushNamedAndRemoveUntil(
    context,
    newRouteName,
    (Route<dynamic> route) => false,
  );
}