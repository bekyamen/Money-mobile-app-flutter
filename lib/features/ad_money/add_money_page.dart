mport 'package:flutter/material.dart';
import 'package:money_transfer_app/core/constants/app_constants.dart';
class AddMoneyPage extends StatelessWidget {
  const AddMoneyPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Money'), ), body: ListView.builder(
      padding: const EdgeInsets.all(16), itemCount: AppConstants.addMoneyOptions.length, itemBuilder: (context, index) {
      final option = AppConstants.addMoneyOptions[index];
      return Card(
        child: ListTile(
          title: Text(option), trailing: const Icon(Icons.chevron_right), onTap: () {
          if (option == 'Receive from Abroad') {
            Navigator.push(

              context, MaterialPageRoute(
              builder: (context) => const ReceiveFromAbroadPage(), ), );
          }
        }, ), );
    }, ), );
  }
}
class ReceiveFromAbroadPage extends StatelessWidget {
  const ReceiveFromAbroadPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Receive from Abroad'), ), body: const Center(
      child: Text('Receive from Abroad Screen'), ),floatingActionButton: FloatingActionButton(
      onPressed: () => Navigator.pop(context), child: const Icon(Icons.home), ), );
  }
}