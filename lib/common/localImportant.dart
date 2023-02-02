///pushAndRemoveUntil
//Navigator.pushAndRemoveUntil(
//         context,
//         MaterialPageRoute(
//             builder: (context) => const BottomNavigationBarScreen()),
//         (route) => false);

///pushReplacement
// Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(
//             builder: (context) => const CertificateScreen()),
//       );


///push
// Navigator.push(
//         context,
//         MaterialPageRoute(
//             builder: (context) => const CertificateScreen()),
//       );


///Container decoration
// decoration: BoxDecoration(
//               color: Colors.white,
//               border: Border.all(color: doctor?kIndigoDark:Colors.red, width: 1.0),
//               borderRadius: BorderRadius.circular(5.0),
//             ),


///Card decoration
// Card(
// shape: RoundedRectangleBorder(
// side: const BorderSide(color: kIndigoDark, width: 1),
// borderRadius: BorderRadius.circular(10),
// ),)


///redirect Willpop
//Future<bool> redirectTo() async {
//     Navigator.push(context, MaterialPageRoute(builder: (context) {
//       return const MobileDashBoardScreen();
//     }));
//     return true;
//   }