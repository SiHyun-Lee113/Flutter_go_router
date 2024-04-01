import 'package:go_router/go_router.dart';
import 'package:go_router_v7/route/1_basic_screen.dart';
import 'package:go_router_v7/screens/root_screen.dart';

// https://blog.test.com/ -> / -> path
// https://blog.test.com/flutter -> flutter
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return RootScreen();
      },
      routes: [
        GoRoute(
          path: 'basic',
          builder: (context, state) {
            return BasicScreen();
          },
        ),
      ],
    ),
  ],
);
