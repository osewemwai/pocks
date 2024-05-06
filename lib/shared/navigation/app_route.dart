import 'package:go_router/go_router.dart';
import 'package:pocks/presentation/screens/home.dart';
import 'package:pocks/presentation/screens/login.dart';
import 'package:pocks/presentation/screens/registration.dart';
import 'package:pocks/presentation/screens/search.dart';

final appRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
    GoRoute(path: '/search', builder: (context, state) => const Search()),
    GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
    GoRoute(path: '/register', builder: (context, state) => const Registration())  
  ]
);