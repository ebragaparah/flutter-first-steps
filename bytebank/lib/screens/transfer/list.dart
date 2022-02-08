import 'package:flutter/material.dart';
import 'package:bytebank/models/transfer.dart';
import 'package:bytebank/screens/transfer/form.dart';

class TransferList extends StatefulWidget {
  final List<Transfer> _allTransfers = [];

  @override
  State<StatefulWidget> createState() => TransferListState();
}

class TransferListState extends State<TransferList> {
  final _appBarTitle = "Transferências";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
      ),
      body: ListView.builder(
        itemCount: widget._allTransfers.length,
        itemBuilder: (context, index) {
          final transfer = widget._allTransfers[index];
          return TransferItem(transfer);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _loadTransferForm(context),
        child: Icon(Icons.add),
      ),
    );
  }

  void _loadTransferForm(context) {
    final Future future = Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TransferForm())
    );

    future.then((receivedTransfer) {
      _updateTransfersList(receivedTransfer);
    });
  }

  void _updateTransfersList(receivedTransfer) {
    debugPrint("$receivedTransfer"); // keep it
    if (receivedTransfer != null) {
      setState(() {
        widget._allTransfers.add(receivedTransfer);
      });
    }
  }
}

class TransferItem extends StatelessWidget {
  final Transfer _transfer;

  TransferItem(this._transfer);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transfer.value.toString()),
        subtitle: Text(_transfer.accountNumber.toString()),
      ),
    );
  }
}