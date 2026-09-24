import 'package:flutter/material.dart';
import '../style/amigopet_style.dart';
import '../style/cuidadores_style.dart';
import 'detalhes.dart';

class CuidadoresPage extends StatelessWidget {
  const CuidadoresPage({super.key});

  final List<Map<String, dynamic>> cuidadores = const [
    {
      'nome': 'Ana Oliveira',
      'idade': 28,
      'avaliacao': 4.9,
      'distancia': '1,2 km',
      'servico': 'Passeio e cuidados',
      'preco': 'R\$ 35,00/h',
      'imagem': 'assets/images/cuidadora1.png',
    },
    {
      'nome': 'Carlos Santos',
      'idade': 32,
      'avaliacao': 4.8,
      'distancia': '2,1 km',
      'servico': 'Passeio e hospedagem',
      'preco': 'R\$ 45,00/h',
      'imagem': 'assets/images/cuidador1.png',
    },
    {
      'nome': 'Mariana Souza',
      'idade': 25,
      'avaliacao': 4.7,
      'distancia': '2,8 km',
      'servico': 'Banho e tosa',
      'preco': 'R\$ 40,00',
      'imagem': 'assets/images/cuidadora2.png',
    },
    {
      'nome': 'Lucas Ferreira',
      'idade': 30,
      'avaliacao': 4.9,
      'distancia': '3,4 km',
      'servico': 'Passeio e cuidados',
      'preco': 'R\$ 38,00/h',
      'imagem': 'assets/images/cuidador2.png',
    },
    {
      'nome': 'Julia Almeida',
      'idade': 27,
      'avaliacao': 4.6,
      'distancia': '4,0 km',
      'servico': 'Hospedagem',
      'preco': 'R\$ 50,00/h',
      'imagem': 'assets/images/cuidadora3.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AmigoPetStyle.creme,

      appBar: AppBar(
        backgroundColor: AmigoPetStyle.marrom,
        foregroundColor: Colors.white,
        title: const Text(
          'Cuidadores',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,

        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.filter_list),
            onSelected: (value) {
              // Filtros podem ser adicionados futuramente.
            },
            itemBuilder: (context) => const [
              PopupMenuItem(
                value: 'proximos',
                child: Text('Mais próximos'),
              ),
              PopupMenuItem(
                value: 'avaliados',
                child: Text('Melhor avaliados'),
              ),
            ],
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: AmigoPetStyle.marrom,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/image/logo.png',
                    width: 90,
                    height: 70,
                    fit: BoxFit.contain,
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'AmigoPet',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('Cuidadores'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.calendar_month),
              title: const Text('Meus agendamentos'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Configurações'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: cuidadores.length,
        itemBuilder: (context, index) {
          final cuidador = cuidadores[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalhesCuidadorPage(
                    cuidador: cuidador,
                  ),
                ),
              );
            },

            child: Container(
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.all(14),
              decoration: CuidadoresStyle.cardDecoration,

              child: Row(
                children: [
                  CircleAvatar(
                    radius: 38,
                    backgroundColor: AmigoPetStyle.laranjaClaro,
                    child: const Icon(
                      Icons.person,
                      size: 42,
                      color: AmigoPetStyle.marrom,
                    ),
                  ),

                  const SizedBox(width: 14),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cuidador['nome'],
                          style: CuidadoresStyle.nome,
                        ),

                        const SizedBox(height: 4),

                        Text(
                          '${cuidador['idade']} anos',
                          style: CuidadoresStyle.subtitulo,
                        ),

                        const SizedBox(height: 6),

                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 18,
                            ),

                            const SizedBox(width: 4),

                            Text(
                              '${cuidador['avaliacao']}',
                              style: CuidadoresStyle.avaliacao,
                            ),

                            const SizedBox(width: 12),

                            const Icon(
                              Icons.location_on,
                              color: AmigoPetStyle.laranja,
                              size: 18,
                            ),

                            const SizedBox(width: 3),

                            Text(
                              cuidador['distancia'],
                              style: CuidadoresStyle.subtitulo,
                            ),
                          ],
                        ),

                        const SizedBox(height: 6),

                        Text(
                          cuidador['servico'],
                          style: CuidadoresStyle.servico,
                        ),

                        const SizedBox(height: 5),

                        Text(
                          cuidador['preco'],
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: AmigoPetStyle.marrom,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Icon(
                    Icons.arrow_forward_ios,
                    color: AmigoPetStyle.laranja,
                    size: 20,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}