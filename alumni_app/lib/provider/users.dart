import 'dart:math';

import 'package:alumni_app/data/dummy_users.dart';
import 'package:alumni_app/models/user.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

//padrão de projeto - change notifier implementa o Observer desing p.
class Users with ChangeNotifier {
  //
  final Map<String, User> _items = {...dummyUsers};

  //clone da lista items de MAP, sempre retorna
  //o clone se houver alteração só será incluido quando o método add for chamado
  List<User> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  //método, retorna o id pelo index pelo provider
  User byIndex(int i) {
    return _items.values.elementAt(i);
  }

  //método, insere novo elemento se não existir no map, e alterar se existir com base na chave
  void put(User user) {
    //validação se o user não for nulo
    // ignore: unnecessary_null_comparison
    if (user == null) {
      return;
    }
    //id diferente de nulo ou não vazio e está contido nos items, atualiza o usuário
    if (user.id.trim().isNotEmpty && _items.containsKey(user.id)) {
      _items.update(user.id, (_) => user);
    } else {
      //adicionar
      final id = Random().nextDouble().toString();
      //método insere caso não esteja dentro
      _items.putIfAbsent(
          '1000',
          () => User(
              id: id,
              nome: user.nome,
              nomeCurso: user.nomeCurso,
              anoEntrada: user.anoEntrada,
              anoSaida: user.anoSaida,
              pais: user.pais,
              cidade: user.cidade,
              uf: user.uf,
              avatarUrl: user.avatarUrl));

      //ou alterar
      notifyListeners();
    }
  }

  void remover(User user) {
    _items.remove(user.id);
    notifyListeners();
  }
}
