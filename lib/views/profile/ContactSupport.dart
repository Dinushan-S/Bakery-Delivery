import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foode/core/core_shelf.dart';
import 'package:foode/views/base.dart';
import 'package:foode/views/search/search.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSupport extends StatelessWidget {
  const ContactSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: hh(context, 50)),
          Padding(
            padding: EdgeInsets.only(left: ww(context, 10)),
            child: Material(
              borderRadius: BorderRadius.circular(hh(context, 50)),
              color: Colors.transparent,
              child: InkWell(
                onTap: () => popTo(context),
                borderRadius: BorderRadius.circular(hh(context, 50)),
                child: Container(
                  padding: EdgeInsets.all(ww(context, 10)),
                  child: SvgPicture.asset(
                    "Left".toIcon,
                    width: ww(context, 22),
                    color: textPrimary(context),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: hh(context, 50)),
          horizontalpadding(
            context,
            child: Text(
              "CONTACT SUPPORT",
              style: head36(context, textPrimary(context)),
            ),
          ),
          SizedBox(height: hh(context, 50)),
          Container(
            width: w(context),
            padding: EdgeInsets.symmetric(horizontal: w20(context)),
            child: Row(
              children: [
                SvgPicture.asset(
                  "Phone".toIcon,
                  width: ww(context, 22),
                  color: AppColors.primary,
                ),
                SizedBox(width: w20(context)),
                Text(
                  "+94 000 000 000",
                  style: body(context, textPrimary(context)),
                ),
              ],
            ),
          ),
          SizedBox(height: hh(context, 30)),
          Container(
            width: w(context),
            padding: EdgeInsets.symmetric(horizontal: w20(context)),
            child: Row(
              children: [
                SvgPicture.asset(
                  "Email Sent".toIcon,
                  width: ww(context, 22),
                  color: AppColors.primary,
                ),
                SizedBox(width: w20(context)),
                Text(
                  "royalbakeryoffl@gmail.com",
                  style: body(context, textPrimary(context)),
                ),
              ],
            ),
          ),
          SizedBox(height: hh(context, 30)),
          Container(
            width: w(context),
            padding: EdgeInsets.symmetric(horizontal: w20(context)),
            child: Row(
              children: [
                SvgPicture.asset(
                  "Chat".toIcon,
                  width: ww(context, 22),
                  color: AppColors.primary,
                ),
                SizedBox(width: w20(context)),
                // GestureDetector(
                //   onTap: () {
                //     openwhatsapp();
                //   },
                //   child: Container(
                //     padding: EdgeInsets.all(40),
                //     child: Text(" contact US"),
                //   ),
                // ),
                // Text(
                //   "chat on WhatsApp",
                //   style: body(context, textPrimary(context)),
                // ),
                TextButton(
                  onPressed: () => openwhatsapp(),
                  child: Text("chat on WhatsApp",
                      style: body(context, textPrimary(context))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void openwhatsapp() async {
    // String url = "https://api.whatsapp.com/send?phone=947777777777";
    String url = "whatsapp://send?phone=947777777777&text=Hello%20World";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print("You dont have whatsapp");
      // throw 'Could not launch $url';
    }
  }

// openwhatsapp() async{
//   var whatsapp ="+919144040888";
//   var whatsappURl_android = "whatsapp://send?phone="+whatsapp+"&text=hello";
//   var whatappURL_ios ="https://wa.me/$whatsapp?text=${Uri.parse("hello")}";

//     // android , web
//     if( await canLaunch(whatsappURl_android)){
//       await launch(whatsappURl_android);
//     }else{
//       ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: new Text("whatsapp no installed")));

//     }

// }

}
