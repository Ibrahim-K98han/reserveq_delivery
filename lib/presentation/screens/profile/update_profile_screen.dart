import 'package:delivery_ui/presentation/widgets/circle_image.dart';
import 'package:flutter/material.dart';
import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_form.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/primary_button.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final genders = ['Male', 'Female'];

    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
            text: 'Update Profile',
            fontSize: 22.0,
            fontWeight: FontWeight.w600),
      ),
      body: ListView(
        padding: Utils.symmetric(v: 24.0).copyWith(top: 10.0),
        children: [
          Center(
            child: Stack(
              children: [
                const CircleImage(
                  image: KImages.userImage,
                ),
                Positioned(
                  right: 0.0,
                  bottom: 10.0,
                  child: GestureDetector(
                    onTap: () => print("pick an image"),
                    child: const CircleAvatar(
                      maxRadius: 16.0,
                      backgroundColor: blackColor,
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: whiteColor,
                        size: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Utils.verticalSpace(16),
          Row(
            children: [
              Expanded(
                child: CustomForm(
                  label: 'First Name',
                  bottomSpace: 16.0,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'David ',
                      prefixIcon: PrefixIcon(icon: KImages.userIcons,iconColor: prefixIconColor,),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    style: Utils.inputTextStyle(),
                  ),
                ),
              ),
              Utils.horizontalSpace(6),
              Expanded(
                child: CustomForm(
                  label: 'Last Name',
                  bottomSpace: 16.0,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Milan',
                      prefixIcon: PrefixIcon(icon: KImages.userIcons,iconColor: prefixIconColor,),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    style: Utils.inputTextStyle(),
                  ),
                ),
              ),
            ],
          ),
          CustomForm(
            label: 'Email',
            bottomSpace: 16.0,
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'devid@gmail.com',
                prefixIcon: PrefixIcon(icon: KImages.message),
              ),
              keyboardType: TextInputType.emailAddress,
              style: Utils.inputTextStyle(),
            ),
          ),

          // CustomForm(label: 'Date of Birth',
          //   bottomSpace: 10.0,
          //   child: DropdownButtonFormField<ServiceCat>(
          //     //value: _cityModel,
          //     hint: const CustomText(text: '09 February 1998',),
          //     icon: const Icon(Icons.keyboard_arrow_down_outlined),
          //     decoration: const InputDecoration(
          //       isDense: true,
          //       // border: OutlineInputBorder(
          //       //   borderRadius: BorderRadius.all(Radius.circular(5)),
          //       // ),
          //     ),
          //     onTap: () {
          //       Utils.closeKeyBoard(context);
          //     },
          //     onChanged: (value) {
          //     },
          //     isDense: true,
          //     isExpanded: true,
          //     items: date
          //         .map<DropdownMenuItem<ServiceCat>>((ServiceCat value) {
          //       return DropdownMenuItem<ServiceCat>(
          //           value: value, child: Text(value.name));
          //     }).toList(),
          //   ),),
          CustomForm(
              label: 'Select Date',
              bottomSpace: 16.0,
              child: TextFormField(
                //controller: dateController,
                decoration: const InputDecoration(
                    prefixIcon: PrefixIcon(
                      icon: KImages.birth,
                    ),
                    suffixIcon: Icon(Icons.calendar_today), //icon of text field
                    hintText: "09 February 1998" //label text of field
                    ),
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      //get today's date
                      firstDate: DateTime(1960),
                      //DateTime.now() - not to allow to choose before today.
                      lastDate: DateTime(2101));
                },
              )),
          CustomForm(
            label: 'Bio',
            bottomSpace: 16.0,
            child: TextFormField(
              maxLines: 4,
              decoration: const InputDecoration(
                hintText: 'Recipe developer',
              ),
              keyboardType: TextInputType.emailAddress,
              style: Utils.inputTextStyle(),
            ),
          ),
          CustomForm(
            label: 'Select Gender',
            bottomSpace: 16.0,
            child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(
                    genders.length,
                    (index) => Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // print(genders[index]);
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                        child: Container(
                          margin: Utils.only(
                            left: 6.0,
                            right: 6.0,
                          ),
                          height: 50.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2.0,
                              color: _currentIndex == index
                                  ? greenColor
                                  : Colors.transparent,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 1,
                                blurStyle: BlurStyle.outer,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: CustomText(
                            text: genders[index],
                          )),
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
          Utils.verticalSpace(10),
          PrimaryButton(
              text: 'Update Profile',
              onPressed: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
