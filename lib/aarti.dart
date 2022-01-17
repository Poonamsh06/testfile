
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pujapurohit/utils/text_reader.dart';
import 'home_page.dart';
import 'localization_service.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
class AartiPage extends StatefulWidget {
  const AartiPage ({Key? key}) : super(key: key);

  @override
  _AartiPageState createState() => _AartiPageState();
}
class _AartiPageState extends State<AartiPage> {
  String? lng;
  @override
  void initState() {
    super.initState();
    lng = LocalizationService().getCurrentLang();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Container(

          color:Colors.grey[500],
          child:ListView(
            children:[

              card("lib/assets/text/shivaarti.txt","http://www.earthandskyconnection.com/wp-content/uploads/2016/11/lord-shiva.jpg",    "Shiv Aarti"),
              card("lib/assets/text/ganeshaarti.txt","https://1.bp.blogspot.com/-bgxsG_kythM/XWy1E1f_GwI/AAAAAAAAFGA/3JQLA1urFT87Eiktrm3AYS0pPwYqvuhswCLcBGAs/s1600/lord%2Bvinayaka%2Bhd.png",
                "Shri Ganesh Aarti",
              ),

              card("lib/assets/text/hanumaanaarti.txt","https://i.pinimg.com/736x/05/ef/20/05ef203052f0a1ee15aff1b97f9ee6a4.jpg",    "Hanuman Aarti",

              ),
              card("lib/assets/text/krishnaaarti.txt","https://th.bing.com/th/id/R.79e8bfdbe687451defec010ef148e874?rik=Q8uB7Ut6VmxIOg&riu=http%3a%2f%2fwallpapercave.com%2fwp%2fwc1779526.jpg&ehk=HviAoW2Nhu%2fYBailOatZhwFRNWCx5ulIM7Bxos%2bJCWY%3d&risl=&pid=ImgRaw&r=0",
                "Krishna Aarti",
              ),
              card("lib/assets/text/durgaaarti.txt","https://image.winudf.com/v2/image/Y29tLnRhYmtlZXkuZHVyZ2FtYWFoZHdhbGxwYXBlcnNfc2NyZWVuXzBfMTUxODYyNjMxNV8wNDg/screen-0.jpg?fakeurl=1&type=.jpg",
                "Maa Durga Aarti",
              ),
              card("lib/assets/text/lakshmiaarti.txt","https://th.bing.com/th/id/R.8bab3b9b71b9f9f2d53eeacdbee82419?rik=Oym7jo497WfJ%2fg&riu=http%3a%2f%2fwww.hindisoch.com%2fwp-content%2fuploads%2f2017%2f07%2fLaxmi-Maa-Pics.jpg&ehk=c1cE0jyLnp8fXD14VyO%2f6zi2tjZXsUoLgP0Vsh%2b3bQ0%3d&risl=&pid=ImgRaw&r=0",
                "Maa Lakshami Aarti",
              ),
              card(    "lib/assets/text/paarwatiaarti.txt","https://th.bing.com/th/id/OIP.8yrfCySpjEiArzMRE0ZYXwHaJf?pid=ImgDet&rs=1",
                "Maa Paarwati Aarti",
              ),
              card(    "lib/assets/text/sarasvatiaarti.txt","https://th.bing.com/th/id/R.d57b3d76dc0325c91ef5748923a372ee?rik=kPzpfwY9G6j3wA&riu=http%3a%2f%2fwww.saraswatipuja.org%2fimages%2fsaraswati-hd-wallpaper_3.jpg&ehk=bPsqaeCYMm5UhEEFBP1A1YIa4tEVMbXUkzOT6ukNsS8%3d&risl=&pid=ImgRaw&r=0",
                "Maa Saraswati Aarti",
              ),
              card(    "lib/assets/text/vaishnoaarti.txt","http://static.dnaindia.com/sites/default/files/2015/03/29/322657-vaishno.jpg",
                "Maa Vaishno Aarti",
              ),
              card(    "lib/assets/text/ramaarti.txt","https://th.bing.com/th/id/R.de6322809e2a60a6f38053110d3505fa?rik=zmJSPlGHnU2BAQ&riu=http%3a%2f%2fyoumeandtrends.com%2fwp-content%2fuploads%2f2015%2f10%2fRam-sharnam-ram-ji-photos.jpg&ehk=3Bo9vy6Sj4lignJm4hWmENnwlp75wg0Nsj7AmWUBm%2fc%3d&risl=&pid=ImgRaw&r=0",
                "Shri Ram Aarti",
              ),
              card(    "lib/assets/text/vishnuaarti.txt","https://www.bhagwanphoto.com/wp-content/uploads/2020/02/Bhagwan-Vishnu-Images-HD.jpg",
                "Vishnu Aarti",
              ),
              card(    "lib/assets/text/satayanarayanaarti.txt","http://4.bp.blogspot.com/-hI3qm2c4S04/UvDGklwLB8I/AAAAAAAABlI/bTF1HB0X94c/s1600/Dasavatar+photo73292.jpg",
                "Satyanarayan Aarti",
              ),
              card(    "lib/assets/text/jagdishaarti.txt","https://2.bp.blogspot.com/-h83Lwbbv_3s/WumIq5Z2TzI/AAAAAAAABIU/MGH4F-81oYws06FtkZtwl6okaqtZgPHsgCLcBGAs/s640/vishanu%255B1%255D.jpg",
                "Jagdish Aarti",
              ),
              card(    "lib/assets/text/gangaaarti.txt","https://assets.askganesha.com/images/deities-im/maa-ganga.jpg" , "Maa Ganga Aarti" ),
            ],),

        )


    );}}
class card extends StatelessWidget {

  late String textPath;
  late String imagePath;
  late String names;

  card(this.textPath, this.imagePath, this.names);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TextReader(textPath),
          ),
        );
      },
      child: Container(
        color: Colors.grey[500],
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
        child: Card(
          elevation: 7.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          child: Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 7.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 60.0,
                      height: 60.0,
                      child: CircleAvatar(
                        radius: 16.0,
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(imagePath),
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,

                          child: Text(
                            names.tr,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10.0),
                  child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}






