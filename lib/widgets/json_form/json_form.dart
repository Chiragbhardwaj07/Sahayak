import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class JsonForm extends StatefulWidget {
  final List<Map<String, dynamic>> fields;

  JsonForm({required this.fields});

  @override
  _JsonFormState createState() => _JsonFormState();
}

class _JsonFormState extends State<JsonForm> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          // height: 400,
          width: 200,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12))),
            child: ListView(
                shrinkWrap: true,
                children: widget.fields.map((field) {
                  final fieldName = field['field_name'];
                  final placeHolder = field['place_holder'];

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 40,
                      child: FormBuilderTextField(
                        name: fieldName,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: placeHolder,
                            labelStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                  );
                }).toList()),
          ),
        ),
      ),
    );
  }
}
