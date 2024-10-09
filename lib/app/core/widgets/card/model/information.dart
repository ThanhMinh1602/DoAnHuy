import 'package:galaxy_web3/gen/assets.gen.dart';

class InformationUtils {
  final String icon;
  final String title;
  final String description;

  InformationUtils({
    required this.icon,
    required this.title,
    required this.description,
  });
}

List<InformationUtils> profileUtils = [
  InformationUtils(
    icon: Assets.images.accessibility,
    title: 'Accessibility',
    description: 'Professional Interface, Simple Operation, Start With Only 1',
  ),
  InformationUtils(
    icon: Assets.images.highLeverage,
    title: 'High Leverage',
    description: 'Get Trading Capital Up To 1000 Times Your Deposit',
  ),
  InformationUtils(
    icon: Assets.images.tradingOpportunities,
    title: 'Trading Opportunities',
    description: 'Complex Algorithm Selects Currency Pairs With Highest Spread',
  ),
  InformationUtils(
    icon: Assets.images.transparencySecurity,
    title: 'Transparency & Security',
    description:
        'Decentralized, Everything Processed In Blockchain And Smart Contracts',
  ),
];
