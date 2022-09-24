class User {
  final String id;
  final String nome;
  final String nomeCurso;
  final String anoEntrada;
  final String anoSaida;
  final String pais;
  final String cidade;
  final String uf;
  final String avatarUrl;

  const User({
    required this.id,
    required this.nome,
    required this.nomeCurso,
    required this.anoEntrada,
    required this.anoSaida,
    required this.pais,
    required this.cidade,
    required this.uf,
    required this.avatarUrl,
  });
}
