import 'package:alumni_app/components/user_tile.dart';
import 'package:alumni_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:alumni_app/components/user_tile.dart';
import 'package:provider/provider.dart';
import 'package:alumni_app/provider/users.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Usuários'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                //pilha de telas, adicionando em cima da home
                Navigator.of(context).pushNamed(AppRoutes.USER_FORM);

                //inserção ou alteração -teste
                // users.put(User(
                //   id: '1',
                //   nome: 'aaaaa',
                //   nomeCurso: '2022',
                //   anoEntrada: 'user.anoEntrada',
                //   anoSaida: 'user.anoSaida',
                //   pais: 'user.pais',
                //   cidade: ' user.cidade',
                //   uf: 'user.uf',
                //   avatarUrl: '',
                // ));
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
      ),
    );
  }
}
