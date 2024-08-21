import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import '../../../../consts/colors.dart';
import '../../../../consts/colors.dart';
import '../../../model_pages/status_list_model_pages.dart';


class StatusIotDataScreen extends StatefulWidget {
  final ColdStorageList coldStorage;
  const StatusIotDataScreen({super.key, required this.coldStorage});

  @override
  State<StatusIotDataScreen> createState() => _StatusIotDataScreenState();
}

class _StatusIotDataScreenState extends State<StatusIotDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Container(
            height: 110,
            color: Colors.white,
            child: Container(
              margin: EdgeInsets.only(top: 25),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset: Offset(0, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: normalbgColor,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Text(
                          "IOT Details",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset: Offset(0, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: IconButton(
                            icon: Icon(Icons.dehaze_outlined),
                            color: normalbgColor,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 160,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                              child: Image.network(
                                widget.coldStorage.ColdStorageListImage,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            widget.coldStorage.ColdStorageListName,
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
                              Text(widget.coldStorage.ColdStorageListLocation),
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
                          SizedBox(height: 15),

                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width:160,
                                    padding: EdgeInsets.all(16),
                                    margin: const EdgeInsets.only(bottom: 10),
                                    decoration: BoxDecoration(
                                      color: Colors.white, // Set background color to white
                                      borderRadius: BorderRadius.circular(10), // Set border radius to 10
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.2), // Optional: adds a shadow for better visual separation
                                          spreadRadius: 2,
                                          blurRadius: 5,
                                          offset: Offset(0, 3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 40, // Adjust width to make it smaller
                                                height: 40, // Adjust height to make it smaller
                                                margin: EdgeInsets.all(3),
                                                decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  shape: BoxShape.circle,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black.withOpacity(0.2),
                                                      spreadRadius: 1,
                                                      blurRadius: 2,
                                                      offset: Offset(0, 1), // changes position of shadow
                                                    ),
                                                  ],
                                                ),
                                                child: IconButton(
                                                  icon: Icon(
                                                    Icons.warning,
                                                    color: Colors.yellow,
                                                  ),
                                                  onPressed: () {
                                                    // Your onPressed function here
                                                  },
                                                ),
                                              ),

                                              Container(
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      child: Text("05",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                                    ),
                                                    Container(
                                                      child: Text("Warnings",style: TextStyle(fontSize: 12,color: Colors.grey),),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.all(16),
                                      margin: const EdgeInsets.only(bottom: 10),
                                      decoration: BoxDecoration(
                                        color: Colors.white, // Set background color to white
                                        borderRadius: BorderRadius.circular(10), // Set border radius to 10
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2), // Optional: adds a shadow for better visual separation
                                            spreadRadius: 2,
                                            blurRadius: 5,
                                            offset: Offset(0, 3), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 40, // Adjust width to make it smaller
                                                  height: 40, //
                                                  margin: EdgeInsets.all(3),
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                    shape: BoxShape.circle,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.black.withOpacity(0.2),
                                                        spreadRadius: 1,
                                                        blurRadius: 2,
                                                        offset: Offset(0, 1), // changes position of shadow
                                                      ),
                                                    ],
                                                  ),
                                                  child: IconButton(
                                                    icon: Icon(
                                                      Icons.control_point,
                                                      color: Colors.yellow,
                                                    ),
                                                    onPressed: () {

                                                    },
                                                  ),
                                                ),
                                                Container(
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        child: Text("02",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                                      ),
                                                      Container(
                                                        child: Text("Control Unit",style: TextStyle(fontSize: 12,color: Colors.grey), ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width:160,
                                    padding: EdgeInsets.all(16),
                                    margin: const EdgeInsets.only(bottom: 10),
                                    decoration: BoxDecoration(
                                      color: Colors.white, // Set background color to white
                                      borderRadius: BorderRadius.circular(10), // Set border radius to 10
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.2), // Optional: adds a shadow for better visual separation
                                          spreadRadius: 2,
                                          blurRadius: 5,
                                          offset: Offset(0, 3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 40, // Adjust width to make it smaller
                                                height: 40, // Adjust height to make it smaller
                                                margin: EdgeInsets.all(3),
                                                decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  shape: BoxShape.circle,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black.withOpacity(0.2),
                                                      spreadRadius: 1,
                                                      blurRadius: 2,
                                                      offset: Offset(0, 1), // changes position of shadow
                                                    ),
                                                  ],
                                                ),
                                                child: IconButton(
                                                  icon: Icon(
                                                    Icons.ac_unit,
                                                    color: Colors.yellow,
                                                  ),
                                                  onPressed: () {
                                                    // Your onPressed function here
                                                  },
                                                ),
                                              ),

                                              Container(
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      child: Text("09",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                                    ),
                                                    Container(
                                                      child: Text("Active Devices",style: TextStyle(fontSize: 12,color: Colors.grey),),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.all(16),
                                      margin: const EdgeInsets.only(bottom: 10),
                                      decoration: BoxDecoration(
                                        color: Colors.white, // Set background color to white
                                        borderRadius: BorderRadius.circular(10), // Set border radius to 10
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2), // Optional: adds a shadow for better visual separation
                                            spreadRadius: 2,
                                            blurRadius: 5,
                                            offset: Offset(0, 3), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 40, // Adjust width to make it smaller
                                                  height: 40, //
                                                  margin: EdgeInsets.all(3),
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                    shape: BoxShape.circle,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.black.withOpacity(0.2),
                                                        spreadRadius: 1,
                                                        blurRadius: 2,
                                                        offset: Offset(0, 1), // changes position of shadow
                                                      ),
                                                    ],
                                                  ),
                                                  child: IconButton(
                                                    icon: Icon(
                                                      Icons.offline_bolt,
                                                      color: Colors.yellow,
                                                    ),
                                                    onPressed: () {

                                                    },
                                                  ),
                                                ),
                                                Container(
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        child: Text("01",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                                      ),
                                                      Container(
                                                        child: Text("Offline devices",style: TextStyle(fontSize: 12,color: Colors.grey), ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sensor Data",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "View All ",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.blue
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          // Replace with actual sensor data

                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white, // Set background color to white
                              borderRadius: BorderRadius.circular(10), // Set border radius to 10
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2), // Optional: adds a shadow for better visual separation
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Column(
                                  children: [
                                    Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                             child: Text(
                                                 "Thermal Lab - 1630064",
                                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize:18),
                                              ),
                                            ),
                                          Container(
                                            decoration:
                                            BoxDecoration(
                                              color:
                                              grayforphone,
                                              borderRadius:
                                              BorderRadius.circular(50), // Adjust the value as needed
                                            ),
                                            padding:
                                            EdgeInsets.all(5),
                                            child:
                                            Text(
                                              "Active",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.brown),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height:5),
                                    Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            child: Text(
                                              "Model name : ",
                                               style: TextStyle(color: Colors.grey,fontSize:13),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                                "TZ - TT18",
                                              style: TextStyle(fontWeight: FontWeight.bold,fontSize:15),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height:15),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                            Row(
                                              children: [
                                                Container(
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        child: Icon(Icons.thermostat, size: 24.0), // Use the thermostat icon
                                                      ),
                                                      Container(
                                                        child: Text("4.07°C"),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(width: 10,),
                                                Container(
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        child: Icon(Icons.water, size: 24.0), // Use the water icon for humidity
                                                      ),
                                                      SizedBox(width: 8.0), // Optional: Add some spacing between the icon and the text
                                                      Container(
                                                        child: Text("65%", // Replace with your humidity value
                                                          style: TextStyle(fontSize: 16.0), // Optional: Adjust the text style
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),

                                              ],
                                            ),

                                          Container(
                                            child: Row(
                                              children: [
                                                Container(
                                                  child: Icon(Icons.history, size: 17.0), // Use the history icon
                                                ),
                                                SizedBox(width: 8.0), // Optional: Add some spacing between the icon and the text
                                                Container(
                                                  child: Text("View History", // Replace with your history text
                                                    style: TextStyle(fontSize: 12.0), // Optional: Adjust the text style
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )

                                        ],
                                    ),
                                    ),
                               ]
                            ),
                          ),

                          SizedBox(height: 15),

                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white, // Set background color to white
                              borderRadius: BorderRadius.circular(10), // Set border radius to 10
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2), // Optional: adds a shadow for better visual separation
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Column(
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Text(
                                            "Mechinical - 1528329",
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize:18),
                                          ),
                                        ),
                                        Container(
                                          decoration:
                                          BoxDecoration(
                                            color:
                                            grayforphone,
                                            borderRadius:
                                            BorderRadius.circular(50), // Adjust the value as needed
                                          ),
                                          padding:
                                          EdgeInsets.all(5),
                                          child:
                                          Text(
                                            "Offline",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.brown),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height:5),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Text(
                                            "Model name : ",
                                            style: TextStyle(color: Colors.grey,fontSize:13),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            "TZ - TT190",
                                            style: TextStyle(fontWeight: FontWeight.bold,fontSize:15),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height:15),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              child: Row(
                                                children: [
                                                  Container(
                                                    child: Icon(Icons.thermostat, size: 24.0), // Use the thermostat icon
                                                  ),
                                                  Container(
                                                    child: Text("24.07°C"),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 10,),
                                            Container(
                                              child: Row(
                                                children: [
                                                  Container(
                                                    child: Icon(Icons.water, size: 24.0), // Use the water icon for humidity
                                                  ),
                                                  SizedBox(width: 8.0), // Optional: Add some spacing between the icon and the text
                                                  Container(
                                                    child: Text("75%", // Replace with your humidity value
                                                      style: TextStyle(fontSize: 16.0), // Optional: Adjust the text style
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ],
                                        ),

                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                child: Icon(Icons.history, size: 17.0), // Use the history icon
                                              ),
                                              SizedBox(width: 8.0), // Optional: Add some spacing between the icon and the text
                                              Container(
                                                child: Text("View History", // Replace with your history text
                                                  style: TextStyle(fontSize: 12.0), // Optional: Adjust the text style
                                                ),
                                              ),
                                            ],
                                          ),
                                        )

                                      ],
                                    ),
                                  ),
                                ]
                            ),
                          ),

                          SizedBox(height: 15),
                          Text(
                            "Historical Data",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          _buildHistoricalDataChart(),
                          SizedBox(height: 15),


                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildHistoricalDataChart() {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(20),
          width: double.infinity,
          height: 200,
          child: SimpleBarSleepChart.withSampleData(),
        ),
      ],
    );
  }

}


class SimpleBarSleepChart extends StatelessWidget {
  final List<charts.Series<OrdinalSales, String>> seriesList; // Update the type here
  final bool animate;

  SimpleBarSleepChart(this.seriesList, {required this.animate});

  factory SimpleBarSleepChart.withSampleData() {
    return SimpleBarSleepChart(
      _createSampleData(),
      animate: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
      seriesList,
      animate: animate,
    );
  }

  static List<charts.Series<OrdinalSales, String>> _createSampleData() { // Update the type here
    final data = [
      OrdinalSales('Mon', 75),
      OrdinalSales('Tue', 87),
      OrdinalSales('Wed', 93),
      OrdinalSales('Thus', 52),
      OrdinalSales('Fri', 82),
      OrdinalSales('Sat', 92),
      OrdinalSales('Sun', 80),
    ];

    return [
      charts.Series<OrdinalSales, String>(
        id: 'Sales',
        domainFn: (OrdinalSales sales, _) => sales.month,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
      ),
    ];
  }
}

class OrdinalSales {
  final String month;
  final int sales;

  OrdinalSales(this.month, this.sales);
}

