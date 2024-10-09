// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:galaxy_web3/app/constants/app_color.dart';
// import 'package:galaxy_web3/gen/assets.gen.dart';

// class AppBarCuastom extends StatelessWidget implements PreferredSizeWidget {
//   const AppBarCuastom({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: AppColor.appBarColor,
//       leading: IconButton(
//         onPressed: () {},
//         icon: SvgPicture.asset(
//           Assets.images.iconMenu,
//           width: 28.0,
//           height: 28.0,
//         ),
//       ),
//       title: SvgPicture.asset(Assets.images.logo, width: 36.0, height: 36.0),
//       centerTitle: true,
//       actions: [
//         OutlinedButton(
//           onPressed: () {},
//           style: const ButtonStyle(
//             textStyle: WidgetStatePropertyAll(
//                 TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
//           ),
//           child: const Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text('Connect Wallet'),
//             ],
//           ),
//         ),
//         const SizedBox(width: 16.0)
//       ],
//     );
//   }

//   @override
//   Size get preferredSize => const Size(double.infinity, 64.0);
// }
