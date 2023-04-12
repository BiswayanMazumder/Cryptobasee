

import 'package:cryptobuy/controller/coin_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class  Cryptopage extends StatelessWidget {


  const Cryptopage({Key? key}) : super(key: key);
  final Coincontroller controller= Get.put(Coincontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(36),
                child:new Text('Crypto Markets',style:
                TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: 'Rubik'
                ),),
              ),
              Obx(
                    ()=> controller.isLoading.value? const Center(child: CircularProgressIndicator(),):
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 15,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width:60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(4, 4),
                                        blurRadius: 5,
                                        color: Colors.purple
                                    )
                                  ],
                                ),
                                child: Padding(padding: EdgeInsets.all(8.0),
                                  child: Image.network(controller.coinslist[index].image),
                                ),
                              ),
                              SizedBox(
                                height: 80,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  new Text(controller.coinslist[index].name,style: TextStyle(color: Colors.white),),
                                  Text("${controller.coinslist.value}%",style: TextStyle(color: Colors.white),)
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('${controller.coinslist[index].currentPrice}',style: TextStyle(color: Colors.white),),
                                  Text(controller.coinslist[index].symbol,style: TextStyle(color: Colors.white),)
                                ],
                              )


                            ],
                          ),
                        ),

                      );

                    }
                ),
              )
            ],

          ),
        ),
      ),
    );
  }
}

