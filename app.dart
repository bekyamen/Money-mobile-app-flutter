import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_transfer_app/core/theme/app_theme.dart';
import 'package:money_transfer_app/features/home/presentation/cubit/theme_cubit.dart';
import 'package:money_transfer_app/features/home/presentation/pages/home_page.dart';

class MoneyTransferApp extends StatelessWidget {
  const MoneyTransferApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit()..loadTheme(),
      child: BlocBuilder<ThemeCubit, bool>(
        builder: (context, isDark) {
          return MaterialApp(
            title: 'Money Transfer',
            theme: isDark ? AppTheme.darkTheme : AppTheme.lightTheme,
            home: const HomePage(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
