import 'package:flutter/material.dart';
import 'package:learn2/models/person.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AddForm> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  int _age = 15;
  Series _series = Series.gundam;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My title',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Form Application"),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    maxLength: 20,
                    decoration: const InputDecoration(
                        label: Text("Name:", style: TextStyle(fontSize: 20))),
                    onSaved: (value) {
                      _name = value!;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Fill value";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      keyboardType: TextInputType.number,
                      maxLength: 20,
                      decoration: const InputDecoration(
                          label: Text("Age:", style: TextStyle(fontSize: 20))),
                      onSaved: (value) {
                        _age = int.parse(value.toString());
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Fill age";
                        }
                        return null;
                      }),
                  DropdownButtonFormField(
                      value: _series,
                      items: Series.values.map((key) {
                        return DropdownMenuItem(
                            value: key, child: Text(key.title));
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _series = value!;
                        });
                      }),
                  FilledButton(
                      onPressed: () {
                        _formKey.currentState!.validate();
                        _formKey.currentState!.save();
                        data.add(Pilot(
                            name: _name,
                            age: _age,
                            job: 'Pilot',
                            series: _series,
                            img: ''));
                        _formKey.currentState!.reset();
                      },
                      child: const Text(
                        'Submit',
                        style: TextStyle(fontSize: 20),
                      ))
                ],
              )),
        ),
      ),
    );
  }
}
