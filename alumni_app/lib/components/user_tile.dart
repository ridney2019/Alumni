import 'package:alumni_app/provider/users.dart';
import 'package:flutter/material.dart';
import 'package:alumni_app/models/user.dart';
import 'package:provider/provider.dart';

import '../routes/app_routes.dart';

class UserTile extends StatelessWidget {
  final User user;
  // ignore: use_key_in_widget_constructors
  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    // não tenho url,  não exibe imagem, valida e mostra apenas o ícone
    final avatar = user.avatarUrl.isEmpty
        ? const CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));
    //busca imagem na rede, não é necessário guadar img na aplicação

    return ListTile(
      leading: avatar,
      title: Text(user.nome),
      subtitle: Text(user.nomeInstituicao),
      trailing: SizedBox(
          width: 100,
          child: Row(
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.edit),
                color: Colors.orange,
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    AppRoutes.userForm,
                    arguments: user,
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.delete),
                color: Colors.red,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: const Text('Excluir Usuário'),
                      content: const Text('Tem Certeza ?'),
                      actions: <Widget>[
                        TextButton(
                          child: const Text('Não'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        TextButton(
                          child: const Text('Sim'),
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
