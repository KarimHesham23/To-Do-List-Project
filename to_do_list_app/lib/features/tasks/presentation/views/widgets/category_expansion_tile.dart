import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:to_do_list_app/core/models/category_model.dart';
import 'package:to_do_list_app/core/utils/styles.dart';
import 'package:to_do_list_app/features/tasks/presentation/views/widgets/category_item.dart';

class CategoryExpansionTile extends StatefulWidget {
  const CategoryExpansionTile({super.key});

  @override
  State<CategoryExpansionTile> createState() => _TasksTileState();
}

class _TasksTileState extends State<CategoryExpansionTile> {
  List<CategoryModel> categories = [
    CategoryModel(
        categoryName: "All Tasks",
        icon: Icons.list_alt_outlined,
        color: const Color(0xffF44A7F)),
    CategoryModel(
      categoryName: "Work",
      icon: Icons.work_outline,
      color: const Color(0xff4586EE),
    ),
    CategoryModel(
        categoryName: "Personal",
        icon: Icons.personal_injury_outlined,
        color: const Color(0xffF6B707)),
    CategoryModel(
        categoryName: "Birthday",
        icon: Icons.cake_outlined,
        color: const Color(0xffC082FD)),
    CategoryModel(
        categoryName: "Wishlist",
        icon: Icons.note_alt,
        color: const Color(0xff34B467)),
    CategoryModel(
      categoryName: "No Category",
      icon: Icons.no_adult_content,
      color: Colors.grey,
    ),
  ];
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Theme(
        data: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.robotoTextTheme(ThemeData.dark().textTheme),
          highlightColor: kSecondaryColor,
          splashColor: kSecondaryColor,
        ),
        child: ExpansionTile(
          childrenPadding: EdgeInsets.zero,
          title: Text(
            "Category",
            style: Styles.styleText14,
          ),
          trailing: Icon(
            expanded
                ? CupertinoIcons.chevron_up_circle
                : CupertinoIcons.chevron_down_circle,
            size: 18,
          ),
          onExpansionChanged: (value) {
            setState(() {
              expanded = value;
            });
          },
          backgroundColor: kSecondaryColor,
          collapsedBackgroundColor: kSecondaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          collapsedShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          iconColor: Colors.white,
          collapsedIconColor: Colors.white,
          textColor: Colors.white,
          children: childrenWidgets,
        ),
      ),
    );
  }

  List<Widget> get childrenWidgets {
    return [
      Container(
        height: 10,
        color: kPrimaryColor,
      ),
      Container(
        color: kPrimaryColor,
        child: GridView.builder(
          padding: EdgeInsets.zero,
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 20,
            childAspectRatio: 4 / 1.9,
            crossAxisCount: 2,
          ),
          itemCount: 6,
          itemBuilder: (context, index) {
            return CategoryItem(
              category: categories[index],
            );
          },
        ),
      )
    ];
  }
}
