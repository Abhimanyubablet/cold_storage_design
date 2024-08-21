import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ringtone_branding/consts/colors.dart';
import 'package:ringtone_branding/presentation/dashboard/dashboard_pages/status_screen_data/status_iot_data_screen.dart';
import 'package:ringtone_branding/presentation/dashboard/dashboard_screen_page.dart';

import '../../../model_pages/status_list_model_pages.dart';
import '../home_screen.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {

  List<ColdStorageList> coldStorageListData = [
    ColdStorageList(
        ColdStorageListName: 'Pusodet Cold Storage',
        ColdStorageListLocation:"Inda,Kharagpur",
        ColdStorageListImage:
        'https://www.stefaniexchangers.com/wp-content/uploads/2023/11/stefani-ref-frigoveneta-00.jpg'),
    ColdStorageList(
        ColdStorageListName: "Abhi Cold Storage Limited",
        ColdStorageListLocation:"Salt Lake,Kolkata",
        ColdStorageListImage:
        'https://media.licdn.com/dms/image/C5612AQFKzjbZsAlCpA/article-cover_image-shrink_720_1280/0/1598360803207?e=2147483647&v=beta&t=qt-dg3X1FBSie2Q2IFU9nvCD9k_EstpuiiRMSe-YlGc'),
    ColdStorageList(
        ColdStorageListName: 'Shampa Cold Storage Limited',
        ColdStorageListLocation:"Kankarbagh (Patna), Bihar",
        ColdStorageListImage:
        'https://5.imimg.com/data5/LJ/KQ/MY-913136/bulk-cold-storage.jpg'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          Container(
            height: 100,
            child: SizedBox(
              width: double.infinity, // Make the SizedBox take the full width
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 58,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: normalbgColor, // background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
                      ),
                      onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardScreen(),));
                      },
                      child: Icon(
                        Icons.arrow_back, // replace with your desired icon
                        color: Colors.white, // icon color
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey, // specify border color here
                          width: 1.0, // specify border width here
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Search nearby zip code...",
                                  filled: true,
                                  fillColor: Colors.white,
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 14.0,
                                    horizontal: 20.0,
                                  ),
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.search),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: coldStorageListData.length,
              itemBuilder: (context, index) {
                final coldStorage = coldStorageListData[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StatusIotDataScreen(
                          coldStorage: coldStorage,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 160,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                            child: Image.network(
                              coldStorage.ColdStorageListImage,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          coldStorage.ColdStorageListName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_rounded,
                              size: 18,
                              color: Colors.blue,
                            ),
                            SizedBox(width: 5),
                            Text(coldStorage.ColdStorageListLocation),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 5.0, // Set the initial rating value as double
                              minRating: 1,
                              itemSize: 14.0,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amberAccent,
                              ),
                              onRatingUpdate: (double value) {},
                            ),
                            SizedBox(width: 3),
                            Text(
                              "5.0", // Display the rating here
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "(255)", // Display the number of reviews here
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                            ),
                          ],
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
    );
  }

}
