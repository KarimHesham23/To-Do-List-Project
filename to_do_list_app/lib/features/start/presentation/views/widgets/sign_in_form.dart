import 'package:flutter/material.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:to_do_list_app/core/utils/styles.dart';
import 'package:to_do_list_app/core/widgets/custom_text_form_filed.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class SginInForm extends StatefulWidget {
  const SginInForm({super.key});

  @override
  State<SginInForm> createState() => _SginInFormState();
}

class _SginInFormState extends State<SginInForm> {
  String? selectedValue;
  List<Image> createItems() {
    List<Image> genderItems = [];
    for (int i = 1; i < 30; i++) {
      genderItems.add(Image.asset("assets/memojis/Rectangle-$i.png"));
    }
    return genderItems;
  }

  GlobalKey<FormState> fromKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: fromKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "User name",
            style: Styles.styleText16,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomTextFormFiled(
            hintText: "Enter Your Name",
            prefixIcon: const Icon(
              FontAwesomeIcons.person,
            ),
            onSaved: (p0) {},
          ),
          const SizedBox(
            height: 12,
          ),
          DropdownButtonFormField2<Image>(
            isExpanded: true,
            decoration: InputDecoration(
              prefixIcon: const Icon(
                FontAwesomeIcons.imagePortrait,
                color: Colors.white,
              ),
              fillColor: kFiledColorTextFiled,
              filled: true,
              contentPadding: const EdgeInsets.symmetric(vertical: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              // Add more decoration..
            ),
            hint: Text(
              'Select Your Icon',
              style: Styles.styleText14.copyWith(
                color: Colors.white,
              ),
            ),
            items: createItems()
                .map(
                  (item) => DropdownMenuItem<Image>(value: item, child: item),
                )
                .toList(),
            validator: (value) {
              if (value == null) {
                return 'Please select gender.';
              }
              return null;
            },
            onChanged: (value) {
              //Do something when selected item is changed.
            },
            onSaved: (value) {
              selectedValue = value.toString();
            },
            buttonStyleData: const ButtonStyleData(
              padding: EdgeInsets.only(right: 8),
            ),
            iconStyleData: const IconStyleData(
              icon: Icon(
                FontAwesomeIcons.circleChevronDown,
                color: Colors.white,
              ),
            ),
            dropdownStyleData: DropdownStyleData(
              offset: const Offset(0, -10),
              maxHeight: MediaQuery.of(context).size.height * 0.2,
              decoration: const BoxDecoration(
                color: kFiledColorTextFiled,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
              ),
            ),
            menuItemStyleData: const MenuItemStyleData(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
