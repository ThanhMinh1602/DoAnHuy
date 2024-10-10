import 'package:galaxy_web3/gen/assets.gen.dart';

class PowerLowestNetworkFeesModel {
  final String title;
  final String content;
  final String imagePath;

  PowerLowestNetworkFeesModel(
      {required this.title, required this.content, required this.imagePath});
}

List<PowerLowestNetworkFeesModel> powerLowestNetworkFees = [
  PowerLowestNetworkFeesModel(
      title: 'Introduce',
      content:
          'Polygon is a “layer two” or “sidechain” scaling solution that runs alongside the Ethereum blockchain — allowing for speedy transactions and low fees. Polygon uses a variety of technologies to create this speedy parallel blockchain and link it to the main Ethereum blockchain.',
      imagePath: Assets.icons.introduceIcon),
  PowerLowestNetworkFeesModel(
      title: 'Ability To Process Transactions Quickly',
      content:
          'By using a consensus mechanism that completes the transaction confirmation process in a single block, Polygon can maintain fast transaction processing speeds. Polygon\'s average transaction processing time is more than 32 transactions per second.',
      imagePath: Assets.icons.processIcon),
  PowerLowestNetworkFeesModel(
      title: 'Transaction Fees Are Consistently Low',
      content:
          'Polygon keeps its fees to use the platform low, with a typical transaction fee equaling less than \$0.01.',
      imagePath: Assets.icons.consistebtlyLowIcon),
  PowerLowestNetworkFeesModel(
      title: 'Interoperability And Scaling',
      content:
          ' Polygon is designed to be interoperable with Ethereum and scale without limits.',
      imagePath: Assets.icons.interoperability)
];
