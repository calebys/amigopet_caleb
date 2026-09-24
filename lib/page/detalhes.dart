import 'package:flutter/material.dart';
import '../style/amigopet_style.dart';

class DetalhesCuidadorPage extends StatelessWidget {
  final Map<String, dynamic> cuidador;

  const DetalhesCuidadorPage({
    super.key,
    required this.cuidador,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AmigoPetStyle.creme,

      appBar: AppBar(
        backgroundColor: AmigoPetStyle.marrom,
        foregroundColor: Colors.white,
        title: const Text(
          'Informações do cuidador',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: AmigoPetStyle.laranjaClaro,
              child: Icon(
                Icons.person,
                size: 70,
                color: AmigoPetStyle.marrom,
              ),
            ),

            const SizedBox(height: 16),

            Text(
              cuidador['nome'],
              style: AmigoPetStyle.titulo,
            ),

            const SizedBox(height: 6),

            Text(
              '${cuidador['idade']} anos',
              style: AmigoPetStyle.subtitulo,
            ),

            const SizedBox(height: 12),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 22,
                ),

                const SizedBox(width: 5),

                Text(
                  '${cuidador['avaliacao']}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),

              decoration: BoxDecoration(
                color: AmigoPetStyle.branco,
                borderRadius: BorderRadius.circular(18),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sobre o cuidador',
                    style: AmigoPetStyle.nomeCuidador,
                  ),

                  const SizedBox(height: 10),

                  Text(
                    'Cuidador disponível para oferecer cuidados '
                        'e atenção ao seu pet. Escolha o serviço que '
                        'melhor atende às suas necessidades.',
                    style: AmigoPetStyle.subtitulo,
                  ),

                  const SizedBox(height: 15),

                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: AmigoPetStyle.laranja,
                      ),

                      const SizedBox(width: 6),

                      Text(
                        cuidador['distancia'],
                        style: AmigoPetStyle.subtitulo,
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),

                  Row(
                    children: [
                      const Icon(
                        Icons.pets,
                        color: AmigoPetStyle.laranja,
                      ),

                      const SizedBox(width: 6),

                      Text(
                        cuidador['servico'],
                        style: AmigoPetStyle.subtitulo,
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),

                  Row(
                    children: [
                      const Icon(
                        Icons.attach_money,
                        color: AmigoPetStyle.laranja,
                      ),

                      const SizedBox(width: 6),

                      Text(
                        cuidador['preco'],
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AmigoPetStyle.marrom,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,

              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AmigoPetStyle.laranja,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 15),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),

                onPressed: () {
                  showDialog(
                    context: context,

                    builder: (context) {
                      return SimpleDialog(
                        title: const Text('Tipo de serviço'),

                        children: [
                          SimpleDialogOption(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Passeio'),
                          ),

                          SimpleDialogOption(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Hospedagem'),
                          ),

                          SimpleDialogOption(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Banho e tosa'),
                          ),
                        ],
                      );
                    },
                  );
                },

                child: const Text(
                  'Tipo de serviço',
                  style: AmigoPetStyle.textoBotao,
                ),
              ),
            ),

            const SizedBox(height: 12),

            SizedBox(
              width: double.infinity,

              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: AmigoPetStyle.marrom,

                  side: const BorderSide(
                    color: AmigoPetStyle.marrom,
                  ),

                  padding: const EdgeInsets.symmetric(vertical: 15),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),

                onPressed: () {
                  showDialog(
                    context: context,

                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Cancelar agendamento'),

                        content: const Text(
                          'Tem certeza que deseja cancelar o agendamento?',
                        ),

                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Não'),
                          ),

                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Sim'),
                          ),
                        ],
                      );
                    },
                  );
                },

                child: const Text(
                  'Cancelar agendamento',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 12),

            SizedBox(
              width: double.infinity,

              child: TextButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,

                    builder: (context) {
                      return SafeArea(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,

                          children: [
                            ListTile(
                              leading: const Icon(Icons.share),

                              title: const Text(
                                'Compartilhar perfil',
                              ),

                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),

                            ListTile(
                              leading: const Icon(Icons.report),

                              title: const Text(
                                'Denunciar',
                              ),

                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },

                child: const Text(
                  'Mais opções',
                  style: TextStyle(
                    color: AmigoPetStyle.marrom,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}