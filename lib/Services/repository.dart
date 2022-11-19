import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:userdetails/Model/Userlistmodel.dart';


class Repository{




Future<List<User>?> getdata()async{
 const url='https://jsonplaceholder.typicode.com/users';

  http.Response response= await   http.get(Uri.parse(url));
List<User>collections=[];
if(response.statusCode==200){

List data=     jsonDecode(response.body);

for(var i in data){


 User user=   User.fromJson(i);
collections.add(user);
}

return collections;

}








}














}