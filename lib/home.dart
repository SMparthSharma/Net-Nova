import 'package:flutter/material.dart';
import 'package:my_vpn_netnova/menu.dart';
import 'package:my_vpn_netnova/speed_meter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('NetNova'),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 5, bottom: 5),
          child: GestureDetector(
            onTap: () => _scaffoldKey.currentState?.openDrawer(),
            child: Card(
              color: Colors.white,
              child: Image.asset('assets/icon/Menu.png'),
            ),
          ),
        ),
      ),
      drawer: Menu(),
      body: Column(
        children: [
          Card(
            color: Colors.white,
            margin: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SpeedMeter(
                      title: 'Download',
                      icon: Icons.arrow_downward_rounded,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 2,
                        width: 20,
                      ),
                    ),
                    SpeedMeter(
                      title: 'Upload',
                      icon: Icons.arrow_upward_rounded,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: const EdgeInsets.all(54),
              backgroundColor: Colors.white,
            ),
            child: Column(
              children: [
                Icon(
                  Icons.power_settings_new_rounded,
                  size: 40,
                  color: Color(0xffF06A30),
                ),
                SizedBox(height: 10),
                Text(
                  'Start',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffF06A30),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Not connected',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 10),

          Text(
            '00.00.0',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 20),
          Card(
            color: Colors.white,
            margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 10,
              ),
              child: Row(
                children: [
                  CircleAvatar(child: Image.asset('assets/icon/Menu.png')),
                  SizedBox(width: 15),
                  Text(
                    'Germany',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      final statusBarHeight = MediaQuery.of(
                        context,
                      ).padding.top;
                      final availableHeight =
                          MediaQuery.of(context).size.height - statusBarHeight;

                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        builder: (BuildContext context) {
                          return Container(
                            padding: EdgeInsets.only(
                              top: 16,
                              left: 16,
                              right: 16,
                              bottom: MediaQuery.of(context).viewInsets.bottom,
                            ),
                            height: availableHeight,
                            width: double.infinity,
                            child: Column(
                              children: [
                                Container(
                                  width: 50,
                                  height: 6,
                                  margin: EdgeInsets.only(bottom: 20),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder: (context, index) => GestureDetector(
                                      onTap: () => Navigator.pop(context),
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 15,
                                            vertical: 8.0,
                                          ),
                                          child: Row(
                                            children: [
                                              CircleAvatar(
                                                child: Image.asset(
                                                  'assets/icon/Menu.png',
                                                ),
                                              ),
                                              SizedBox(width: 15),
                                              Text(
                                                'Germany',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Spacer(),
                                              Icon(
                                                Icons.network_cell_rounded,
                                                color: Colors.green,
                                              ),
                                              Container(
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                    ),
                                                height: 20,
                                                width: 1.5,
                                                color: Color.fromRGBO(
                                                  158,
                                                  158,
                                                  158,
                                                  0.322,
                                                ),
                                              ),
                                              Icon(
                                                Icons.arrow_forward_ios_rounded,
                                                size: 18,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },

                    icon: Icon(
                      Icons.keyboard_arrow_up_rounded,
                      size: 30,
                      color: Colors.grey,
                    ),
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
