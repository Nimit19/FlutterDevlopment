import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './adaptive_flat_button.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  // late String amountInput;
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  var _selectedDate;

  void _submitData() {
    final String enterTiltle = _titleController.text;
    final num enterAmount = num.parse(_amountController.text);

    if (enterTiltle.isEmpty || enterAmount <= 0 || _selectedDate == null) {
      return;
    }

    widget.addTx(enterTiltle, enterAmount, _selectedDate);

    Navigator.of(context).pop();
  }

  void _presentDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(DateTime.now().year - 1),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }

      setState(() {
        _selectedDate = pickedDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.purple.shade50,
        padding: EdgeInsets.only(
            left: 10,
            right: 10,
            top: 10,
            bottom: MediaQuery.of(context).viewInsets.bottom + 25),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          TextField(
            decoration: const InputDecoration(
              labelText: "Title",
            ),
            controller: _titleController,
            onSubmitted: (_) =>
                _submitData(), // _ it is a convention to define that variable not needed.
            // onChanged: (val) => {titleInput = val},
          ),
          TextField(
            decoration: const InputDecoration(
              labelText: "Amount",
            ),
            controller: _amountController,
            keyboardType: TextInputType.number,
            onSubmitted: (_) => _submitData(),
            // onChanged: (val) => {amountInput = val},
          ),
          Container(
            height: 70,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    _selectedDate == null
                        ? "No Date Chosen!"
                        : "Picked Date: ${DateFormat.yMMMd().format(_selectedDate)}",
                  ),
                ),
                AdaptiveFlatButton("Chooese Date", _presentDatePicker)
              ],
            ),
          ),
          ElevatedButton(
            onPressed: _submitData,
            child: const Text(
              "Add Transaction",
            ),
          ),
        ]),
      ),
    );
  }
}
