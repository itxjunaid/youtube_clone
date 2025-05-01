import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var height, width;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          child: ListView(
            children: [
              Container(
                height: height * 0.15,
                width: width,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      height: height * 0.08,
                      width: width,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: height * 0.1,
                            width: width * 0.3,
                            child: Image(
                                image: NetworkImage(
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/YouTube_Logo_2017.svg/2560px-YouTube_Logo_2017.svg.png')),
                          ),
                          SizedBox(
                            width: width * 0.20,
                          ),
                          Icon(Icons.cast_connected_outlined),
                          Icon(Icons.notification_add_outlined),
                          Icon(Icons.search)
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.white,
                        width: width,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0), // Padding around Row
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .spaceEvenly, // Evenly spaced items
                              children: [
                                _buildButtonContainer(
                                  width: width * 0.13,
                                  height: height * 0.05,
                                  color:
                                      const Color.fromARGB(255, 191, 189, 189)
                                          .withOpacity(0.3),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon:
                                        Icon(Icons.explore_outlined, size: 22),
                                  ),
                                ),
                                SizedBox(width: 10), // Space between containers
                                _buildButtonContainer(
                                  width: width * 0.13,
                                  height: height * 0.05,
                                  color: const Color.fromARGB(255, 12, 3, 3),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text("All",
                                        style: TextStyle(color: Colors.white)),
                                  ),
                                ),
                                SizedBox(width: 10), // Space between containers
                                _buildButtonContainer(
                                  width: width * 0.22,
                                  height: height * 0.05,
                                  color:
                                      const Color.fromARGB(255, 191, 189, 189)
                                          .withOpacity(0.3),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text("Podcast",
                                        style: TextStyle(color: Colors.black)),
                                  ),
                                ),
                                SizedBox(width: 10), // Space between containers
                                _buildButtonContainer(
                                  width: width * 0.22,
                                  height: height * 0.05,
                                  color:
                                      const Color.fromARGB(255, 191, 189, 189)
                                          .withOpacity(0.3),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text("Podcast",
                                        style: TextStyle(color: Colors.black)),
                                  ),
                                ),
                                SizedBox(width: 10), // Space between containers
                                _buildButtonContainer(
                                  width: width * 0.22,
                                  height: height * 0.05,
                                  color:
                                      const Color.fromARGB(255, 191, 189, 189)
                                          .withOpacity(0.3),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text("Podcast",
                                        style: TextStyle(color: Colors.black)),
                                  ),
                                ),
                                SizedBox(width: 10), // Space between containers
                                _buildButtonContainer(
                                  width: width * 0.22,
                                  height: height * 0.05,
                                  color:
                                      const Color.fromARGB(255, 191, 189, 189)
                                          .withOpacity(0.3),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text("Podcast",
                                        style: TextStyle(color: Colors.black)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.007,
              ),
              Container(
                height: height * 0.35,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://www.shutterstock.com/shutterstock/videos/1045464274/thumb/11.jpg?ip=x480'),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                height: height * 0.0007,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 20, // Adjust size
                  backgroundImage: NetworkImage(
                    "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D", // Replace with your image URL
                  ),
                ),
                title: Text(
                  "How to hack PC",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: [
                    Text(
                      "Raza Samo",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Text(
                      "1M views",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Text(
                      "1 year ago",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                  ],
                ),
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              ),
              SizedBox(
                height: height * 0.007,
              ),
              Container(
                height: height * 0.35,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn.sanity.io/images/7g6d2cj1/production/fa7aea4f9f9e19463f59b206ada7557063e84a51-1280x720.jpg?h=720&q=70&auto=format'),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                height: height * 0.0007,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 20, // Adjust size
                  backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2021/09/20/03/24/skeleton-6639547_1280.png", // Replace with your image URL
                  ),
                ),
                title: Text(
                  "Tiktok Expose",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: [
                    Text(
                      "Badla Bro",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Text(
                      "2.1M views",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Text(
                      "5 year ago",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              ),
              SizedBox(
                height: height * 0.007,
              ),
              Container(
                height: height * 0.35,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqbJWCzqKnV6DOu4YL3nJBtlOvSwyrT37QAw&s'),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                height: height * 0.0007,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 20, // Adjust size
                  backgroundImage: NetworkImage(
                    "https://static.vecteezy.com/system/resources/previews/002/002/403/non_2x/man-with-beard-avatar-character-isolated-icon-free-vector.jpg", // Replace with your image URL
                  ),
                ),
                title: Text(
                  "No More Lies Dear",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: [
                    Text(
                      "Ducky Bhai",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Text(
                      "5.5M views",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Text(
                      "2 year ago",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              ),
              SizedBox(
                height: height * 0.007,
              ),
              Container(
                height: height * 0.35,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://www.shutterstock.com/shutterstock/videos/1045464274/thumb/11.jpg?ip=x480'),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                height: height * 0.0007,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 20, // Adjust size
                  backgroundImage: NetworkImage(
                    "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D", // Replace with your image URL
                  ),
                ),
                title: Text(
                  "How to hack PC",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: [
                    Text(
                      "Raza Samo",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Text(
                      "1M views",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Text(
                      "1 year ago",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                  ],
                ),
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              ),
              SizedBox(
                height: height * 0.007,
              ),
              Container(
                height: height * 0.35,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/275295136/original/7b2b058e4a499acdf80846c19b2310246e4b15c0/design-the-perfect-youtube-thumbnail.jpg'),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                height: height * 0.0007,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 20, // Adjust size
                  backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2021/09/20/03/24/skeleton-6639547_1280.png", // Replace with your image URL
                  ),
                ),
                title: Text(
                  "Tiktok Expose",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: [
                    Text(
                      "Badla Bro",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Text(
                      "2.1M views",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Text(
                      "5 year ago",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              ),
              SizedBox(
                height: height * 0.007,
              ),
              Container(
                height: height * 0.35,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://i.pinimg.com/736x/62/de/4e/62de4eb476b902b80952d9580ef09fd9.jpg'),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                height: height * 0.0007,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 20, // Adjust size
                  backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2021/09/20/03/24/skeleton-6639547_1280.png", // Replace with your image URL
                  ),
                ),
                title: Text(
                  "Tiktok Expose",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: [
                    Text(
                      "Badla Bro",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Text(
                      "2.1M views",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Text(
                      "5 year ago",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildButtonContainer({
  required double width,
  required double height,
  required Color color,
  required Widget child,
}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(5), // Rounded corners
    ),
    child: child,
  );
}
