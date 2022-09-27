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
              final isValid = _formKey.currentState?.validate() ?? false;
              if (isValid) {
                _formKey.currentState?.save();
                Navigator.of(context).pop();
              }
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    // ignore: unnecessary_const
                    icon: const Icon(Icons.apartment),
                    hintText: 'Selecione a instituição',
                    labelText: 'Nome da Instituição',
                  ),
                  validator: (value) {
                    return 'ocorreu um erro';
                  },
                  onSaved: (value) {
                    print(value);
                  },
                  // validator: (value) {
                  //   if (value == null || value.trim().isEmpty) {
                  //     return 'Nome inválido';
                  //   }
                  //   if (value.trim().length <= 3) {
                  //     return 'Nome muito pequeno. No mínimo 3 letras.';
                  //   }
                  //   return null;
                  // },
                ),
                TextFormField(
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
                TextFormField(
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
                TextFormField(
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
                TextFormField(
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
                TextFormField(
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
                TextFormField(
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
              ]
                  .map((e) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        child: e,
                      ))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
