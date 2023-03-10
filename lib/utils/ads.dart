import 'package:google_mobile_ads/google_mobile_ads.dart';

BannerAd? bannerAd;
InterstitialAd? interstitialAd;
InterstitialAd? interstitialVideoAd;
RewardedAd? rewardedAd;
AppOpenAd? appOpenAd;

void bannerAds(){
  bannerAd = BannerAd(
    size:AdSize.banner,
    adUnitId: "ca-app-pub-3940256099942544/6300978111",
    listener: BannerAdListener(),
    request: AdRequest(),
  );
  bannerAd!.load();

}

void interAds(){
  InterstitialAd.load(
      adUnitId: "ca-app-pub-3940256099942544/1033173712",
      request: AdRequest(),
      adLoadCallback:  InterstitialAdLoadCallback(onAdLoaded: (ad){
        interstitialAd = ad;
      },
          onAdFailedToLoad:(error){}
      )
  );
}
// void interVideoAds(){
//   InterstitialAd.load(
//       adUnitId: "ca-app-pub-3940256099942544/8691691433",
//       request: AdRequest(),
//       adLoadCallback:  InterstitialAdLoadCallback(onAdLoaded: (ad){
//         interstitialVideoAd = ad;
//       },
//           onAdFailedToLoad:(error){}
//       )
//   );
// }

// void rewardAds(){
//   RewardedAd.load(
//       adUnitId: "ca-app-pub-3940256099942544/5224354917",
//       request: AdRequest(),
//       rewardedAdLoadCallback: RewardedAdLoadCallback(onAdLoaded: (ad){
//         rewardedAd = ad;
//       },
//           onAdFailedToLoad:(error){}
//       )
//   );
//}




void openAds(){
  AppOpenAd.load(adUnitId: "ca-app-pub-3940256099942544/3419835294", request: AdRequest(), adLoadCallback: AppOpenAdLoadCallback(onAdLoaded: (ad){
    appOpenAd=ad;
  }, onAdFailedToLoad: (error){}), orientation: AppOpenAd.orientationPortrait);
}