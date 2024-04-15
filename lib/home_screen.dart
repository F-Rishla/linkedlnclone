import 'package:flutter/material.dart';
//import 'package:linkdedln_demo/network_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              // contentPadding: const EdgeInsets.symmetric(vertical: 30.0),
              leading: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.shutterstock.com/image-photo/portrait-stylish-corporate-executive-smiling-260nw-256367677.jpg'), // Provide your image URL here
              ),
              title: const Text(
                "Arti Yadav ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text("likes this"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.more_vert,
                      size: 20.0,
                      color: Colors.brown[900],
                    ),
                    onPressed: () {
                      //   _onDeleteItemPressed(index);
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.close,
                      size: 20.0,
                      color: Colors.brown[900],
                    ),
                    onPressed: () {
                      //   _onDeleteItemPressed(index);
                    },
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 0.5,
              color: Colors.grey,
              indent: 13,
              endIndent: 13,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://img.freepik.com/free-photo/well-dressed-employee-outdoors_1098-2197.jpg'), // Provide your image URL here
              ),
              title: const Text(
                "Dr Tolu Onnibek ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(" Personal Branding"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.add,
                      size: 20.0,
                      color: Colors.brown[900],
                    ),
                    onPressed: () {
                      //   _onDeleteItemPressed(index);
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.person_add,
                      size: 20.0,
                      color: Colors.brown[900],
                    ),
                    onPressed: () {
                      //   _onDeleteItemPressed(index);
                    },
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  child: Image.network(
                      "https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821_640.jpg"),
                ),
              ],
            ),
            const Divider(
              thickness: 0.5,
              color: Colors.grey,
              indent: 13,
              endIndent: 13,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.thumb_up,
                        size: 25.0,
                        color: Color.fromRGBO(62, 39, 35, 1),
                      ),
                      onPressed: () {
                        //   _onDeleteItemPressed(index);
                      },
                    ),
                    const SizedBox(
                        height: 0.5), // Adjust the space between icon and text
                    const Text(
                      'Like',
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.comment_sharp,
                        size: 25.0,
                        color: Color.fromRGBO(62, 39, 35, 1),
                      ),
                      onPressed: () {
                        //   _onDeleteItemPressed(index);
                      },
                    ),
                    const Text(
                      'Comment',
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.autorenew,
                        size: 25.0,
                        color: Color.fromRGBO(62, 39, 35, 1),
                      ),
                      onPressed: () {
                        //   _onDeleteItemPressed(index);
                      },
                    ),
                    const Text(
                      'Repost',
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.send_sharp,
                        size: 25.0,
                        color: Color.fromRGBO(62, 39, 35, 1),
                      ),
                      onPressed: () {
                        //   _onDeleteItemPressed(index);
                      },
                    ),
                    const Text(
                      'Send',
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://insertface.com/fb/1459/well-dressed-woman-face-1459148-8tqy0-fb.jpg'), // Provide your image URL here
                ),
                title: const Text(
                  "Arti Yadav ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                    ''' Elavating careers| Open for promotional excel Exper...
                   Awesome '''),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.black, width: 0.5),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
