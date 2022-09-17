// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Perfil';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
          centerTitle: true,
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class, which holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
          reverse: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    // ignore: unnecessary_const
                    icon: const Icon(Icons.apartment),
                    hintText: 'Selecione a instituição',
                    labelText: 'Nome da Instituição',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    // ignore: unnecessary_const
                    icon: const Icon(Icons.school),
                    hintText: 'Entre com seu nome curso',
                    labelText: 'Nome do Curso',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    icon: const Icon(Icons.calendar_today),
                    hintText: 'Sua data de Entrada',
                    labelText: 'Ano / Semestre de Entrada',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Por favor digite uma data válida!';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    icon: const Icon(Icons.calendar_today),
                    hintText: 'Sua data de Saída',
                    labelText: 'Ano / Semestre de Saída',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Por favor digite uma data válida!';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    icon: const Icon(Icons.flag),
                    hintText: 'Selecione o País',
                    labelText: 'País',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Por favor selecione um país';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    icon: const Icon(Icons.location_city),
                    hintText: 'Digite o nome da Cidade',
                    labelText: 'Cidade',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Por favor digite uma cidade';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    icon: const Icon(Icons.location_city),
                    hintText: 'Digite o seu Estado',
                    labelText: 'UF de residêncial Atual',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Por favor digite seu estado';
                    }
                    return null;
                  },
                ),
              ),
              new Container(
                  padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                  // ignore: unnecessary_new
                  child: new RaisedButton(
                    child: const Text('Cadastrar'),
                    onPressed: () {
                      // It returns true if the form is valid, otherwise returns false
                      /*        if (_formKey.currentState.validate()) {
                              // If the form is valid, display a Snackbar.
                              Scaffold.of(context).showSnackBar(
                                  SnackBar(content: Text('Data is in processing.')));
                            }*/
                    },
                  )),
            ],
          )),
    );
  }
}
