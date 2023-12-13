import 'package:digital_marketing/di/locator.dart';
import 'package:digital_marketing/presentation/app/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'bloc/auth_bloc.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (context) => AuthBloc(locator.get()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Авторизация'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: BlocConsumer<AuthBloc, AuthState>(
            listener: (_, state) {
              if (state is AuthSuccess) {
                context.pushReplacement(AppRoutes.home.path);
              }
            },
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: 'Enter email',
                      errorText: state is AuthFailure ? state.message : null,
                    ),
                  ),
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      hintText: 'Enter password',
                      errorText: state is AuthFailure ? state.message : null,
                    ),
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => context.read<AuthBloc>().add(
                          AuthLoginPressedEvent(
                            _passwordController.text,
                            _emailController.text,
                          ),
                        ),
                    child: switch (state) {
                      AuthInitial() => const Text('Войти'),
                      AuthLoading() => const CircularProgressIndicator(),
                      AuthSuccess() => const CircularProgressIndicator(),
                      AuthState() => const Text('Войти'),
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
