import 'package:flutter/material.dart';
import 'package:zara_ao/features/presentation/widgets/form.dart';

import '../../data/model/FormField.dart';


class ShowModal extends StatelessWidget {
  const ShowModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50.0),
      child: ElevatedButton(
        child:  const Icon(Icons.add, color: Colors.deepOrange, size: 28),
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                height: 500,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyForm(
                      fields: [
                      FormFieldData(label: 'Name', key: 'name', hint: 'Enter your name'),
                      FormFieldData(label: 'Email', key: 'email', hint: 'Enter your email'),
                      FormFieldData(label: 'Password', key: 'password', hint: 'Enter your password', obscureText: true),
            ]
                      , 
                      onSubmit: (formData) {
              // Handle form submission here
                    print('Form submitted with data:');
                  formData.forEach((key, value) {
                    print('$key: $value');
              });
            },)
                    ],
                  ),
                ),
              );
            },
          );
        },
      )
      );
  }
}