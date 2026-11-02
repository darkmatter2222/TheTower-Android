package com.ironsource.adqualitysdk.sdk.i;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.adqualitysdk.sdk.StringFog;
import com.mbridge.msdk.newreward.player.BaseActivity;
import com.mbridge.msdk.newreward.player.MBRewardVideoActivity;
import com.mintegral.msdk.MIntegralConstans;
import com.mintegral.msdk.MIntegralSDK;
import com.mintegral.msdk.activity.DomainMTGCommonActivity;
import com.mintegral.msdk.activity.MTGCommonActivity;
import com.mintegral.msdk.appwall.BottomRefreshListView;
import com.mintegral.msdk.appwall.MintegralAdActivity;
import com.mintegral.msdk.appwall.ShuffleFragment;
import com.mintegral.msdk.appwall.TabListFragment;
import com.mintegral.msdk.appwall.WallFragment;
import com.mintegral.msdk.appwall.report.eventcache.ImpressionCampaignExModel;
import com.mintegral.msdk.appwall.service.WallService;
import com.mintegral.msdk.appwall.view.WallViewPager;
import com.mintegral.msdk.appwall.viewpager.indicater.TabPageIndicator;
import com.mintegral.msdk.appwallex.TabListView;
import com.mintegral.msdk.appwallex.WallView;
import com.mintegral.msdk.base.entity.CampaignEx;
import com.mintegral.msdk.base.entity.CampaignUnit;
import com.mintegral.msdk.base.fragment.BaseFragment;
import com.mintegral.msdk.base.webview.BrowserView;
import com.mintegral.msdk.base.webview.WebViewFragment;
import com.mintegral.msdk.click.AppReceiver;
import com.mintegral.msdk.click.CommonJumpLoader;
import com.mintegral.msdk.interstitial.jscommon.interstitial;
import com.mintegral.msdk.interstitial.view.MTGInterstitialActivity;
import com.mintegral.msdk.interstitialvideo.out.InterstitialVideoListener;
import com.mintegral.msdk.interstitialvideo.out.MTGBidInterstitialVideoHandler;
import com.mintegral.msdk.interstitialvideo.out.MTGInterstitialVideoHandler;
import com.mintegral.msdk.mtgbanner.view.MTGBannerWebView;
import com.mintegral.msdk.mtgbid.out.BidManager;
import com.mintegral.msdk.mtgbid.out.BidResponsed;
import com.mintegral.msdk.mtgjscommon.authority.activity.MTGAuthorityActivity;
import com.mintegral.msdk.mtgjscommon.base.BaseWebView;
import com.mintegral.msdk.mtgjscommon.windvane.WindVaneWebView;
import com.mintegral.msdk.out.AppWallTrackingListener;
import com.mintegral.msdk.out.BannerAdListener;
import com.mintegral.msdk.out.Campaign;
import com.mintegral.msdk.out.IDownloadListener;
import com.mintegral.msdk.out.InterstitialListener;
import com.mintegral.msdk.out.LoadingActivity;
import com.mintegral.msdk.out.MIntegralSDKFactory;
import com.mintegral.msdk.out.MTGBannerView;
import com.mintegral.msdk.out.MTGBidRewardVideoHandler;
import com.mintegral.msdk.out.MTGConfiguration;
import com.mintegral.msdk.out.MTGInterstitialHandler;
import com.mintegral.msdk.out.MTGOfferWallHandler;
import com.mintegral.msdk.out.MTGRewardVideoHandler;
import com.mintegral.msdk.out.MtgBidCommonHandler;
import com.mintegral.msdk.out.MtgWallHandler;
import com.mintegral.msdk.out.NativeListener;
import com.mintegral.msdk.out.OnMTGMediaViewListener;
import com.mintegral.msdk.out.RewardVideoListener;
import com.mintegral.msdk.reward.player.MTGRewardVideoActivity;
import com.mintegral.msdk.rover.RoverCampaignUnit;
import com.mintegral.msdk.shell.MTGActivity;
import com.mintegral.msdk.video.js.activity.AbstractActivity;
import com.mintegral.msdk.video.js.activity.AbstractJSActivity;
import com.mintegral.msdk.video.js.activity.VideoWebViewActivity;
import com.mintegral.msdk.video.module.MintegralBaseView;
import com.mintegral.msdk.video.module.MintegralClickCTAView;
import com.mintegral.msdk.video.module.MintegralClickMiniCardView;
import com.mintegral.msdk.video.module.MintegralContainerView;
import com.mintegral.msdk.video.module.MintegralH5EndCardView;
import com.mintegral.msdk.video.module.MintegralLandingPageView;
import com.mintegral.msdk.video.module.MintegralNativeEndCardView;
import com.mintegral.msdk.video.module.MintegralPlayableView;
import com.mintegral.msdk.video.module.MintegralVastEndCardView;
import com.mintegral.msdk.video.module.MintegralVideoView;
import com.mintegral.msdk.videocommon.dialog.MTGAlertDialog;
import com.mintegral.msdk.videocommon.listener.InterVideoOutListener;
import com.mintegral.msdk.widget.MTGImageView;
import java.util.HashMap;
import kotlin.fh;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ḯ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0782 extends AbstractC0278 {

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f2964 = StringFog.decrypt("MNwgRb9sMQs+3jpDpg==\n", "V7lUBt4BQWo=\n");

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f2963 = StringFog.decrypt("8q2zVpqEyS4=\n", "lcjHF/7ygEo=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f2962 = StringFog.decrypt("WV2UGYdnVWZzfKE7nGBcYQ==\n", "FAnTWugJMw8=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f2961 = StringFog.decrypt("xJA0TJIO89btkhp6khbTx/2tBXeDAA==\n", "icRzHvd5kqQ=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f2960 = StringFog.decrypt("+LAQMPCXlifckC4=\n", "teRXcZPj/1E=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f2959 = StringFog.decrypt("3iGJEhFgQJn9NK0lF3tEguo=\n", "k3XOUX4NLfY=\n");

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f2958 = StringFog.decrypt("iB/lPjj6+jG3ItYGDO3mN7Mi1gY=\n", "xUuif02Okl4=\n");

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f2957 = StringFog.decrypt("HgXXXn6Z6g8gJfljeYzjNTI/9Ht1nw==\n", "U1GQFxDtj30=\n");

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public static final String f2956 = StringFog.decrypt("bRAohjOkrbpTMAa7NLGknkkgCqAVsaasTCEd\n", "IERvz13QyMg=\n");

    /* JADX INFO: renamed from: ト, reason: contains not printable characters */
    public static final String f2955 = StringFog.decrypt("B5lQdRZsUZMum35DFnR4gCSpe0IB\n", "Ss0XJ3MbMOE=\n");

    /* JADX INFO: renamed from: ゥ, reason: contains not printable characters */
    public static final String f2954 = StringFog.decrypt("IDqGZYuUOhIZC7NUlpkHFQwCl06GlRw0DAClS4eC\n", "bW7BJ+Lwc3w=\n");

    /* JADX INFO: renamed from: へ, reason: contains not printable characters */
    public static final String f2953 = StringFog.decrypt("cnfAgXo8ZCtIQvWnRTFSK1Br5q13NFM8\n", "PyOHwxNYNk4=\n");

    /* JADX INFO: renamed from: っ, reason: contains not printable characters */
    public static final String f2952 = StringFog.decrypt("9kr2vY8DGELJSNiamQ==\n", "ux6x/+5tdic=\n");

    /* JADX INFO: renamed from: く, reason: contains not printable characters */
    public static final String f2951 = StringFog.decrypt("w+MCBbX27+fF6x1KtLHs4MTnQUSt66/e9MstSrbx5OH25Qpc\n", "oIxvK9ifgZM=\n");

    /* JADX INFO: renamed from: Ↄ, reason: contains not printable characters */
    public static final String f2950 = StringFog.decrypt("gwbtqNmgI6a8Bc+I7qcotA==\n", "zlKq6rjOTcM=\n");

    /* JADX INFO: renamed from: Ⅽ, reason: contains not printable characters */
    public static final String f2949 = StringFog.decrypt("8SR13PFQSjP3LGqT8BdJNPYgNp/oXkYm/CV9gLJPTSLlZVWm23tFKfwuaqX5W3Iu9zw=\n", "kksY8pw5JEc=\n");

    /* JADX INFO: renamed from: K, reason: contains not printable characters */
    public static final String f2948 = StringFog.decrypt("oH9hZ12S4Gaae2N/\n", "9x4NCxvggQE=\n");

    /* JADX INFO: renamed from: Ύ, reason: contains not printable characters */
    public static final String f2947 = StringFog.decrypt("jJhrVmJvPJqKkHQZYyg/nYucKBl/diWPg5soL25qPqidlmEVamgm\n", "7/cGeA8GUu4=\n");

    /* JADX INFO: renamed from: Ὺ, reason: contains not printable characters */
    public static final String f2946 = StringFog.decrypt("dKEnYQAwYLJHsDRdCDJrqlyiI1MPOX4=\n", "NdFXNmFcDOY=\n");

    /* JADX INFO: renamed from: Ῡ, reason: contains not printable characters */
    public static final String f2945 = StringFog.decrypt("p1qaq/hBq+OBWp+K9Fyr\n", "8zv455Ey36U=\n");

    /* JADX INFO: renamed from: Ῠ, reason: contains not printable characters */
    public static final String f2944 = StringFog.decrypt("KqlH6SWVFpcLoFXiJpcH\n", "ecEyj0P5c9E=\n");

    /* JADX INFO: renamed from: Ὑ, reason: contains not printable characters */
    public static final String f2943 = StringFog.decrypt("iKoEpOT1xSestxWj49T+Mb6TGbX8\n", "ysVw0IuYl0I=\n");

    /* JADX INFO: renamed from: Ṿ, reason: contains not printable characters */
    public static final String f2942 = StringFog.decrypt("CjvMTnaez70wPsd9do3Fhg==\n", "XlquHhf5qvQ=\n");

    /* JADX INFO: renamed from: Ḽ, reason: contains not printable characters */
    public static final String f2941 = StringFog.decrypt("K5CVcJiJ798skJ55vA==\n", "fPH5HM7giqg=\n");

    /* JADX INFO: renamed from: Ḹ, reason: contains not printable characters */
    public static final String f2940 = StringFog.decrypt("GOyNgqlA6Kse5JLNqAfrrB/ozs20WfG+F+/O2q1M8fEs4ozAkkDjqCvih8m2\n", "e4PgrMQpht8=\n");

    /* JADX INFO: renamed from: Ḟ, reason: contains not printable characters */
    public static final String f2939 = StringFog.decrypt("8ZjMapAmKtXPmsU=\n", "pvmgBsNDWKM=\n");

    /* JADX INFO: renamed from: ᵆ, reason: contains not printable characters */
    public static final String f2938 = StringFog.decrypt("h/6zTtnl+bmh/YBd0ebruan9hkTx+e61og==\n", "zpPDPLyWitA=\n");

    /* JADX INFO: renamed from: ᘥ, reason: contains not printable characters */
    public static final String f2937 = StringFog.decrypt("f5fEFlkptfVCk9E=\n", "K/amWjBawaM=\n");

    /* JADX INFO: renamed from: ᗀ, reason: contains not printable characters */
    public static final String f2936 = StringFog.decrypt("CDn3+8X7EY4=\n", "X1ibl5OSdPk=\n");

    /* JADX INFO: renamed from: ᖺ, reason: contains not printable characters */
    public static final String f2935 = StringFog.decrypt("3qZZOPs9gGDYrkZ3+nqDZ9miGnfmJJl10aVRbrgDj3jRn11z4Q==\n", "vck0FpZU7hQ=\n");

    /* JADX INFO: renamed from: ᖸ, reason: contains not printable characters */
    public static final String f2934 = StringFog.decrypt("YZi3qvD0qTlnkKjl8bOqPmac9Ob87qJjdZK48vT4sGNAhbXz7vi1G2uSrQ==\n", "AvfahJ2dx00=\n");

    /* JADX INFO: renamed from: ᖭ, reason: contains not printable characters */
    public static final String f2933 = StringFog.decrypt("tnMj1i6QHPqtTgHo\n", "+ydkn0Pxe58=\n");

    /* JADX INFO: renamed from: ᖫ, reason: contains not printable characters */
    public static final String f2932 = StringFog.decrypt("y5ILp35mqnfNmhTofyGpcMyWSP56a6Nm3NMr3VRGqWLPmDDgdng=\n", "qP1miRMPxAM=\n");

    /* JADX INFO: renamed from: ᖩ, reason: contains not printable characters */
    public static final String f2931 = StringFog.decrypt("/lVXfTptdwrcW0h/Jnt4Dtg=\n", "rDohGEguFmc=\n");

    /* JADX INFO: renamed from: ᖅ, reason: contains not printable characters */
    public static final String f2930 = StringFog.decrypt("FsTHKNy7eQI63sQT2KU=\n", "W7Cgf73XFUo=\n");

    /* JADX INFO: renamed from: ᕆ, reason: contains not printable characters */
    public static final String f2929 = StringFog.decrypt("Mc2L9WD5hE4r+KDWTv6PWBD8vg==\n", "fJnMugaf4Tw=\n");

    /* JADX INFO: renamed from: ᕄ, reason: contains not printable characters */
    public static final String f2928 = StringFog.decrypt("7fUG02pFt6nN7A7/S0CaoszkEw==\n", "oIFhkQMh9MY=\n");

    /* JADX INFO: renamed from: ᕃ, reason: contains not printable characters */
    public static final String f2927 = StringFog.decrypt("RXG990Sl3BBiag==\n", "BxjZuiXLvXc=\n");

    /* JADX INFO: renamed from: ᕂ, reason: contains not printable characters */
    public static final String f2926 = StringFog.decrypt("UlIyfROD10d+SDNL\n", "EDtWL3bwpyg=\n");

    /* JADX INFO: renamed from: ᔽ, reason: contains not printable characters */
    public static final String f2925 = StringFog.decrypt("RqKX1BiI8ulAqoibGc/x7kGm1JcBhvbuRqKXlxqPsv9Evp/UN4Dv+HKomKwchOs=\n", "Jc36+nXhnJ0=\n");

    /* JADX INFO: renamed from: ᔺ, reason: contains not printable characters */
    public static final String f2924 = StringFog.decrypt("wdx0MV/ymc/H1Gt+XrWayMbYN3JG/J3Iwdx0cl312czL3X1pU/WSlfXad3tk+pne9dZ7SVv+gA==\n", "orMZHzKb97s=\n");

    /* JADX INFO: renamed from: ᔹ, reason: contains not printable characters */
    public static final String f2923 = StringFog.decrypt("GzoanrQCpG8SBzyztwA=\n", "Vm5d39hn1hs=\n");

    /* JADX INFO: renamed from: ᔲ, reason: contains not printable characters */
    public static final String f2922 = StringFog.decrypt("ydccfKVfbf3P3wMzpBhu+s7TXyShUmbmydccP6dYLe3D2R09rxhO3e35HTe6Qkfgy9QeNQ==\n", "qrhxUsg2A4k=\n");

    /* JADX INFO: renamed from: ᔱ, reason: contains not printable characters */
    public static final String f2921 = StringFog.decrypt("AGYb8TNDouMGbgS+MgSh5AdiWKk3Tqn4TWQZuytGqbkuYBirO02+9g9fH7s7RZr+Bn4=\n", "Ywl2314qzJc=\n");

    /* JADX INFO: renamed from: ᓮ, reason: contains not printable characters */
    public static final String f2920 = StringFog.decrypt("klYXerEczqaUXgg1sFvNoZVSVCK1EcW931QVMKkZxfy8UBQguRLSs51vGyeoMM62slgIMIocxaU=\n", "8Tl6VNx1oNI=\n");

    /* JADX INFO: renamed from: ᐱ, reason: contains not printable characters */
    public static final String f2919 = StringFog.decrypt("c36f2ehLPot1doCW6Qw9jHR63IHsRjWQPnydk/BONdFdeJyD4EUinnxfk4PsVDW6fnWxlvdGBpZ1\nZg==\n", "EBHy94UiUP8=\n");

    /* JADX INFO: renamed from: Ꮭ, reason: contains not printable characters */
    public static final String f2918 = StringFog.decrypt("Tmj6rBhnDHFIYOXjGSAPdklsufQcagdqA2r45gBiBytgbvn2EGkQZEFE++sWZSFRbFH+5wI=\n", "LQeXgnUOYgU=\n");

    /* JADX INFO: renamed from: Ꮧ, reason: contains not printable characters */
    public static final String f2917 = StringFog.decrypt("RuT6Zp4B+wxA7OUpn0b4C0HguT6aDPAXC+b4LIYE8FZo4vk8lg/nGUnJ9juWPvwdUg==\n", "JYuXSPNolXg=\n");

    /* JADX INFO: renamed from: პ, reason: contains not printable characters */
    public static final String f2916 = StringFog.decrypt("iNzBRKI5clCO1N4Lo35xV4/YghymNHlLxd7DDro8eQqm2sIeqjduRYfwwAOsO1FNhdrvC700Sk2O\nxA==\n", "67Osas9QHCQ=\n");

    /* JADX INFO: renamed from: ე, reason: contains not printable characters */
    public static final String f2915 = StringFog.decrypt("muvpXsOMb+Kc4/YRwsts5Z3vqgbHgWT51+nrFNuJZLi07eoEy4Jz95XH6x7ahGj4nPbSGcuS\n", "+YSEcK7lAZY=\n");

    /* JADX INFO: renamed from: ງ, reason: contains not printable characters */
    public static final String f2914 = StringFog.decrypt("ALcMoAtQ6W8GvxPvChfqaAezT/gPXeJ0TbUO6hNV4jUusQ/6A171eg+QVMsIXcR6Ebw35wNO\n", "Y9hhjmY5hxs=\n");

    /* JADX INFO: renamed from: อ, reason: contains not printable characters */
    public static final String f2913 = StringFog.decrypt("TFVlxd2xu2ZKXXqK3Pa4YUtRJp3ZvLB9AVdnj8W0sDxiU2af1b+nc0N2aYXUsbt1f1tvjuaxsGU=\n", "LzoI67DY1RI=\n");

    /* JADX INFO: renamed from: ม, reason: contains not printable characters */
    public static final String f2912 = StringFog.decrypt("5Kw/2b3rpATipCCWvKynA+OofIG55q8fqa49k6Xur17KqjyDteW4EeuTPpap46gc4pU7kqc=\n", "h8NS99CCynA=\n");

    /* JADX INFO: renamed from: น, reason: contains not printable characters */
    public static final String f2911 = StringFog.decrypt("8NnnWBPtfyfW1vxlMddWKszDz2Ix0g==\n", "v7eqDFSgGkM=\n");

    /* JADX INFO: renamed from: ต, reason: contains not printable characters */
    public static final String f2910 = StringFog.decrypt("mGkW3L+uusibRRTQu6+Z3b9yEsu/tI4=\n", "3AZ7vdbA95w=\n");

    /* JADX INFO: renamed from: ฑ, reason: contains not printable characters */
    public static final String f2909 = StringFog.decrypt("uO3GC1NdABu+5dlEUhoDHL/phURdQAcZsvbSC3pbAw6y7OZxeXcBArbtxWRdQAcZsvbS\n", "24KrJT40bm8=\n");

    /* JADX INFO: renamed from: ঢ়, reason: contains not printable characters */
    public static final String f2908 = StringFog.decrypt("hc+0FPDnTtSe5IIU6MdfxKH7jwX+\n", "yI3mcYeGPLA=\n");

    /* JADX INFO: renamed from: ষ, reason: contains not printable characters */
    public static final String f2907 = StringFog.decrypt("Ua4LJI79R+VWpgMkjuxR5xyvA32R+kLtQKVIeo/+TOlA7ytIsfpC7UClMGOH+lrNUbUPfIrrTA==\n", "MsFmCuOfNYw=\n");

    /* JADX INFO: renamed from: ঘ, reason: contains not printable characters */
    public static final String f2906 = StringFog.decrypt("OWXcsmvsmgUNbduu\n", "ewSv1yqP7mw=\n");

    /* JADX INFO: renamed from: খ, reason: contains not printable characters */
    public static final String f2905 = StringFog.decrypt("12+bVmF2THrQZ5NWYWdaeJpukw9+cUlyxmTYCGB1R3bGLrQZf3F/cMBpgBF4bQ==\n", "tAD2eAwUPhM=\n");

    public C0782(String str) {
        super(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾇ */
    public final HashMap mo1848() {
        HashMap map = new HashMap();
        map.put(StringFog.decrypt("VmvC2NREm+JWfNf57m6k\n", "MQ62lb0q74c=\n"), new C0873(this));
        map.put(f2964, new C0871(this));
        map.put(StringFog.decrypt("W0SeC+eG9ntbRKQ664A=\n", "PCHqW4blnRo=\n"), new C0860(this));
        map.put(StringFog.decrypt("tJqjSp9TgXCGjbs=\n", "0//XCfM64hs=\n"), new C0847(this));
        map.put(StringFog.decrypt("Mf3ESgk9TXgv6NU=\n", "VpiwBmBTJiw=\n"), new C0846(this));
        map.put(StringFog.decrypt("2LJ2CuQ3VTPqpW4=\n", "v9cCQ4lWMlY=\n"), new C0845(this));
        map.put(StringFog.decrypt("8x7J6DUKff7mFw==\n", "lHu9oVZlE6s=\n"), new C0844(this));
        map.put(StringFog.decrypt("K7TzHEASaQ==\n", "TNGHXSRbDQ8=\n"), new C0827(this));
        map.put(f2963, new C0826(this));
        map.put(StringFog.decrypt("hTOjyDP82oqHAL7iN+fnjoM1vO887+CIkD+54Q==\n", "4lbXhlKIs/w=\n"), new C0922(this));
        map.put(StringFog.decrypt("U5QbE/19YAtSpwY061JqIkmCGzTydnw=\n", "IPFvUZwTDm4=\n"), new C0918(this));
        map.put(StringFog.decrypt("Dtr/heWQHt8M\n", "ab+LxIHEZ68=\n"), new C0915(this));
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:311:0x05c9  */
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾒ */
    public final Class mo1849(String str) {
        byte b;
        switch (str.hashCode()) {
            case -2128525576:
                if (!str.equals(f2937)) {
                    b = -1;
                } else {
                    b = 40;
                }
                break;
            case -2127096804:
                if (!str.equals(f2947)) {
                    b = -1;
                } else {
                    b = Ascii.SUB;
                }
                break;
            case -2107186802:
                if (!str.equals(StringFog.decrypt("aIS2daT8tt9qjLFot/eSyQ==\n", "JuXCHNKZ97s=\n"))) {
                    b = -1;
                } else {
                    b = Ascii.GS;
                }
                break;
            case -2088438133:
                if (!str.equals(f2916)) {
                    b = -1;
                } else {
                    b = 80;
                }
                break;
            case -2083223016:
                if (!str.equals(f2954)) {
                    b = -1;
                } else {
                    b = Ascii.ETB;
                }
                break;
            case -2030516682:
                if (!str.equals(f2918)) {
                    b = -1;
                } else {
                    b = 76;
                }
                break;
            case -1980005015:
                if (!str.equals(StringFog.decrypt("PDHYJpDu+gEZNd0dnOX5\n", "a1S6cPmLjUc=\n"))) {
                    b = -1;
                } else {
                    b = 47;
                }
                break;
            case -1978654101:
                if (!str.equals(f2932)) {
                    b = -1;
                } else {
                    b = 51;
                }
                break;
            case -1969670564:
                if (!str.equals(f2912)) {
                    b = -1;
                } else {
                    b = 88;
                }
                break;
            case -1940754118:
                if (!str.equals(StringFog.decrypt("ha8uG5pdE2qOnhwMnFUGd7C0\n", "xM1db+g8cB4=\n"))) {
                    b = -1;
                } else {
                    b = 5;
                }
                break;
            case -1919192581:
                if (!str.equals(StringFog.decrypt("vC4qs4t43SGCDgSOjG3UEpIOBIyMeME=\n", "8Xpt+uUMuFM=\n"))) {
                    b = -1;
                } else {
                    b = Ascii.SO;
                }
                break;
            case -1876403509:
                if (!str.equals(f2942)) {
                    b = -1;
                } else {
                    b = 35;
                }
                break;
            case -1874906197:
                if (!str.equals(StringFog.decrypt("Eiq2rOyzulUzFbmr/ZGmUBwiqrzfva1D\n", "X0PY2InUyDQ=\n"))) {
                    b = -1;
                } else {
                    b = 71;
                }
                break;
            case -1812546352:
                if (!str.equals(f2919)) {
                    b = -1;
                } else {
                    b = 74;
                }
                break;
            case -1766796574:
                if (!str.equals(StringFog.decrypt("ECXNToHZuGo/J9JOmdugcS0w3EmSzg==\n", "XkS5J/e87Bg=\n"))) {
                    b = -1;
                } else {
                    b = Ascii.FS;
                }
                break;
            case -1702626105:
                if (!str.equals(StringFog.decrypt("Hjdb0GtzH/A/CFzAa3s7+DYp\n", "U141pA4UbZE=\n"))) {
                    b = -1;
                } else {
                    b = 69;
                }
                break;
            case -1674303146:
                if (!str.equals(f2962)) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case -1656370481:
                if (!str.equals(StringFog.decrypt("97j88TmPLMX3tPDDBos1\n", "oNGSlW/uQqA=\n"))) {
                    b = -1;
                } else {
                    b = 65;
                }
                break;
            case -1537112313:
                if (!str.equals(StringFog.decrypt("FieD6zGGxDUrKrLkPo/EOScYjeAn\n", "RU7khVDqk1w=\n"))) {
                    b = -1;
                } else {
                    b = 94;
                }
                break;
            case -1522474666:
                if (!str.equals(f2910)) {
                    b = -1;
                } else {
                    b = 96;
                }
                break;
            case -1507367077:
                if (!str.equals(f2953)) {
                    b = -1;
                } else {
                    b = Ascii.CAN;
                }
                break;
            case -1458291270:
                if (!str.equals(f2959)) {
                    b = -1;
                } else {
                    b = 7;
                }
                break;
            case -1325137233:
                if (!str.equals(f2960)) {
                    b = -1;
                } else {
                    b = 6;
                }
                break;
            case -1265212384:
                if (!str.equals(StringFog.decrypt("CbwTupLIHuQpsCOxkfI14C0=\n", "WtV01POkXIU=\n"))) {
                    b = -1;
                } else {
                    b = 92;
                }
                break;
            case -1077685820:
                if (!str.equals(f2929)) {
                    b = -1;
                } else {
                    b = 56;
                }
                break;
            case -1061727315:
                if (!str.equals(f2950)) {
                    b = -1;
                } else {
                    b = Ascii.DC2;
                }
                break;
            case -1058625022:
                if (!str.equals(StringFog.decrypt("X9L+qjutL4N/z+ulObUksk3Y7a0sqBqY\n", "DLuZxFrBbuE=\n"))) {
                    b = -1;
                } else {
                    b = 91;
                }
                break;
            case -931831919:
                if (!str.equals(f2952)) {
                    b = -1;
                } else {
                    b = Ascii.DLE;
                }
                break;
            case -920590771:
                if (!str.equals(StringFog.decrypt("OeuP9y12klkYwY7tPHCJVhHwt+otZg==\n", "dILhg0gR4Dg=\n"))) {
                    b = -1;
                } else {
                    b = 81;
                }
                break;
            case -894298414:
                if (!str.equals(StringFog.decrypt("l6lkqZ4FUey2jGuznwtN6oqhbbitC0b6\n", "2sAK3ftiI40=\n"))) {
                    b = -1;
                } else {
                    b = 85;
                }
                break;
            case -811615267:
                if (!str.equals(f2915)) {
                    b = -1;
                } else {
                    b = 82;
                }
                break;
            case -667901878:
                if (!str.equals(StringFog.decrypt("kMzFDDPQEdSx7Z49ONMg1K/B/REzwA==\n", "3aWreFa3Y7U=\n"))) {
                    b = -1;
                } else {
                    b = 83;
                }
                break;
            case -558926374:
                if (!str.equals(f2914)) {
                    b = -1;
                } else {
                    b = 84;
                }
                break;
            case -495785498:
                if (!str.equals(f2908)) {
                    b = -1;
                } else {
                    b = 98;
                }
                break;
            case -464794090:
                if (!str.equals(f2946)) {
                    b = -1;
                } else {
                    b = Ascii.RS;
                }
                break;
            case -461263347:
                if (!str.equals(f2940)) {
                    b = -1;
                } else {
                    b = 37;
                }
                break;
            case -396369642:
                if (!str.equals(f2909)) {
                    b = -1;
                } else {
                    b = 97;
                }
                break;
            case -249445036:
                if (!str.equals(f2941)) {
                    b = -1;
                } else {
                    b = 36;
                }
                break;
            case -228661957:
                if (!str.equals(f2920)) {
                    b = -1;
                } else {
                    b = 72;
                }
                break;
            case -201859056:
                if (!str.equals(f2927)) {
                    b = -1;
                } else {
                    b = Base64.padSymbol;
                }
                break;
            case -156796625:
                if (!str.equals(StringFog.decrypt("IRZvfkcrooAAPWB5Rxq5hBs=\n", "bH8BCiJM0OE=\n"))) {
                    b = -1;
                } else {
                    b = 77;
                }
                break;
            case -126256187:
                if (!str.equals(StringFog.decrypt("b58Eyw8kVIJClwLPFS1VhlQ=\n", "JttrvGFIO+M=\n"))) {
                    b = -1;
                } else {
                    b = 59;
                }
                break;
            case -121577375:
                if (!str.equals(StringFog.decrypt("teyPtJQCuFeU9qWL\n", "+KXhwPFlyjY=\n"))) {
                    b = -1;
                } else {
                    b = 52;
                }
                break;
            case -75274960:
                if (!str.equals(StringFog.decrypt("RZrxItkff9Q=\n", "BvucUrh2GLo=\n"))) {
                    b = -1;
                } else {
                    b = 9;
                }
                break;
            case -33766813:
                if (!str.equals(StringFog.decrypt("rWuIRwrLovqQbJ1OLtGy9otJlVEM3bj2lg==\n", "5AX8Ini41pM=\n"))) {
                    b = -1;
                } else {
                    b = Ascii.FF;
                }
                break;
            case 148631506:
                if (!str.equals(f2958)) {
                    b = -1;
                } else {
                    b = 8;
                }
                break;
            case 154057692:
                if (!str.equals(StringFog.decrypt("MkKPia+f0k4TSI6TuYzBQQw=\n", "fwvh/cr4oC8=\n"))) {
                    b = -1;
                } else {
                    b = 53;
                }
                break;
            case 329817920:
                if (!str.equals(StringFog.decrypt("Vxo+cnnlUl9hGiZfYvJwU2saOw==\n", "BX9JEwuBBDY=\n"))) {
                    b = -1;
                } else {
                    b = Ascii.CR;
                }
                break;
            case 336960212:
                if (!str.equals(StringFog.decrypt("8jtrUwQKPt/kNG9X\n", "sVoGI2VjWbE=\n"))) {
                    b = -1;
                } else {
                    b = 43;
                }
                break;
            case 388542383:
                if (!str.equals(f2936)) {
                    b = -1;
                } else {
                    b = 41;
                }
                break;
            case 522506349:
                if (!str.equals(StringFog.decrypt("YSHBl/cEeIBhIcCF2TBpi0Eh0Ys=\n", "N0il8phTHeI=\n"))) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            case 604727084:
                if (!str.equals(StringFog.decrypt("oj/gfturBpW/OPV3\n", "y1GUG6nYcvw=\n"))) {
                    b = -1;
                } else {
                    b = 60;
                }
                break;
            case 675209731:
                if (!str.equals(StringFog.decrypt("5ZadgfLeeWbjjw==\n", "pvfw8ZO3Hgg=\n"))) {
                    b = -1;
                } else {
                    b = 10;
                }
                break;
            case 713779451:
                if (!str.equals(StringFog.decrypt("X6f9575vNmJ+jf/6uGMJanyn0PKpbBJqd7k=\n", "Es6Tk9sIRAM=\n"))) {
                    b = -1;
                } else {
                    b = 79;
                }
                break;
            case 745946635:
                if (!str.equals(StringFog.decrypt("fVrID+7sSqNAT9kI/fs=\n", "Mzu8ZpiJBso=\n"))) {
                    b = -1;
                } else {
                    b = Ascii.ESC;
                }
                break;
            case 751945826:
                if (!str.equals(f2913)) {
                    b = -1;
                } else {
                    b = 86;
                }
                break;
            case 787683072:
                if (!str.equals(f2933)) {
                    b = -1;
                } else {
                    b = 50;
                }
                break;
            case 824636291:
                if (!str.equals(StringFog.decrypt("xhAw2BHM9EvqEQvIF9b0XPsbKtgR\n", "j35EvWOanS8=\n"))) {
                    b = -1;
                } else {
                    b = Ascii.VT;
                }
                break;
            case 830238336:
                if (!str.equals(f2930)) {
                    b = -1;
                } else {
                    b = 55;
                }
                break;
            case 849576491:
                if (!str.equals(StringFog.decrypt("zamOckniaR7sgYRHT/FyCem0mQ==\n", "gMDgBiyFG38=\n"))) {
                    b = -1;
                } else {
                    b = 33;
                }
                break;
            case 879499863:
                if (!str.equals(f2921)) {
                    b = -1;
                } else {
                    b = 70;
                }
                break;
            case 888727913:
                if (!str.equals(StringFog.decrypt("ts5c8wSzmBuX1HbMJ7WJDpT1Sw==\n", "+4cyh2HU6no=\n"))) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case 892841421:
                if (!str.equals(StringFog.decrypt("/86fV0jr9FPU2Yc=\n", "vbzwIDuOhgU=\n"))) {
                    b = -1;
                } else {
                    b = 45;
                }
                break;
            case 897829864:
                if (!str.equals(StringFog.decrypt("A3dQ0ACzBN0oc1Q=\n", "QRYjtVfWZos=\n"))) {
                    b = -1;
                } else {
                    b = 63;
                }
                break;
            case 923005467:
                if (!str.equals(f2961)) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case 963675317:
                if (!str.equals(f2949)) {
                    b = -1;
                } else {
                    b = 19;
                }
                break;
            case 985183301:
                if (!str.equals(StringFog.decrypt("hV3Zq8YmgPKDVcbkx2GD9YJZmujfKJ3vgVzV6cggg+uJXJrnyjyLqKRTx+D8KozQj1fD\n", "5jK0hatP7oY=\n"))) {
                    b = -1;
                } else {
                    b = 93;
                }
                break;
            case 989671232:
                if (!str.equals(StringFog.decrypt("yT/9+HArg8LoGPL4fDqU5uoy0O1nKKfK4SE=\n", "hFaTjBVM8aM=\n"))) {
                    b = -1;
                } else {
                    b = 73;
                }
                break;
            case 1014009286:
                if (!str.equals(StringFog.decrypt("yT6nV0Z5z13oFKVKQHX+aMUBoEZU\n", "hFfJIyMevTw=\n"))) {
                    b = -1;
                } else {
                    b = 75;
                }
                break;
            case 1027072306:
                if (!str.equals(f2951)) {
                    b = -1;
                } else {
                    b = 17;
                }
                break;
            case 1031717908:
                if (!str.equals(f2907)) {
                    b = -1;
                } else {
                    b = 99;
                }
                break;
            case 1074855404:
                if (!str.equals(StringFog.decrypt("wXBT2K3uTiXgSVHNseheKOlPVMm/\n", "jBk9rMiJPEQ=\n"))) {
                    b = -1;
                } else {
                    b = 87;
                }
                break;
            case 1079743836:
                if (!str.equals(f2911)) {
                    b = -1;
                } else {
                    b = 89;
                }
                break;
            case 1090486275:
                if (!str.equals(f2922)) {
                    b = -1;
                } else {
                    b = 68;
                }
                break;
            case 1134055712:
                if (!str.equals(f2906)) {
                    b = -1;
                } else {
                    b = 100;
                }
                break;
            case 1138147458:
                if (!str.equals(f2928)) {
                    b = -1;
                } else {
                    b = 57;
                }
                break;
            case 1139753057:
                if (!str.equals(StringFog.decrypt("gaJn8+C3WQWupnri\n", "w8MUlqbFOGI=\n"))) {
                    b = -1;
                } else {
                    b = 44;
                }
                break;
            case 1163838042:
                if (!str.equals(f2948)) {
                    b = -1;
                } else {
                    b = Ascii.EM;
                }
                break;
            case 1164173445:
                if (!str.equals(StringFog.decrypt("WDWNLzdgR75ePZJgNidEuV8xzmwublqjXDSBbTlmRKdUNM52M2dNvFo0hS8NYEeubTuOZA1sS5xS\nP5c=\n", "O1rgAVoJKco=\n"))) {
                    b = -1;
                } else {
                    b = 95;
                }
                break;
            case 1194888483:
                if (!str.equals(f2945)) {
                    b = -1;
                } else {
                    b = Ascii.US;
                }
                break;
            case 1253985693:
                if (!str.equals(f2938)) {
                    b = -1;
                } else {
                    b = 39;
                }
                break;
            case 1297340448:
                if (!str.equals(StringFog.decrypt("Bg3QNW0mMGk7CsU8Uzw3dCoNwSI=\n", "T2OkUB9VRAA=\n"))) {
                    b = -1;
                } else {
                    b = Ascii.SI;
                }
                break;
            case 1306792763:
                if (!str.equals(f2956)) {
                    b = -1;
                } else {
                    b = Ascii.NAK;
                }
                break;
            case 1331885131:
                if (!str.equals(StringFog.decrypt("CYBUkjSYpfEmm1yANIK7\n", "Re819l32wrA=\n"))) {
                    b = -1;
                } else {
                    b = 58;
                }
                break;
            case 1355875652:
                if (!str.equals(f2924)) {
                    b = -1;
                } else {
                    b = 66;
                }
                break;
            case 1357502028:
                if (!str.equals(StringFog.decrypt("oZdLWygSSASPiGpZJhhnAw==\n", "4vgmNkd8AnE=\n"))) {
                    b = -1;
                } else {
                    b = 49;
                }
                break;
            case 1448823153:
                if (!str.equals(StringFog.decrypt("Psg3NHrAHT0+yTApfsgKMA==\n", "f6pEQAihfkk=\n"))) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            case 1491724830:
                if (!str.equals(f2935)) {
                    b = -1;
                } else {
                    b = 42;
                }
                break;
            case 1505622627:
                if (!str.equals(StringFog.decrypt("+7gpAmAGAqn1sDQYYBomvw==\n", "udlHbAV0Q80=\n"))) {
                    b = -1;
                } else {
                    b = 90;
                }
                break;
            case 1541095059:
                if (!str.equals(f2943)) {
                    b = -1;
                } else {
                    b = 34;
                }
                break;
            case 1607057168:
                if (!str.equals(StringFog.decrypt("uw7GinS3qx6MG8Q=\n", "+n622BHUznc=\n"))) {
                    b = -1;
                } else {
                    b = 48;
                }
                break;
            case 1658563378:
                if (!str.equals(f2905)) {
                    b = -1;
                } else {
                    b = 101;
                }
                break;
            case 1659288939:
                if (!str.equals(f2939)) {
                    b = -1;
                } else {
                    b = 38;
                }
                break;
            case 1704806948:
                if (!str.equals(f2923)) {
                    b = -1;
                } else {
                    b = 67;
                }
                break;
            case 1746536452:
                if (!str.equals(f2925)) {
                    b = -1;
                } else {
                    b = SignedBytes.MAX_POWER_OF_TWO;
                }
                break;
            case 1792690910:
                if (!str.equals(f2957)) {
                    b = -1;
                } else {
                    b = Ascii.DC4;
                }
                break;
            case 1884374718:
                if (!str.equals(f2955)) {
                    b = -1;
                } else {
                    b = Ascii.SYN;
                }
                break;
            case 1991923194:
                if (!str.equals(f2931)) {
                    b = -1;
                } else {
                    b = 54;
                }
                break;
            case 2004707743:
                if (!str.equals(f2917)) {
                    b = -1;
                } else {
                    b = 78;
                }
                break;
            case 2038381641:
                if (!str.equals(f2944)) {
                    b = -1;
                } else {
                    b = 32;
                }
                break;
            case 2095560678:
                if (!str.equals(f2926)) {
                    b = -1;
                } else {
                    b = 62;
                }
                break;
            case 2118015322:
                if (!str.equals(f2934)) {
                    b = -1;
                } else {
                    b = 46;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                return MTGConfiguration.class;
            case 1:
                return MIntegralSDKFactory.class;
            case 2:
                return MTGRewardVideoActivity.class;
            case 3:
                return VideoWebViewActivity.class;
            case 4:
                return AbstractActivity.class;
            case 5:
                return AbstractJSActivity.class;
            case 6:
                return MTGActivity.class;
            case 7:
                return MTGCommonActivity.class;
            case 8:
                return MTGAuthorityActivity.class;
            case 9:
                return Campaign.class;
            case 10:
                return CampaignEx.class;
            case 11:
                return InterVideoOutListener.class;
            case 12:
                return InterstitialVideoListener.class;
            case 13:
                return RewardVideoListener.class;
            case 14:
                return MTGInterstitialActivity.class;
            case 15:
                return InterstitialListener.class;
            case 16:
            case 17:
                return MTGBannerView.class;
            case 18:
            case 19:
                return MTGBannerWebView.class;
            case 20:
                return MTGInterstitialHandler.class;
            case 21:
                return MTGInterstitialVideoHandler.class;
            case 22:
                return MTGRewardVideoHandler.class;
            case 23:
                return MTGBidInterstitialVideoHandler.class;
            case 24:
                return MTGBidRewardVideoHandler.class;
            case 25:
            case 26:
                return WallFragment.class;
            case 27:
                return NativeListener.class;
            case 28:
                return NativeListener.NativeTrackingListener.class;
            case 29:
                return NativeListener.NativeAdListener.class;
            case 30:
                return AppWallTrackingListener.class;
            case 31:
                return TabListFragment.class;
            case 32:
                return ShuffleFragment.class;
            case 33:
                return MintegralAdActivity.class;
            case 34:
                return BottomRefreshListView.class;
            case 35:
                return TabPageIndicator.class;
            case 36:
            case 37:
                return WallViewPager.class;
            case 38:
                return WallService.class;
            case 39:
                return ImpressionCampaignExModel.class;
            case 40:
                return TabListView.class;
            case 41:
            case 42:
                return WallView.class;
            case 43:
                return CampaignUnit.class;
            case 44:
                return BaseFragment.class;
            case 45:
            case 46:
                return BrowserView.class;
            case 47:
                return WebViewFragment.class;
            case 48:
                return AppReceiver.class;
            case 49:
                return CommonJumpLoader.class;
            case 50:
            case 51:
                return MTGImageView.class;
            case 52:
                return MIntegralSDK.class;
            case 53:
                return MIntegralConstans.class;
            case 54:
                return RoverCampaignUnit.class;
            case 55:
                return MtgWallHandler.class;
            case 56:
                return MTGOfferWallHandler.class;
            case 57:
                return MtgBidCommonHandler.class;
            case 58:
                return LoadingActivity.class;
            case 59:
                return IDownloadListener.class;
            case 60:
                return interstitial.class;
            case 61:
                return BidManager.class;
            case 62:
                return BidResponsed.class;
            case 63:
            case 64:
                return BaseWebView.class;
            case 65:
            case 66:
                return WindVaneWebView.class;
            case 67:
            case 68:
                return MTGAlertDialog.class;
            case 69:
            case 70:
                return MintegralVideoView.class;
            case 71:
            case 72:
                return MintegralVastEndCardView.class;
            case 73:
            case 74:
                return MintegralNativeEndCardView.class;
            case 75:
            case 76:
                return MintegralClickCTAView.class;
            case 77:
            case 78:
                return MintegralBaseView.class;
            case 79:
            case 80:
                return MintegralClickMiniCardView.class;
            case 81:
            case 82:
                return MintegralContainerView.class;
            case 83:
            case 84:
                return MintegralH5EndCardView.class;
            case 85:
            case 86:
                return MintegralLandingPageView.class;
            case 87:
            case 88:
                return MintegralPlayableView.class;
            case 89:
                return OnMTGMediaViewListener.class;
            case 90:
                return BannerAdListener.class;
            case 91:
                return com.mintegral.msdk.video.signal.activity.AbstractJSActivity.class;
            case 92:
            case 93:
                return com.mintegral.msdk.mtgsignalcommon.base.BaseWebView.class;
            case 94:
            case fh.p0 /* 95 */:
                return com.mintegral.msdk.mtgsignalcommon.windvane.WindVaneWebView.class;
            case fh.A0 /* 96 */:
            case fh.H0 /* 97 */:
                return DomainMTGCommonActivity.class;
            case fh.Q0 /* 98 */:
            case fh.R0 /* 99 */:
                return MBRewardVideoActivity.class;
            case 100:
            case 101:
                return BaseActivity.class;
            default:
                return null;
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾒ */
    public final String mo1850() {
        C0632 c0632 = C0793.m2275().f2974;
        String strDecrypt = StringFog.decrypt("Fe39D2sFf45f7P1FfwU1+BXt\n", "O8eha0BZUdI=\n");
        c0632.getClass();
        return C0632.m2159((Object) null, MTGConfiguration.class, strDecrypt);
    }
}
