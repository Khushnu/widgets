import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class UserStutas extends StatelessWidget {
  const UserStutas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(''),
            )),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Column(children: [
          Container(
            height: 400,
            padding: const EdgeInsets.all(10),
            color: Colors.red,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Battery atutas',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        letterSpacing: 1),
                  ),
                ),
                Expanded(
                    child: Container(
                  // width: double.infinity,
                  color: Colors.cyan,
                  child: const Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          Expanded(
                              child: TwoValueCard(
                            text: 'User in ',
                            value: 'Online',
                            txtclr: Colors.cyan,
                            subWidget: null,
                            clr: null,
                          )),
                          Expanded(
                              child: TwoValueCard(
                            text: 'Last app action',
                            value: '2 minute',
                            txtclr: Colors.cyan,
                            subWidget: null,
                            clr: null,
                          )),
                        ],
                      )),
                      Expanded(
                          child: TwoValueCard(
                        text: 'User stutas',
                        value: 'Driving',
                        txtclr: Colors.cyan,
                        subWidget: Text('online',
                            style: TextStyle(
                              color: Color(0xff23A8E1),
                            )),
                        clr: null,
                      )),
                    ],
                  ),
                )),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              height: MediaQuery.sizeOf(context).height * 0.4,
              padding: EdgeInsets.all(12),
              // width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                const SizedBox(
                  height: 10,
                ),
                 Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          // mainAxisAlignment: MainAx,
                          children: [
                            Text(
                              'My Stutas:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'EATING',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color(0xff23A8E1),
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              height: 70,
                              width: MediaQuery.sizeOf(context).width * 0.4,
                              child: ListView.builder(
                                                    itemCount: 3,
                                                    scrollDirection: Axis.horizontal,
                                                    itemBuilder: (_, index) {
                                                      return Column(
                                                        children: [
                              SizedBox(
                                  height: 70,
                                  width: 80,
                                  child: Card(
                                      color: Colors.blue,
                                      elevation: 10,
                                      child: Center(
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Away $index',
                                            style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                letterSpacing: 1),
                                          ),
                                        ),
                                      ))),
                                                        ],
                                                      );
                                                    },
                                                  ),
                            )
                          ],
                        ))),
                // SizedBox(
                //     height: 200,
                //     child: ListView.builder(
                //       itemCount: 2,
                //       scrollDirection: Axis.horizontal,
                //       itemBuilder: (_, index) {
                //         return Column(
                //           children: [
                //             SizedBox(
                //                 height: 90,
                //                 width: 90,
                //                 child: Card(
                //                     color: Colors.blue,
                //                     elevation: 10,
                //                     child: Center(
                //                       child: Align(
                //                         alignment: Alignment.center,
                //                         child: Text(
                //                           'Away $index',
                //                           style: const TextStyle(
                //                               fontSize: 16,
                //                               fontWeight: FontWeight.bold,
                //                               color: Colors.white,
                //                               letterSpacing: 1),
                //                         ),
                //                       ),
                //                     ))),
                //           ],
                //         );
                //       },
                //     ))
              ]))
        ]));
  }
}

class TwoValueCard extends StatelessWidget {
  final String text;
  final String value;
  final Widget? subWidget;
  final Color? clr;
  final Color? txtclr;
  const TwoValueCard(
      {super.key,
      required this.text,
      required this.value,
      required this.subWidget,
      required this.clr,
      required this.txtclr});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      width: double.infinity,
      child: Card(
        elevation: 10,
        color: clr ?? Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              textAlign: TextAlign.left,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            subWidget ??
                Text(
                  value,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                )
          ],
        ),
      ),
    );
  }
}
