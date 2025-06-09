import 'package:flutter/material.dart';

class BankTransferCubit {
  final formKey = GlobalKey<FormState>();
  String bankName = '';
  String accountNumber = '';
  String amount = '';
  String description = '';
}