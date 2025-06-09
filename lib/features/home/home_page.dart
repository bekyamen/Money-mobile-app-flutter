import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_transfer_app/core/constants/app_constants.dart';
import 'package:money_transfer_app/core/theme/app_theme.dart';
import
'package:money_transfer_app/features/add_money/presentation/pages/add_money_page.dart';
import
'package:money_transfer_app/features/bank_transfer/presentation/pages/bank_transfer_page. dart';
import 'package:money_transfer_app/features/home/presentation/cubit/theme_cubit.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.appName),


        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_6), onPressed: () => context.read<ThemeCubit>().toggleTheme(), ), ], ), body: Padding(
      padding: const EdgeInsets.all(16.0), child: Column(
      mainAxisAlignment: MainAxisAlignment.center, children: [ _buildActionCard(
      context, icon: Icons.add, title: 'Add Money', onTap: () => Navigator.push(
      context, MaterialPageRoute(builder: (context) => const AddMoneyPage()), ), ), const SizedBox(height: 20), _buildActionCard(
      context, icon: Icons.account_balance,

      title: 'Send to Bank', onTap: () => Navigator.push(
      context, MaterialPageRoute(builder: (context) => const BankTransferPage()), ), ), ], ), ), );
  }
  Widget _buildActionCard(
      BuildContext context, {
        required IconData icon, required String title, required VoidCallback onTap, }) {
    return Card(
      elevation: 4, shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12), ), child: InkWell(
      borderRadius: BorderRadius.circular(12),

      onTap: onTap, child: Padding(
      padding: const EdgeInsets.all(24.0), child: Row(
      children: [
        Icon(icon, size: 40, color: Theme.of(context).primaryColor), const SizedBox(width: 16), Text(
          title, style: const TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold, ), ), const Spacer(), const Icon(Icons.chevron_right, size: 30), ], ), ), ), );
  }
}