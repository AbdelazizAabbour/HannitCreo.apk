import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../presentation/screens/splash_screen.dart';
import '../presentation/screens/home_screen.dart';
import '../presentation/screens/login_screen.dart';
import '../presentation/screens/register_screen.dart';
import '../presentation/screens/admin_login_screen.dart';
import '../presentation/screens/user_dashboard_screen.dart';
import '../presentation/screens/admin_dashboard_screen.dart';
import '../presentation/screens/services_screen.dart';
import '../presentation/screens/doctors_screen.dart';
import '../presentation/screens/contact_screen.dart';
import '../presentation/screens/appointment_screen.dart';
import '../presentation/screens/about_screen.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

class AppRoutes {
  static const String splash = '/';
  static const String home = '/home';
  static const String login = '/login';
  static const String register = '/register';
  static const String adminLogin = '/admin-login';
  static const String userDashboard = '/user-dashboard';
  static const String adminDashboard = '/admin-dashboard';
  static const String services = '/services';
  static const String doctors = '/doctors';
  static const String contact = '/contact';
  static const String appointment = '/appointment';
  static const String about = '/about';

  static final router = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: splash,
    routes: [
      GoRoute(path: splash, builder: (context, state) => const SplashScreen()),
      GoRoute(path: home, builder: (context, state) => const HomeScreen()),
      GoRoute(path: login, builder: (context, state) => const LoginScreen()),
      GoRoute(
        path: register,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: adminLogin,
        builder: (context, state) => const AdminLoginScreen(),
      ),
      GoRoute(
        path: userDashboard,
        builder: (context, state) => const UserDashboardScreen(),
      ),
      GoRoute(
        path: adminDashboard,
        builder: (context, state) => const AdminDashboardScreen(),
      ),
      GoRoute(
        path: services,
        builder: (context, state) => const ServicesScreen(),
      ),
      GoRoute(
        path: doctors,
        builder: (context, state) => const DoctorsScreen(),
      ),
      GoRoute(
        path: contact,
        builder: (context, state) => const ContactScreen(),
      ),
      GoRoute(
        path: appointment,
        builder: (context, state) => const AppointmentScreen(),
      ),
      GoRoute(path: about, builder: (context, state) => const AboutScreen()),
    ],
  );
}
