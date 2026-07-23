import 'dart:async';

import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'services/tg_client_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const _App());
}

final class _App extends StatefulWidget {
  const _App();

  @override
  State<_App> createState() => _AppState();
}

class _AppState extends State<_App> {
  StreamSubscription<AuthState>? _authSub;
  AuthState _state = AuthState.uninitialized;

  @override
  void initState() {
    super.initState();
    _authSub = TgClientService.instance.authStateStream.listen((state) {
      if (mounted) setState(() => _state = state);
    });
  }

  @override
  void dispose() {
    _authSub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TG Music Player',
      debugShowCheckedModeBanner: false,
      home: _state == AuthState.ready ? const HomeScreen() : const LoginScreen(),
    );
  }
}
