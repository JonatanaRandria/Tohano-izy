import 'package:flutter/material.dart';
import 'package:zara_ao/features/data/model/FormField.dart';

class MyForm extends StatefulWidget {
  final List<FormFieldData> fields;
  final Function(Map<String, String>) onSubmit;

  MyForm({required this.fields, required this.onSubmit});

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  final Map<String, String> _formData = {};

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(16.0),
       child:  Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var field in widget.fields)
            TextFormField(
              decoration: InputDecoration(
                labelText: field.label,
                hintText: field.hint,
              ),
              obscureText: field.obscureText,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your ${field.label}';
                }
                return null;
              },
              onSaved: (value) {
                _formData[field.key] = value!;
              },
            ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                widget.onSubmit(_formData); // Pass form data to onSubmit callback
                _formKey.currentState!.reset();
              }
            },
            child: Text('Submit'),
          ),
        ],
      ),
    ));
  }

    
}