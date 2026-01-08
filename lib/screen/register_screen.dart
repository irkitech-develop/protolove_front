import 'package:flutter/material.dart';
import 'package:protolove_front/widgets/widgets.dart';
import 'package:protolove_front/utils/app_messages.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  final supabase = Supabase.instance.client;
  bool isLoading = false;

  Future<void> _register() async {
    if (_emailController.text.isEmpty ||
        _passwordController.text.isEmpty ||
        _confirmPasswordController.text.isEmpty) {
      AppMessages.info(context, 'Completa todos los campos ✍️');
      return;
    }

    if (_passwordController.text != _confirmPasswordController.text) {
      AppMessages.error(context, 'Las contraseñas no coinciden 🔐');
      return;
    }

    if (_passwordController.text.length < 6) {
      AppMessages.info(
        context,
        'La contraseña debe tener al menos 6 caracteres 🔒',
      );
      return;
    }

    setState(() => isLoading = true);

    try {
      final response = await supabase.auth.signUp(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );

      if (response.user != null && mounted) {
        AppMessages.success(
          context,
          'Cuenta creada 🎉\nRevisa tu correo para confirmar 💌',
        );

        Navigator.pop(context); // vuelve al login
      }
    } on AuthException catch (e) {
      if (e.message.contains('already registered')) {
        AppMessages.error(context, 'Este correo ya está registrado 📧');
      } else {
        AppMessages.error(context, 'No pudimos crear la cuenta 😕');
      }
    } catch (_) {
      AppMessages.error(context, 'Error inesperado ⚠️\nInténtalo más tarde.');
    } finally {
      if (mounted) setState(() => isLoading = false);
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// HEADER
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Crear cuenta',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 8),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Empieza tu historia en Protolove 💕',
                  style: TextStyle(color: Colors.black54),
                ),
              ),

              const SizedBox(height: 30),

              /// EMAIL
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  hintText: 'Correo electrónico',
                  prefixIcon: Icon(Icons.email_outlined),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              /// PASSWORD
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Contraseña',
                  prefixIcon: Icon(Icons.lock_outline),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              /// CONFIRM PASSWORD
              TextField(
                controller: _confirmPasswordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Confirmar contraseña',
                  prefixIcon: Icon(Icons.lock_reset_outlined),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 24),

              /// REGISTER BUTTON
              PrimaryButton(
                text: isLoading ? 'Creando cuenta...' : 'Registrar',
                onPressed: isLoading ? null : _register,
              ),

              const SizedBox(height: 20),

              /// BACK TO LOGIN
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('¿Ya tienes cuenta? Inicia sesión'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
