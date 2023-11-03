import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class MarcForm1 extends StatefulWidget {
  const MarcForm1({Key? key}) : super(key: key);
  @override
  State<MarcForm1> createState() => _MarcForm1();
}

class _MarcForm1 extends State<MarcForm1> {
  final _formKey = GlobalKey<FormBuilderState>();
  int? option;
  TextEditingController textController = TextEditingController();
  List<String> dropdownItems = ['Opcion1', 'Opcion2', 'Opcion3', 'Opcion4'];
  String? selectedDropdownValue;
  List<String> selectedCheckboxes = [];
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Marc Vega Gironell',
            style: TextStyle(
              fontSize: 24.0,  
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Práctica Formulario 1',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 20.0),  // Espacio entre el título y la descripción
          FormBuilder(
            key: _formKey,
            child: Column(
              children: [
                FormBuilderRadioGroup<int>(
                  name: 'radio_group_name',
                  options: const [
                    FormBuilderFieldOption(value: 1),
                    FormBuilderFieldOption(value: 2),
                    FormBuilderFieldOption(value: 3),
                  ],
                  decoration: const InputDecoration(labelText: 'Radio Buttons'),
                  orientation: OptionsOrientation.vertical,
                ),
                const SizedBox(height: 10.0),  
                FormBuilderTextField(
                  name: 'text_field_name',
                  controller: textController, 
                  decoration: const InputDecoration(labelText: 'Escribir algo aqui, ejemplo:'),
                ),
                FormBuilderDropdown<String>(
                    name: 'dropdown_name',
                    items: dropdownItems
                        .map(
                          (item) => DropdownMenuItem(
                            value: item,
                            child: Text(item),
                          ),
                        )
                        .toList(),
                    decoration: const InputDecoration(labelText: 'Seleccionar opciones:'),
                    onChanged: (value) {
                      setState(() {
                        selectedDropdownValue = value;
                      });
                    },
                  ),
                  const SizedBox(height: 20.0),
                const Text(
                  'Velocidad marcada del coche:',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                FormBuilderCheckboxGroup(
                  name: 'checkbox_group_name',
                  options: const [
                    FormBuilderFieldOption(value: '100 km/h'),
                    FormBuilderFieldOption(value: '110 km/h'),
                    FormBuilderFieldOption(value: '150 km/h'),
                    FormBuilderFieldOption(value: '190 km/h'),
                  ],
                  orientation: OptionsOrientation.vertical,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}