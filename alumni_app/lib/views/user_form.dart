import 'package:alumni_app/models/user.dart';
import 'package:alumni_app/provider/users.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserForm extends StatefulWidget {
  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  final _formKey = GlobalKey<FormState>();

  final Map<String, String> _formData = {};

//obter
  void _loadFormData(User? user) {
    if (user != null) {
      _formData['id'] = user.id;
      _formData['nome'] = user.nome;
      _formData['nomeCurso'] = user.nomeCurso;
      _formData['anoEntrada'] = user.anoEntrada;
      _formData['anoSaida'] = user.anoSaida;
      _formData['pais'] = user.pais;
      _formData['cidade'] = user.cidade;
      _formData['uf'] = user.uf;
      _formData['avatarUrl'] = user.avatarUrl;
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final user = ModalRoute.of(context)?.settings.arguments as User?;
    _loadFormData(user);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulário de Egresso'),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.save),
              onPressed: () {
                final isValid = _formKey.currentState?.validate() ?? false;
                if (isValid) {
                  _formKey.currentState?.save();
                  // provider não notificado
                  Provider.of<Users>(context, listen: false).put(
                    User(
                      id: _formData['id'] ?? "null",
                      nome: _formData['nome'] ?? "null",
                      nomeCurso: _formData['nomeCurso'] ?? "null",
                      anoEntrada: _formData['anoEntrada'] ?? "null",
                      anoSaida: _formData['anoSaida'] ?? "null",
                      pais: _formData['pais'] ?? "null",
                      cidade: _formData['cidade'] ?? "null",
                      uf: _formData['uf'] ?? "null",
                      avatarUrl: _formData['avatarUrl'] ?? "null",
                    ),
                  );

                  Navigator.of(context).pop();
                }
              })
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
                  //valor inicial associado ao textformfield aponta para formData
                  initialValue: _formData['nome'],

                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    // ignore: unnecessary_const
                    icon: const Icon(Icons.apartment),
                    hintText: 'Digite o nome da instituição',
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
                  onSaved: (value) => _formData['nome'] = value!,
                ),
                TextFormField(
                  initialValue: _formData['nomeCurso'],
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    // ignore: unnecessary_const
                    icon: const Icon(Icons.school),
                    hintText: 'Entre com o nome do curso',
                    labelText: 'Nome do Curso',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Por favor digite nome do Curso';
                    }
                    return null;
                  },
                  onSaved: (value) => _formData['nomeCurso'] = value!,
                ),
                TextFormField(
                  initialValue: _formData['anoEntrada'],
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.calendar_today),
                    hintText: 'Sua data de Entrada',
                    labelText: 'Ano / Semestre de Entrada',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Por favor digite uma data válida!';
                    }
                    return null;
                  },
                  onSaved: (value) => _formData['anoEntrada'] = value!,
                ),
                TextFormField(
                  initialValue: _formData['anoSaida'],
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.calendar_today),
                    hintText: 'Sua data de Saída',
                    labelText: 'Ano / Semestre de Saída',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Por favor digite uma data válida!';
                    }
                    return null;
                  },
                  onSaved: (value) => _formData['anoSaida'] = value!,
                ),
                TextFormField(
                  initialValue: _formData['pais'],
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.flag),
                    hintText: 'Selecione o País',
                    labelText: 'País',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Por favor digite um país';
                    }
                    return null;
                  },
                  onSaved: (value) => _formData['pais'] = value!,
                ),
                TextFormField(
                  initialValue: _formData['cidade'],
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.location_city),
                    hintText: 'Digite o nome da Cidade',
                    labelText: 'Cidade',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Por favor digite o nome de sua cidade';
                    }
                    return null;
                  },
                  onSaved: (value) => _formData['cidade'] = value!,
                ),
                TextFormField(
                  initialValue: _formData['uf'],
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.location_city),
                    hintText: 'Digite o seu Estado',
                    labelText: 'UF de residêncial Atual',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Por favor digite seu estado';
                    }
                    return null;
                  },
                  onSaved: (value) => _formData['uf'] = value!,
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
