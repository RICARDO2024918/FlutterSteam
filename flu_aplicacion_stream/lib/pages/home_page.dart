import 'package:flutter/material.dart';
import 'nosotros_page.dart';
import 'contactanos_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  // Lista de páginas para la navegación
  final List<Widget> _pages = [
    HomeContent(),
    NosotrosPage(),
    ContactanosPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: _pages[_currentIndex], // Muestra la página actual
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Nosotros',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Contáctanos',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Cambia la página al tocar un ítem
          });
        },
      ),
    );
  }
}

// Contenido de la página de inicio
class HomeContent extends StatelessWidget {
  final List<Movie> movies = [
    Movie(title: 'Pelicula 1', imageUrl: 'https://via.placeholder.com/150'),
    Movie(title: 'Pelicula 2', imageUrl: 'https://via.placeholder.com/150'),
    Movie(title: 'Pelicula 3', imageUrl: 'https://via.placeholder.com/150'),
    Movie(title: 'Pelicula 4', imageUrl: 'https://via.placeholder.com/150'),
    Movie(title: 'Pelicula 5', imageUrl: 'https://via.placeholder.com/150'),
    Movie(title: 'Pelicula 6', imageUrl: 'https://via.placeholder.com/150'),
    Movie(title: 'Pelicula 7', imageUrl: 'https://via.placeholder.com/150'),
    Movie(title: 'Pelicula 8', imageUrl: 'https://via.placeholder.com/150'),
    Movie(title: 'Pelicula 9', imageUrl: 'https://via.placeholder.com/150'),
    Movie(title: 'Pelicula 10', imageUrl: 'https://via.placeholder.com/150'),
    Movie(title: 'Pelicula 11', imageUrl: 'https://via.placeholder.com/150'),
    Movie(title: 'Pelicula 12', imageUrl: 'https://via.placeholder.com/150'),
    Movie(title: 'Pelicula 13', imageUrl: 'https://via.placeholder.com/150'),
    Movie(title: 'Pelicula 14', imageUrl: 'https://via.placeholder.com/150'),
    Movie(title: 'Pelicula 15', imageUrl: 'https://via.placeholder.com/150'),
    Movie(title: 'Pelicula 16', imageUrl: 'https://via.placeholder.com/150'),
    Movie(title: 'Pelicula 17', imageUrl: 'https://via.placeholder.com/150'),
    Movie(title: 'Pelicula 18', imageUrl: 'https://via.placeholder.com/150'),
    Movie(title: 'Pelicula 19', imageUrl: 'https://via.placeholder.com/150'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200, // Ajusta la altura según tus necesidades
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: movies.length,
            itemBuilder: (context, index) {
              return MovieCard(movie: movies[index]);
            },
          ),
        ),
      ],
    );
  }
}

class Movie {
  final String title;
  final String imageUrl;

  Movie({required this.title, required this.imageUrl});
}

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            movie.imageUrl,
            width: 120,
            height: 180,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              movie.title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
