import 'package:flutter/material.dart';
import 'package:bytebank/models/transfer.dart';
import 'package:bytebank/components/editor.dart';

class TransferForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TransferFormState();
}

class TransferFormState extends State<TransferForm> {
  final _appBarTitle = "Criando transferências";

  final _labelAccountValueField = "Valor";
  final _hintAccountValueField = "0000";

  final _labelAccountNumberField = "Número da conta";
  final _hintAccountNumberField = "0.00";

  final _labelConfirmButton = "Confirmar";

  final TextEditingController _valueController = TextEditingController();
  final TextEditingController _accountNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_appBarTitle),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Editor(
                controller: _accountNumberController,
                label: _labelAccountNumberField,
                hint: _hintAccountValueField,
            ),
            Editor(
                controller: _valueController,
                label: _labelAccountValueField,
                hint: _hintAccountNumberField,
                icon: Icons.monetization_on,
            ),
            ElevatedButton(
              onPressed: () => _createTransfer(context),
              child: Text(_labelConfirmButton),
            )
          ],
        ),
      ),
    );
  }

  void _createTransfer(BuildContext context) {
    final int? accountNumber = int.tryParse(_accountNumberController.text);
    final double? value = double.tryParse(_valueController.text);

    if (accountNumber != null && value != null) {
      final createdTransfer = Transfer(value, accountNumber);
      Navigator.pop(context, createdTransfer);
    }
  }
}