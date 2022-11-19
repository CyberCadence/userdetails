import 'package:flutter/material.dart';
import 'package:userdetails/Model/Userlistmodel.dart';

class UserDetailsPage extends StatelessWidget {
  final User userdetails;

  const UserDetailsPage({super.key, required this.userdetails});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                userdetails.name.toString(),
                style: const TextStyle(
                    fontWeight: FontWeight.w400, color: Colors.black),
              ),
              leading: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  )),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 15),
                child: Container(
                  width: double.maxFinite,
                  height: size.height,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage('assets/images/wall.jpg'))),
                            height: 100,
                            width: 120,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(width: 200,
                                child: Text(
                                  userdetails.name.toString(),
                                 
                                  style: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Text(userdetails.email.toString(),
                              
                              
                              style: const TextStyle(fontWeight: FontWeight.w300,fontSize: 12),)
                            ],
                          ),
                        ],
                      ),
                      TextWidget(
                        textone: 'Email',
                        detailsText: userdetails.email.toString(),
                      ),
                      Row(
                        children: [
                          TextWidget(
                              textone: 'Address',
                              detailsText: userdetails.address!.street.toString(),),
                              const SizedBox(width: 5,),
                               Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text(userdetails.address!.city.toString(),
                                 style: const 
                                TextStyle(fontSize: 12,fontWeight: FontWeight.w400,)),
                              ),const SizedBox(width: 5,),
                               Padding(
                                padding: const EdgeInsets.only(top: 15,),
                                child: Text(userdetails.address!.zipcode.toString(),
                                style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w400,),)
                       ) ],
                      ),
                      TextWidget(
                          textone: 'Phone',
                          detailsText: userdetails.phone.toString(),),
                      TextWidget(
                          textone: 'Website',
                          detailsText: userdetails.website.toString())
                    ],
                  ),
                ),
              ),
            )));
  }
}

class TextWidget extends StatelessWidget {
  final String textone;
  final String detailsText;
  TextWidget({
    required this.textone,
    required this.detailsText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        children: [
          Text(
            '$textone:',
            style: const TextStyle(color: Colors.grey,fontSize: 12),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(detailsText, style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12))
        ],
      ),
    );
  }
}

 
