import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/config/theme/app_theme.dart';
import 'package:flutter_application_1/presentation/screens/chat/chat_screen.dart';
import 'package:flutter_application_1/presentation/state-provider/chat_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ChatProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Yes or Not app',
        theme: AppTheme(isDarkMode: false, selectedColor: 6).getTheme(),
        home: const ChatScreen(),
      ),
    );
  }
}
