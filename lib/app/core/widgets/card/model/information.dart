import 'package:galaxy_web3/gen/assets.gen.dart';

class InformationUtils {
  final String imagePath;
  final String title;
  final String content;

  InformationUtils({
    required this.imagePath,
    required this.title,
    required this.content,
  });
}

List<InformationUtils> profileUtils = [
  InformationUtils(
    imagePath: Assets.images.accessibility,
    title: 'Accessibility',
    content: 'Professional Interface, Simple Operation, Start With Only 1',
  ),
  InformationUtils(
    imagePath: Assets.images.highLeverage,
    title: 'High Leverage',
    content: 'Get Trading Capital Up To 1000 Times Your Deposit',
  ),
  InformationUtils(
    imagePath: Assets.images.tradingOpportunities,
    title: 'Trading Opportunities',
    content: 'Complex Algorithm Selects Currency Pairs With Highest Spread',
  ),
  InformationUtils(
    imagePath: Assets.images.transparencySecurity,
    title: 'Transparency & Security',
    content:
        'Decentralized, Everything Processed In Blockchain And Smart Contracts',
  ),
];

List<InformationUtils> instantProfits = [
  InformationUtils(
      title: 'Introduce',
      content:
          'MetaMask is the leading self-custodial wallet. The safe and simple way to access blockchain applications and web3. Trusted by millions of usersworldwide. MetaMask provides a simple and secure way to connect to blockchain-based applications.You are always in control when interacting on the new decentralized web.',
      imagePath: Assets.images.introduce.path),
  InformationUtils(
      title: 'Your Web3 Wallet',
      content:
          'Available as a browser extension and as a mobile app, MetaMask equips you with a key vault, secure login, token wallet, and more—everything you need to manage your digital assets.',
      imagePath: Assets.images.yourWalletWeb3.path),
  InformationUtils(
      title: 'Explore Blockchain Apps',
      content:
          'MetaMask generates passwords and keys on your device, so only you have access to your accounts and data. You always choose what to share and what to keep private.',
      imagePath: Assets.images.blockchainApps.path),
  InformationUtils(
      title: 'Own Your Data',
      content:
          'MetaMask generates passwords and keys on your device, so only you have access to your accounts and data. You always choose what to share and what to keep private.',
      imagePath: Assets.images.ownYourData.path),
];

List<InformationUtils> powerLowestNetworkFees = [
  InformationUtils(
      title: 'Introduce',
      content:
          'Polygon is a “layer two” or “sidechain” scaling solution that runs alongside the Ethereum blockchain — allowing for speedy transactions and low fees. Polygon uses a variety of technologies to create this speedy parallel blockchain and link it to the main Ethereum blockchain.',
      imagePath: Assets.icons.introduceIcon),
  InformationUtils(
      title: 'Ability To Process Transactions Quickly',
      content:
          'By using a consensus mechanism that completes the transaction confirmation process in a single block, Polygon can maintain fast transaction processing speeds. Polygon\'s average transaction processing time is more than 32 transactions per second.',
      imagePath: Assets.icons.processIcon),
  InformationUtils(
      title: 'Transaction Fees Are Consistently Low',
      content:
          'Polygon keeps its fees to use the platform low, with a typical transaction fee equaling less than \$0.01.',
      imagePath: Assets.icons.consistebtlyLowIcon),
  InformationUtils(
      title: 'Interoperability And Scaling',
      content:
          ' Polygon is designed to be interoperable with Ethereum and scale without limits.',
      imagePath: Assets.icons.interoperability)
];
List<InformationUtils> protocls = [
  InformationUtils(
    imagePath: Assets.images.openSourceImg.path,
    title: 'Open-Source',
    content:
        'Aave is completely open-source. You have access to all of its code due to the fact that Aave is powered by smart contracts. The protocol has gone through several security audits. And if you don’t think that the project is safe, you can always inspect Aave’s smart contracts yourself.',
  ),
  InformationUtils(
    imagePath: Assets.images.strongTokenomicsImg.path,
    title: 'Strong Tokenomics ',
    content:
        'The AAVE governance token has incredibly strong tokenomics. a majority of the tokens have gone towards development and marketing. Only 23% of the tokens went to the founders while 77% went to people who invested in the protocol.\nCore development: 30%\nUser experience development: 20%\nManagment and legal: 20%\nPromotions and marketing: 20%\nMiscellaneous costs: 10%',
  ),
  InformationUtils(
    imagePath: Assets.images.reputationImg.path,
    title: 'Reputation',
    content:
        'The AAVE governance token has incredibly strong tokenomics. a majority of the tokens have gone towards development and marketing. Only 23% of the tokens went to the founders while 77% went to people who invested in the protocol.\nCore development: 30%\nUser experience development: 20%\nManagment and legal: 20%\nPromotions and marketing: 20%\nMiscellaneous costs: 10%',
  ),
  InformationUtils(
    imagePath: Assets.images.decentralizedGovernanceImg.path,
    title: 'Decentralized Governance',
    content:
        'The Aave protocol aligns with the decentralized governance model. This model allows the protocol users to vote on future changes and the upcoming direction of the protocol.',
  ),
];

List<InformationUtils> flashLoans = [
  InformationUtils(
    imagePath: '',
    title: 'Multiple Assets',
    content:
        'Aave supports the lending and borrowing of multiple assets, including Ethereum and other ERC-20 tokens. This allows users to diversify their portfolios and access a broader range of assets.',
  ),
  InformationUtils(
      imagePath: '',
      title: 'No Credit Check',
      content:
          'Aave does not require a credit check to lend or borrow assets. This allows users who may not have access to traditional lending options to participate.'),
  InformationUtils(
      imagePath: '',
      title: 'No collateral required',
      content:
          'This eliminates the borrower’s worry of being liquidated and increases market liquidity.'),
  InformationUtils(
    imagePath: '',
    title: 'Versatility',
    content:
        'Flash Loans can be utilized in various services such as arbitrage, yield farming, etc. Additionally, they can be combined with different sectors in DeFi like trading, lending & borrowing, yield farming, etc.',
  ),
  InformationUtils(
    imagePath: '',
    title: 'Speed',
    content:
        'Borrowers can earn immediate profits, and lenders can earn interest within a short period.',
  ),
];
