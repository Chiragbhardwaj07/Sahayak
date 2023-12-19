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
      child: Column(
          children: widget.fields.map((field) {
        final fieldName = field['field_name'];
        final placeHolder = field['place_holder'];

        return FormBuilderTextField(
          name: fieldName,
          decoration: InputDecoration(labelText: placeHolder),
        );
      }).toList()),
    );
  }
}
