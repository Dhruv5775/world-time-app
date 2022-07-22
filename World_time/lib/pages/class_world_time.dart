import 'package:http/http.dart';
import 'dart:convert';

class Worldtime{

  String location ='';
  String time ='';
  String url ='';
  String flag ='';
  String date ='';
  int index=0;

  Worldtime(lctn,flg,url_,idx){
    url=url_;
    location=lctn;
    flag=flg;
    index=idx;
  }


  Future<void> getTime()async{

    Response response= await get(Uri.parse('https://timeapi.io/api/Time/current/zone?timeZone=$url'));
    Map data = json.decode(response.body);
    //print (data);
    time = data['time'];
    print(time);
    date = data['date'];
   // String timezone = data ['timezone'];
  //  int week_number = data['week_number'];

    //time=datetime;

  }
}
