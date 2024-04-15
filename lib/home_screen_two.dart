import 'package:flutter/material.dart';
import 'package:linkdedln_demo/home_model.dart';

// ignore: must_be_immutable
class HomeScreenTwo extends StatefulWidget {
  const HomeScreenTwo({super.key});

  @override
  State<HomeScreenTwo> createState() => _HomeScreenTwoState();
}

class _HomeScreenTwoState extends State<HomeScreenTwo> {
  List<HomeModel> profileList = [
    HomeModel(
        img1:
            "https://www.shutterstock.com/image-photo/portrait-stylish-corporate-executive-smiling-260nw-256367677.jpg",
        name1: "Arti Yadav",
        capt1: "ikes this",
        img2:
            "https://img.freepik.com/free-photo/well-dressed-employee-outdoors_1098-2197.jpg",
        name2: "Dr Tolu Onnibek",
        capt2: "Personal Branding",
        img3:
            "https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821_640.jpg",
        img4:
            "https://www.shutterstock.com/image-photo/portrait-stylish-corporate-executive-smiling-260nw-256367677.jpg",
        name3: "Arti Yadav",
        comment: ''' Elavating careers| Open for promotional excel Exper...
                   Awesome ''',
        like: false),
    HomeModel(
        img1:
            "https://www.shutterstock.com/image-photo/portrait-stylish-corporate-executive-smiling-260nw-256367677.jpg",
        name1: "Arti Yadav",
        capt1: "ikes this",
        img2:
            "https://www.shutterstock.com/image-photo/passport-picture-laughing-african-businesswoman-260nw-239935516.jpg",
        name2: "Ishika Rawat",
        capt2: "133k+ Followers || open for...",
        img3:
            "https://i.pinimg.com/736x/2d/92/99/2d9299a91f562e692e700d3d17257b2b.jpg",
        img4:
            "https://www.shutterstock.com/image-photo/portrait-stylish-corporate-executive-smiling-260nw-256367677.jpg",
        name3: "Arti Yadav",
        comment: ''' che Guevara''',
        like: false),
    HomeModel(
        img1:
            "https://t4.ftcdn.net/jpg/01/25/68/37/360_F_125683702_KzYgSIAUqhI6wmxNL49pgG6XafE3E5pO.jpg",
        name1: "Manish Kumar",
        capt1: "likes this",
        img2:
            "https://i.pinimg.com/222x/f5/3e/c6/f53ec61db2e49c82b057554cb4a0cb91.jpg",
        name2: "Khawar Abbas",
        capt2: "Marketing Specialist || Social Media..",
        img3:
            "https://c8.alamy.com/comp/G2NGBB/marketing-strategy-chart-with-keywords-and-icons-sketch-G2NGBB.jpg",
        img4:
            "https://t4.ftcdn.net/jpg/01/25/68/37/360_F_125683702_KzYgSIAUqhI6wmxNL49pgG6XafE3E5pO.jpg",
        name3: "Manish Kumar",
        comment: "Superb",
        like: false),
    HomeModel(
        img1:
            "https://t4.ftcdn.net/jpg/01/25/68/37/360_F_125683702_KzYgSIAUqhI6wmxNL49pgG6XafE3E5pO.jpg",
        name1: "Manish Kumar",
        capt1: "likes this",
        img2:
            "https://i.pinimg.com/222x/f5/3e/c6/f53ec61db2e49c82b057554cb4a0cb91.jpg",
        name2: "Khawar Abbas",
        capt2: "Marketing Specialist || Social Media..",
        img3:
            "https://cdn.corporatefinanceinstitute.com/assets/marketing-strategy.jpeg",
        img4:
            "https://t4.ftcdn.net/jpg/01/25/68/37/360_F_125683702_KzYgSIAUqhI6wmxNL49pgG6XafE3E5pO.jpg",
        name3: "Manish Kumar",
        comment: "Superb",
        like: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.builder(
              itemCount: profileList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Container(
                    color: Colors.white,
                    //height: 650,
                    child: Column(
                      children: [
                        ListTile(
                          dense: true,
                          visualDensity: const VisualDensity(vertical: -4),
                          // contentPadding: const EdgeInsets.symmetric(vertical: 30.0),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(profileList[index]
                                .img1), // Provide your image URL here
                          ),
                          title: Text(
                            profileList[index].name1,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(profileList[index].capt1),
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
                                  showModalBottomSheet(
                                      context: context,
                                      builder: (context) {
                                        return Container(
                                          height: 250,
                                          child: const Column(
                                            children: [
                                              ListTile(
                                                leading:
                                                    Icon(Icons.bookmark_border),
                                                title: Text(
                                                  "Save",
                                                  style: TextStyle(
                                                      // fontWeight:
                                                      // FontWeight.w900,
                                                      color: Color.fromARGB(
                                                          255, 81, 80, 80)),
                                                ),
                                              ),
                                              ListTile(
                                                leading: Icon(Icons.share),
                                                title: Text(
                                                  "Share via",
                                                  style: TextStyle(
                                                      // fontWeight:
                                                      // FontWeight.w900,
                                                      color: Color.fromARGB(
                                                          255, 81, 80, 80)),
                                                ),
                                              ),
                                              ListTile(
                                                leading:
                                                    Icon(Icons.visibility_off),
                                                title: Text(
                                                  " Hide posts like this",
                                                  style: TextStyle(
                                                      // fontWeight:
                                                      // FontWeight.w900,
                                                      color: Color.fromARGB(
                                                          255, 81, 80, 80)),
                                                ),
                                              ),
                                              ListTile(
                                                leading: Icon(Icons.flag),
                                                title: Text(
                                                  "Report post",
                                                  style: TextStyle(
                                                      // fontWeight:
                                                      // FontWeight.w900,
                                                      color: Color.fromARGB(
                                                          255, 81, 80, 80)),
                                                ),
                                              )
                                            ],
                                          ),
                                        );
                                      });
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
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(profileList[index]
                                .img2), // Provide your image URL here
                          ),
                          title: Text(
                            profileList[index].name2,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(profileList[index].capt2),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              IconButton(
                                icon: const Icon(
                                  Icons.add,
                                  size: 20.0,
                                  color: Color.fromARGB(255, 74, 135, 227),
                                ),
                                onPressed: () {
                                  //   _onDeleteItemPressed(index);
                                },
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.person_add,
                                  size: 20.0,
                                  color: Color.fromARGB(255, 74, 135, 227),
                                ),
                                onPressed: () {
                                  //   _onDeleteItemPressed(index);
                                },
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 250,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(profileList[index].img3),
                                  fit: BoxFit.fill)),
                          // child: Image.network(

                          //   // height: 250,
                          //   // width: 250,
                          //   fit: BoxFit.fill,
                          // ),
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
                                  icon: Icon(
                                    Icons.thumb_up,
                                    size: 20.0,
                                    color: profileList[index].like
                                        ? Colors.red
                                        : const Color.fromRGBO(62, 39, 35, 1),
                                  ),
                                  onPressed: () {
                                    //   _onDeleteItemPressed(index);
                                    setState(() {
                                      profileList[index].like =
                                          !profileList[index].like;
                                    });
                                  },
                                ),
                                const SizedBox(
                                  height: 1,
                                ),
                                // Adjust the space between icon and text
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
                                    size: 20.0,
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: const Icon(
                                    Icons.autorenew,
                                    size: 20.0,
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
                                    size: 20.0,
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
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(profileList[index]
                                  .img4), // Provide your image URL here
                            ),
                            title: SizedBox(
                              child: Container(
                                // height: 115,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 239, 238, 238),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0)),
                                ),
                                // color: Colors.grey,
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        profileList[index].name3,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(profileList[index].comment)
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            //   shape: RoundedRectangleBorder(
                            //     side: const BorderSide(
                            //         color: Colors.black, width: 0.5),
                            //     borderRadius: BorderRadius.circular(5),
                            //   ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              })),
    );
  }
}
