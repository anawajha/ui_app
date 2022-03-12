import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _notifications = false;
  String _selectedRadio = 'M';
  int? _lang;
  final List<bool> _checkBoxValues = <bool>[false, false, false];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            value: _notifications,
            onChanged: (value) {
              setState(() {
                _notifications = value;
              });
            },
            title: const Text('Notifications'),
            subtitle:
                const Text('Receive notification when app is not running'),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text('Gender'),
          RadioListTile<String>(
              title: const Text('Male'),
              value: 'M',
              groupValue: _selectedRadio,
              onChanged: (String? value) {
                setState(() {
                  _selectedRadio = value ?? 'M';
                });
              }),
          RadioListTile<String>(
              title: const Text('Female'),
              value: 'F',
              groupValue: _selectedRadio,
              onChanged: (value) {
                setState(() {
                  _selectedRadio = value ?? 'F';
                });
              }),
          const SizedBox(
            height: 20,
          ),
          ListView.builder(
            shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _checkBoxValues.length,
              itemBuilder: (context, index) => CheckboxListTile(
                title: const Text('Checkbox'),
                  value: _checkBoxValues[index],
                  onChanged: (value) {
                    setState(() {
                      _checkBoxValues[index] = value ?? false;
                    });
                  }),),
          const SizedBox(
            height: 20,
          ),
          DropdownButton<int>(
            isExpanded: true,
            value: _lang,
            hint: const Text('Select language'),
            items: const [
              DropdownMenuItem(
                child: Text('Arabic'),
                value: 0,
              ),
              DropdownMenuItem(
                child: Text('English'),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text('Germany'),
                value: 2,
              ),
              DropdownMenuItem(
                child: Text('Spanish'),
                value: 3,
              ),
              DropdownMenuItem(
                child: Text('Chinese'),
                value: 4,
              ),
            ],
            onChanged: (value) {
              setState(() {
                _lang = value;
              });
            },
          ),
          const SizedBox(
            height: 40,
          ),
          Wrap(
            spacing: 8,
            children: [
              InputChip(
                label: const Text('Recent'),
                deleteIcon: const Icon(
                  Icons.close,
                  size: 16,
                ),
                deleteIconColor: Colors.white,
                onDeleted: () {},
              ),
              InputChip(
                label: const Text('Cars'),
                deleteIcon: const Icon(
                  Icons.close,
                  size: 16,
                ),
                deleteIconColor: Colors.white,
                onDeleted: () {},
              ),
              InputChip(
                label: const Text('Fashion'),
                deleteIcon: const Icon(
                  Icons.close,
                  size: 16,
                ),
                deleteIconColor: Colors.white,
                onDeleted: () {},
              ),
              InputChip(
                label: const Text('Healthy foods'),
                deleteIcon: const Icon(
                  Icons.close,
                  size: 16,
                ),
                deleteIconColor: Colors.white,
                onDeleted: () {},
              ),
              InputChip(
                label: const Text('Books'),
                deleteIcon: const Icon(
                  Icons.close,
                  size: 16,
                ),
                deleteIconColor: Colors.white,
                onDeleted: () {},
              ),
              InputChip(
                label: const Text('Make ups'),
                deleteIcon: const Icon(
                  Icons.close,
                  size: 16,
                ),
                deleteIconColor: Colors.white,
                onDeleted: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
