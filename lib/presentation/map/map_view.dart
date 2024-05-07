import 'package:allservice/Constants/Strings/app_strings.dart';
import 'package:allservice/Constants/path/app_path.dart';
import 'package:allservice/Extensions/size_extension.dart';
import 'package:allservice/constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

import '../../Widgets/control_button.dart';
import '../../Widgets/custom_appbar.dart';
import '../../Widgets/custom_button/custom_button.dart';

class MapView extends StatelessWidget {
  const MapView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: LocAppBarCustom(),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Image.asset(
              AppPath.street,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: 340.0,
            height: MediaQuery.of(context).size.height * 0.45,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(50.0),
                topLeft: Radius.circular(100.0),
              ),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                19.h,
                const Text(
                  AppString.nearService,
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                7.h,
                const ListTile(
                  contentPadding: EdgeInsets.all(0.0),
                  title: Text(
                    AppString.userFullName,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text(
                    AppString.userLocation,
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: Icon(
                    Icons.phone,
                    size: 20.0,
                    color: AppColor.btnColor,
                  ),
                ),
                const Divider(),
                13.h,
                const ListTile(
                  contentPadding: EdgeInsets.all(0),
                  leading: Icon(
                    Icons.location_on,
                    color: AppColor.btnColor,
                  ),
                  title: Text(
                    AppString.currentAddress,
                    style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                  subtitle: Text(
                    AppString.userCurrentAddress,
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                7.h,
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: const BorderSide(
                          color: AppColor.btnColor,
                        ),
                      ),
                    ),
                  ),
                  child: const Text(
                    AppString.addNewLocationButton,
                    style: TextStyle(
                      color: AppColor.btnColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                7.h,
                const Divider()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
