import 'package:flutter/material.dart';

class UserForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário de Egresso'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              // final isValid = _formKey.currentState.validate();

              // if (isValid) {
              _formKey.currentState?.save();
              Navigator.of(context).pop();
              // }
            },
          )
        ],
      ),
      body: Form(
        child: SingleChildScrollView(
          reverse: true,
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(6),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    // ignore: unnecessary_const
                    icon: const Icon(Icons.apartment),
                    hintText: 'Selecione a instituição',
                    labelText: 'Nome da Instituição',
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Nome inválido';
                    }
                    if (value.trim().length <= 3) {
                      return 'Nome muito pequeno. No mínimo 3 letras.';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6),
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
                padding: const EdgeInsets.all(6),
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
                padding: const EdgeInsets.all(6),
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
                padding: const EdgeInsets.all(6),
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
                padding: const EdgeInsets.all(6),
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
                padding: const EdgeInsets.all(6),
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
            ],
          ),
        ),
      ),
    );
  }
}
