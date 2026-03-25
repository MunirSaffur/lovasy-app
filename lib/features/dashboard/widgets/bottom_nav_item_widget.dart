import 'package:flutter/material.dart';
import 'package:sixam_mart/util/dimensions.dart';
import 'package:sixam_mart/util/styles.dart';

// class BottomNavItemWidget extends StatelessWidget {
//   final String selectedIcon;
//   final String unSelectedIcon;
//   final String title;
//   final Function? onTap;
//   final bool isSelected;
//   const BottomNavItemWidget({super.key, this.onTap, this.isSelected = false, required this.title, required this.selectedIcon, required this.unSelectedIcon});
//
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: InkWell(
//         onTap: onTap as void Function()?,
//         child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//
//           Image.asset(
//             isSelected ? selectedIcon : unSelectedIcon, height: 25, width: 25,
//             color: isSelected ? Theme.of(context).primaryColor : Theme.of(context).textTheme.bodyMedium!.color!,
//           ),
//
//           SizedBox(height: isSelected ? Dimensions.paddingSizeExtraSmall : Dimensions.paddingSizeSmall),
//
//           Text(
//             title,
//             style: robotoRegular.copyWith(color: isSelected ? Theme.of(context).primaryColor : Theme.of(context).textTheme.bodyMedium!.color!, fontSize: 12),
//           ),
//
//         ]),
//       ),
//     );
//   }
// }

class BottomNavItemWidget extends StatelessWidget {
  final String selectedIcon;
  final String unSelectedIcon;
  final String title;
  final Function? onTap;
  final bool isSelected;
  const BottomNavItemWidget({super.key, this.onTap, this.isSelected = false, required this.title, required this.selectedIcon, required this.unSelectedIcon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap as void Function()?,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        child: AnimatedScale(
          scale: isSelected ? 1.1 : 1.0,
          duration: const Duration(milliseconds: 200),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [

            // إضافة خلفية خفيفة جداً للأيقونة المختارة (مثل الصورة 2)
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: isSelected ? Theme.of(context).primaryColor.withValues(alpha: 0.1) : Colors.transparent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(
                isSelected ? selectedIcon : unSelectedIcon,
                height: 22, width: 22,
                color: isSelected ? Theme.of(context).primaryColor : Theme.of(context).disabledColor,
              ),
            ),

            const SizedBox(height: 4),

            Text(
              title,
              style: robotoMedium.copyWith(
                color: isSelected ? Theme.of(context).primaryColor : Theme.of(context).disabledColor,
                fontSize: 11,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),

            // خط صغير تحت النص عند الاختيار (Indicator)
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.only(top: 2),
              height: 2, width: isSelected ? 15 : 0,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}