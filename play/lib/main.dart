import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

  Atividade minhaAtividade = Atividade(
      titulo: 'Exemplo',
      descricao: 'Descrição da atividade',
      data: '2200',
      duracao: '2h');
  print(minhaAtividade.titulo);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jogajunto',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => TelaInicial(),
        '/login': (context) => TelaLogin(),
        '/registro': (context) => TelaRegistro(),
        '/atividades': (context) => TelaAtividades(),
        '/detalhes': (context) => TelaDetalhesAtividade(
            atividade: ModalRoute.of(context)!.settings.arguments as Atividade),
        '/navegacao': (context) => TelaNavegacao(),
        '/adicionar': (context) => TelaAdicionarAtividade(),
        '/perfil': (context) => PerfilScreen(),
        '/chat': (context) => ChatScreen(),
      },
    );
  }
}

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.deepPurple],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/images/lg.png'),
              ),
              SizedBox(height: 20),
              Text(
                'Jogajunto',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadowColor: Colors.black.withOpacity(0.3),
                  elevation: 5,
                ),
                child: Text(
                  'Iniciar',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  // Implemente a ação desejada
                },
                child: Text(
                  'Criar uma conta',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TelaLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/fundo.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Bem-vindo(a)!',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.7),
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.7),
                    hintText: 'Senha',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/atividades');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Entrar',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Ou entre com:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        // Handle Google login
                      },
                      icon: Icon(
                        Icons.login,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        // Handle Facebook login
                      },
                      icon: Icon(
                        Icons.login,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        // Handle Twitter login
                      },
                      icon: Icon(
                        Icons.login,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TelaRegistro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Nome',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/atividades');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Registrar',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TelaAtividades extends StatelessWidget {
  final List<Atividade> atividades = [
    Atividade(
      titulo: 'Corrida Matinal',
      descricao: 'Correr 5 km todas as manhãs',
      // icone: Icons.directions_run,
      data: '01/01/2023',
      duracao: '30 minutos',
    ),
    Atividade(
      titulo: 'Yoga',
      descricao: 'Praticar yoga por 30 minutos',
      //  icone: Icons.accessibility,
      data: '01/01/2023',
      duracao: '30 minutos',
    ),
    Atividade(
      titulo: 'Leitura',
      descricao: 'Ler um livro por 1 hora',
      //  icone: Icons.menu_book,
      data: '01/01/2023',
      duracao: '1 hora',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Atividades'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: atividades.length,
          itemBuilder: (context, index) {
            final atividade = atividades[index];
            return ListTile(
              title: Text(atividade.titulo),
              subtitle: Text(atividade.descricao),
              trailing: Text(atividade.duracao),
              onTap: () {
                // Navegar para a tela de detalhes da atividade
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        TelaDetalhesAtividade(atividade: atividade),
                  ),
                );
              },
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Atividades',
          ),
        ],
        selectedItemColor: Colors.blue,
        onTap: (int index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/perfil');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/chat');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/atividades');
          }
        },
      ),
    );
  }
}

class AtividadeCard extends StatelessWidget {
  final Atividade atividade;

  const AtividadeCard({
    required this.atividade,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: ListTile(
        //  leading: Icon(atividade.icone, size: 40),
        title: Text(atividade.titulo),
        subtitle: Text(atividade.descricao),
        //
      ),
    );
  }
}

class TelaDetalhesAtividade extends StatelessWidget {
  final Atividade atividade;

  const TelaDetalhesAtividade({required this.atividade});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes da Atividade'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Título: ${atividade.titulo}'),
            Text('Descrição: ${atividade.descricao}'),
            Text('Data: ${atividade.data}'),
            Text('Duração: ${atividade.duracao}'),
          ],
        ),
      ),
    );
  }
}

class TelaAdicionarAtividade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Atividade'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Adicionar Nova Atividade',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Título',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Descrição',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Data',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Duração',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Lógica para adicionar a atividade
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text('Adicionar'),
            ),
          ],
        ),
      ),
    );
  }
}

class Atividade {
  final String titulo;
  final String descricao;
  final String data;
  final String duracao;

  Atividade(
      {required this.titulo,
      required this.descricao,
      required this.data,
      required this.duracao});
}

class TelaNavegacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navegação'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/atividades');
              },
              child: Text('Ver Atividades'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/registro');
              },
              child: Text('Registrar'),
            ),
          ],
        ),
      ),
    );
  }
}

class TelaConfiguracoes extends StatefulWidget {
  @override
  _TelaConfiguracoesState createState() => _TelaConfiguracoesState();
}

class _TelaConfiguracoesState extends State<TelaConfiguracoes> {
  bool _notificacoesAtivadas = true;
  bool _modoEscuroAtivado = false;

  void _atualizarConfiguracaoNotificacoes(bool value) {
    setState(() {
      _notificacoesAtivadas = value;
    });
    // Lógica para atualizar a configuração de notificações no backend ou em outros lugares necessários
  }

  void _atualizarConfiguracaoModoEscuro(bool value) {
    setState(() {
      _modoEscuroAtivado = value;
    });
    // Lógica para atualizar a configuração de modo escuro no backend ou em outros lugares necessários
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: Text('Notificações'),
            value: _notificacoesAtivadas,
            onChanged: _atualizarConfiguracaoNotificacoes,
          ),
          SwitchListTile(
            title: Text('Modo Escuro'),
            value: _modoEscuroAtivado,
            onChanged: _atualizarConfiguracaoModoEscuro,
          ),
        ],
      ),
    );
  }
}

class PerfilScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      body: Center(
        child: Text(
          'Tela de Perfil',
          style: TextStyle(fontSize: 24),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Atividades',
          ),
        ],
        selectedItemColor: Colors.blue,
        onTap: (int index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/perfil');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/chat');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/atividades');
          }
        },
      ),
    );
  }
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
      ),
      body: Center(
        child: Text(
          'Tela de Chat',
          style: TextStyle(fontSize: 24),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Atividades',
          ),
        ],
        selectedItemColor: Colors.blue,
        onTap: (int index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/perfil');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/chat');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/atividades');
          }
        },
      ),
    );
  }
}
