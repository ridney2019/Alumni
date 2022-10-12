import 'package:alumni_app/provider/users.dart';
import 'package:flutter/material.dart';
import 'package:alumni_app/models/user.dart';
import 'package:provider/provider.dart';

import '../routes/app_routes.dart';

class UserTile extends StatelessWidget {
  final User user;
  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    // não tenho url,  não exibe imagem, valida e mostra apenas o ícone
    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
        ? CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));
    //busca imagem na rede, não é necessário guadar img na aplicação

    return ListTile(
      leading: avatar,
      title: Text(user.nome),
      subtitle: Text(user.nomeCurso),
      trailing: Container(
          width: 100,
          child: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.edit),
                color: Colors.orange,
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    AppRoutes.USER_FORM,
                    arguments: user,
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.delete),
                color: Colors.red,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: Text('Excluir Usuário'),
                      content: Text('Tem Certeza ?'),
                      actions: <Widget>[
                        FlatButton(
                          child: Text('Não'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        FlatButton(
                          child: Text('Sim'),
                          onPressed: () {
                            Provider.of<Users>(context, listen: false)
                                .remover(user);
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                  ); //AlertDialog
                },
              ),
            ],
          )),
    );
  }
}
