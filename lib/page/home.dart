import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePages(),
    );
  }
}

class HomePages extends StatelessWidget {
  final List<String> stateImages = [
    'https://st.depositphotos.com/1016440/2534/i/450/depositphotos_25344733-stock-photo-sunrise-at-the-beach.jpg',
    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
    'https://st.depositphotos.com/1016440/2534/i/450/depositphotos_25344733-stock-photo-sunrise-at-the-beach.jpg',
    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
    'https://st.depositphotos.com/1016440/2534/i/450/depositphotos_25344733-stock-photo-sunrise-at-the-beach.jpg',
    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
  ];

  final List<String> postImages = [
    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
  ];

  final List<String> userNames = [
    "John Doe",
    "Jane Smith",
    "Bob Johnson",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Facebook",
                    style: TextStyle(
                      color: Color.fromRGBO(54, 3, 196, 1),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 40.0, // Ajusta el tamaño del círculo
                        height: 40.0, // Ajusta el tamaño del círculo
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 219, 211, 211),
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.blue,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Container(
                        width: 40.0, // Ajusta el tamaño del círculo
                        height: 40.0, // Ajusta el tamaño del círculo
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 219, 211, 211),
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Colors.blue,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: Color.fromARGB(255, 255, 255, 255),
              height: 40.0, // Ajusta la altura del contenedor
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Icons.home,
                        color: const Color.fromARGB(255, 0, 0, 0)),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.group,
                        color: const Color.fromARGB(255, 0, 0, 0)),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.notifications,
                        color: const Color.fromARGB(255, 0, 0, 0)),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.play_arrow,
                        color: const Color.fromARGB(255, 0, 0, 0)),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.video_library,
                        color: const Color.fromARGB(255, 0, 0, 0)),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200], // Cambia el color de fondo
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Row(
                  children: [
                    // Contenedor para la imagen circular
                    Container(
                      margin: EdgeInsets.all(8.0),
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.orange,
                      ),
                      child: ClipOval(
                        child: Image.network(
                          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg', // URL de la imagen
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Barra de búsqueda
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          border: InputBorder.none,
                          icon: Icon(Icons.search, color: Colors.grey),
                        ),
                      ),
                    ),
                    // Icono de galería
                    IconButton(
                      icon: Icon(Icons.photo_library, color: Colors.grey),
                      onPressed: () {
                        // Lógica para abrir la galería
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: stateImages.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    width: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.orange,
                    ),
                    child: Stack(
                      children: [
                        // Imagen que ocupa el 70% del alto del contenedor en el primer contenedor
                        Container(
                          height: index == 0 ? 0.7 * 180 : 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              stateImages[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        // Círculo con el símbolo "+" encima de la imagen en la parte inferior
                        if (index == 0)
                          Positioned(
                            bottom: 35, // Ajusta la posición del símbolo "+"
                            left: 0,
                            right: 0,
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                              ),
                              child: Center(
                                child: IconButton(
                                  icon: Icon(Icons.add,
                                      color: Colors.white,
                                      size: 20), // Tamaño del símbolo "+"
                                  onPressed: () {
                                    // Lógica para el icono "+"
                                  },
                                ),
                              ),
                            ),
                          ),
                        // Texto "Add Histories" en la parte vacía del contenedor
                        if (index == 0)
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              padding: EdgeInsets.all(8.0),
                              color: Colors.blue,
                              child: Text(
                                "Add Histories",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
            ListView.builder(
              itemCount: postImages.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(8.0),
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Encabezado de la publicación con la imagen del usuario y el nombre
                      Container(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.orange,
                              ),
                              child: ClipOval(
                                child: Image.network(
                                  stateImages[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 8.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  userNames[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Hace 1 hora", // Puedes agregar la información de tiempo o lo que desees
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 9.0),
                      // Imagen de la publicación
                      Image.network(
                        postImages[index],
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 9.0),
                      // Contenedor de iconos con bordes redondos
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[200],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue,
                                  ),
                                  child:
                                      Icon(Icons.thumb_up, color: Colors.white),
                                ),
                                SizedBox(width: 4.0),
                                Text("Me gusta"),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey[200],
                                  ),
                                  child:
                                      Icon(Icons.comment, color: Colors.black),
                                ),
                                SizedBox(width: 4.0),
                                Text("Comentarios"),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey[200],
                                  ),
                                  child: Icon(Icons.share, color: Colors.black),
                                ),
                                SizedBox(width: 4.0),
                                Text("Compartir"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
