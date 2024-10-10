import 'package:galaxy_web3/gen/assets.gen.dart';

class InstantProfits {
  final String title;
  final String content;
  final String imagePath;

  InstantProfits(
      {required this.title, required this.content, required this.imagePath});
}

List<InstantProfits> instantProfits = [
  InstantProfits(
      title: 'Introduce',
      content:
          'MetaMask is the leading self-custodial wallet. The safe and simple way to access blockchain applications and web3. Trusted by millions of usersworldwide. MetaMask provides a simple and secure way to connect to blockchain-based applications.You are always in control when interacting on the new decentralized web.',
      imagePath: Assets.images.introduce.path),
  InstantProfits(
      title: 'Your Web3 Wallet',
      content:
          'Available as a browser extension and as a mobile app, MetaMask equips you with a key vault, secure login, token wallet, and more—everything you need to manage your digital assets.',
      imagePath: Assets.images.yourWalletWeb3.path),
  InstantProfits(
      title: 'Explore Blockchain Apps',
      content:
          'MetaMask generates passwords and keys on your device, so only you have access to your accounts and data. You always choose what to share and what to keep private.',
      imagePath: Assets.images.blockchainApps.path),
  InstantProfits(
      title: 'Own Your Data',
      content:
          'MetaMask generates passwords and keys on your device, so only you have access to your accounts and data. You always choose what to share and what to keep private.',
      imagePath: Assets.images.ownYourData.path),
];
