import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:ringtone_branding/presentation/dashboard/dashboard_pages/status_screen_data/status_screen.dart';

import '../../../consts/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imageUrls = [
    'https://media.licdn.com/dms/image/C4E12AQHiuk_U65q_qQ/article-cover_image-shrink_720_1280/0/1621338039438?e=2147483647&v=beta&t=t1BVYaIAyzyzEtOJDHVb7ZPQWlzXGUI9TKihsoWubYE',
    'https://appscold.com/wp-content/uploads/2024/01/WhatsApp-Image-2024-01-02-at-09.38.51.jpeg',
    'https://image.made-in-china.com/44f3j00lBGcoOEMywqJ/Small-Size-Cold-Storage-Room-Price-Refrigerated-Unit-Cold-Room-for-Meat-and-Seafood.webp',
  ];

  void _navigateToCategoryPage(String categoryNavigate) {
    // You can add more conditions if needed for other pages
    if (categoryNavigate == 'StatusScreen') {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>StatusScreen() ,));
    }


  }


  List<StorageCategoryModel> users = [
    StorageCategoryModel(
        storageAdName: 'All',
        storageAdImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRwW4bDEqQwicbekvYrN4wEvYAW-dGdlEOF53QJgPPnEoO8zBcDTDlAtVdPaiUjHL-3zQ&usqp=CAU',
        storageNavigate: ''
    ),
    StorageCategoryModel(
        storageAdName: "Cold Storage",
        storageAdImage: 'https://thumbs.dreamstime.com/b/cold-storage-vector-icon-warehouse-eps-file-easy-to-edit-320979725.jpg',
        storageNavigate: 'StatusScreen'
    ),

    StorageCategoryModel(
        storageAdName: 'Fridge Central',
        storageAdImage: 'https://img.freepik.com/free-psd/3d-icon-furniture-with-fridge_23-2150092276.jpg?size=338&ext=jpg&ga=GA1.1.2082370165.1716681600&semt=ais_user',
        storageNavigate: ''
    ),

    StorageCategoryModel(
        storageAdName: 'Cool Zone',
        storageAdImage: 'https://cdn-icons-png.freepik.com/512/6226/6226751.png',
        storageNavigate: ''
    ),



    StorageCategoryModel(
        storageAdName: "Freshness Hub",
        storageAdImage:
        'https://cdn-icons-png.freepik.com/512/10462/10462276.png',
        storageNavigate: ''
    ),

    StorageCategoryModel(
        storageAdName: 'Stock & Chill',
        storageAdImage:
        'https://en.pimg.jp/097/941/509/1/97941509.jpg',
        storageNavigate: ''
    ),
    StorageCategoryModel(
        storageAdName: 'TempTrack',
        storageAdImage: 'https://cdn5.vectorstock.com/i/1000x1000/77/94/temperature-monitoring-icon-vector-26197794.jpg',
        storageNavigate: ''
    ),

    StorageCategoryModel(
        storageAdName: 'Overview',
        storageAdImage: 'https://t3.ftcdn.net/jpg/08/61/39/70/360_F_861397031_LVs89UR0Gp6RygwGzLAPeqLEAovxD4cZ.jpg',
        storageNavigate: ''
    ),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
            ),
            child: Container(
              height: 190,
              color: normalbgColor,
              child: Container(
                margin: EdgeInsets.only(top: 25),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10, left: 10, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Container(
                                      // width: 50, // Set container width to 50
                                      // height: 50, // Set container height to 50
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors
                                            .blue, // Set background color to blue
                                      ),
                                      child: ClipOval(
                                        child: Image.asset(
                                          "assets/images/People_img.png",
                                          width: 40, // Set image width to 50
                                          height: 40, // Set image height to 50
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              child: Text(
                                            "Good Morning",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                          Container(
                                              child: Text(
                                            "Abhimanyu",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white),
                                          ))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(
                                width: 100,
                              ), // Use Expanded to take maximum available width

                              SizedBox(
                                  width: 15), // Add some space between icons
                              Container(
                                padding: EdgeInsets.all(
                                    0.0), // Optional: adjust padding as needed
                                child: Icon(
                                  Icons.notifications,
                                  color:
                                      Colors.white, // Optional: set icon color
                                  size: 25.0, // Optional: set icon size
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: [
                            Expanded(
                                child: TextField(
                              decoration: const InputDecoration(
                                  hintText: "Search here...",
                                  errorText: null,
                                  filled: true,
                                  fillColor: Colors.white,
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 14.0, horizontal: 20.0),
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.search)),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    // color: Colors.pinkAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox(
                        height: 150,
                        child: Swiper(
                          autoplay: true,
                          itemCount: imageUrls.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.network(
                                imageUrls[index],
                                fit: BoxFit.cover,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Text("Smart Fridge",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: normalbgColor)),
                        ),
                        SizedBox(
                          width: 170,
                        ),
                        Container(
                          child: Text("See All",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 14)),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    // height: MediaQuery.of(context).size.height * 0.5, // Adjust the multiplier as needed
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: users.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4, // Number of columns
                            crossAxisSpacing: 8.0, // Space between columns
                            mainAxisSpacing: 0.0, // Space between rows
                            childAspectRatio:
                            0.70, // Adjust based on your design requirements
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                _navigateToCategoryPage(users[index].storageNavigate);
                              },
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      width:
                                      60, // Set the desired width for a circular image
                                      height:
                                      60, // Set the desired height for a circular image
                                      decoration: BoxDecoration(
                                        color: Colors
                                            .grey, // Set a background color if needed
                                        borderRadius: BorderRadius.circular(
                                            50), // Set border radius
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            50), // Clip the image to the rounded corners
                                        child: Image.network(
                                          users[index].storageAdImage,
                                          fit: BoxFit
                                              .cover, // Adjust the fit to your requirements
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Expanded(
                                      // width: 100, // Increase the width as needed
                                      child: Text(
                                        users[index].storageAdName,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 11,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Text("Advertisement",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: normalbgColor)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child:Image.network("https://img.rtacdn-os.com/dshop/202407/40c1c78e-e58b-4b9b-b6c5-76b84b801f6e_.webp",fit: BoxFit.cover,),

                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StorageCategoryModel {
  final String storageAdName;
  final String storageAdImage;
  final String storageNavigate;

  StorageCategoryModel(
      {required this.storageAdName, required this.storageAdImage,required this.storageNavigate});
}


