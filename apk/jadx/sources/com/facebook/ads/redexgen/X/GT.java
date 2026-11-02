package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOverlay;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.facebook.ads.AdClosedListener;
import com.facebook.ads.AdError;
import com.facebook.ads.AdSettings;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdLayout;
import com.facebook.ads.NativeAdListener;
import com.facebook.ads.NativeBannerAd;
import com.facebook.ads.internal.api.AdNativeComponentView;
import com.facebook.ads.internal.api.NativeAdBaseApi;
import com.facebook.ads.internal.api.NativeAdImageApi;
import com.facebook.ads.internal.context.Repairable;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.google.common.base.Ascii;
import com.ironsource.InterfaceC3669k1;
import java.lang.ref.WeakReference;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class GT implements com.facebook.ads.Ad, NativeAdBaseApi, Repairable, InterfaceC2919np {
    public static C2746kz A0p;
    public static byte[] A0q;
    public static String[] A0r = {"Bl7Z7O36thNMsAQG86cT5hXAswukL2TU", "w0l3kgVUfrf8f1EzcfbBJ9JqF1JIQyF1", "3FYeVZ4P9Hva0brxRfDXnSutu97odoaf", "TkemScCQ72wM3yeu7V5OcaIZTlgQuG0T", "aV5nfdXEnoj7uvLi", "brDFWAS69jf159nGVdOYVvf", "WGIwYSb5Wjcv", "W7skGFSknqdZoaqu210O1mF"};
    public static final String A0s;
    public static final WeakHashMap<View, WeakReference<GT>> A0t;
    public long A00;
    public Drawable A01;
    public View.OnTouchListener A02;
    public View A03;
    public View A04;
    public View A05;
    public View A06;
    public ViewTreeObserver.OnWindowFocusChangeListener A07;
    public AdClosedListener A08;
    public NativeAdLayout A09;
    public EnumC2381f0 A0A;
    public LL A0B;
    public C13717d A0C;
    public KC A0D;
    public l5 A0E;
    public C2806lz A0F;
    public C2892nO A0G;
    public EnumC2906nc A0H;
    public GV A0I;
    public GS A0J;
    public C2914nk A0K;
    public EnumC2915nl A0L;
    public EnumC2925nx A0M;
    public C3174s2 A0N;
    public InterfaceC3183sB A0O;
    public C3275tf A0P;
    public C1905Tb A0Q;
    public C2568i4 A0R;
    public AbstractC2200c3 A0S;
    public AbstractC2200c3 A0T;
    public C2199c2 A0U;
    public C2199c2 A0V;
    public String A0W;
    public String A0X;
    public WeakReference<IW> A0Y;
    public WeakReference<AbstractC2200c3> A0Z;
    public boolean A0a;
    public boolean A0b;
    public boolean A0c;
    public boolean A0d;
    public boolean A0e;
    public C1716Lh A0f;
    public final C2746kz A0g;
    public final C1618Hi A0h;
    public final InterfaceC2911nh A0i;
    public final C2921nr A0j;
    public final C3077qT A0k;
    public final String A0l;
    public final String A0m;
    public final List<View> A0n;
    public volatile boolean A0o;

    static {
        A0e();
        A0s = GT.class.getSimpleName();
        A0t = new WeakHashMap<>();
    }

    public GT(Context context, String str, InterfaceC2911nh interfaceC2911nh, boolean z) {
        this.A0m = UUID.randomUUID().toString();
        this.A0M = EnumC2925nx.A05;
        this.A0H = EnumC2906nc.A04;
        this.A0A = EnumC2381f0.A03;
        this.A0Y = new WeakReference<>(null);
        this.A0n = new ArrayList();
        this.A0k = new C3077qT();
        this.A0e = false;
        this.A0d = false;
        this.A00 = -1L;
        this.A0a = false;
        if (context instanceof C1618Hi) {
            this.A0h = (C1618Hi) context;
        } else if (z) {
            this.A0h = C2673jn.A03(context);
        } else {
            this.A0h = C2673jn.A04(context);
        }
        this.A0h.A0O(this);
        this.A0l = str;
        this.A0i = interfaceC2911nh;
        if (A0p != null) {
            this.A0g = A0p;
        } else {
            this.A0g = new C2746kz(this.A0h);
        }
        this.A05 = new View(context);
        this.A0j = new C2921nr(this.A0h, this);
    }

    public GT(GT gt) {
        this((Context) gt.A0h, (String) null, gt.A0i, true);
        this.A0F = gt.A0F;
        this.A0f = gt.A0f;
        this.A0D = gt.A0D;
        this.A0o = true;
        this.A05 = new View(this.A0h);
    }

    public GT(C1618Hi c1618Hi, C1716Lh c1716Lh, C2806lz c2806lz, InterfaceC2911nh interfaceC2911nh) {
        this((Context) c1618Hi, (String) null, interfaceC2911nh, true);
        this.A0f = c1716Lh;
        this.A0F = c2806lz;
        this.A0o = true;
        this.A05 = new View(c1618Hi);
    }

    public GT(C1618Hi c1618Hi, C1716Lh c1716Lh, C2806lz c2806lz, InterfaceC2911nh interfaceC2911nh, KC kc) {
        this(c1618Hi, c1716Lh, c2806lz, interfaceC2911nh);
        this.A0D = kc;
    }

    private int A00() {
        if (this.A0F != null) {
            return this.A0F.A04();
        }
        if (this.A0C == null || this.A0C.A0I() == null) {
            return 1;
        }
        return this.A0C.A0I().A04();
    }

    private int A01() {
        if (this.A0F != null) {
            return this.A0F.A07();
        }
        if (this.A0f == null) {
            if (this.A0C == null || this.A0C.A0I() == null) {
                return 0;
            }
            return this.A0C.A0I().A07();
        }
        C1716Lh c1716Lh = this.A0f;
        String[] strArr = A0r;
        if (strArr[1].charAt(16) == strArr[3].charAt(16)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0r;
        strArr2[7] = "EUscbuPuA5cZxxPx7y6ncGc";
        strArr2[5] = "07NrZ6juCFttxvE5hiFlF8c";
        return c1716Lh.A0C();
    }

    private int A02() {
        if (this.A0F != null) {
            return this.A0F.A08();
        }
        if (this.A0f != null) {
            int iA0D = this.A0f.A0D();
            String[] strArr = A0r;
            if (strArr[0].charAt(5) == strArr[2].charAt(5)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0r;
            strArr2[1] = "wlXrbCoONy6aNPfJSLZ4JGG9g8lWOQWJ";
            strArr2[3] = "zMDzXw8vWIk5v34E7N5RdIcOKoPIh5je";
            return iA0D;
        }
        C13717d c13717d = this.A0C;
        String[] strArr3 = A0r;
        if (strArr3[4].length() != strArr3[6].length()) {
            String[] strArr4 = A0r;
            strArr4[7] = "IJhE7OuQr9AUmHg0gZAU0NE";
            strArr4[5] = "Tpbr9nnLmrgR8Cas3OKWnYo";
            if (c13717d == null) {
                return 1000;
            }
        } else {
            String[] strArr5 = A0r;
            strArr5[0] = "x7i9CQzVOJPdqJX1dHOWNRL80PPtBuUS";
            strArr5[2] = "xh5QtfSCbDAINUU48h4MV8p0ljd4aaCa";
            if (c13717d == null) {
                return 1000;
            }
        }
        if (this.A0C.A0I() != null) {
            return this.A0C.A0I().A08();
        }
        return 1000;
    }

    private int A03() {
        if (this.A0F != null) {
            return this.A0F.A09();
        }
        if (this.A0C == null || this.A0C.A0I() == null) {
            return 0;
        }
        return this.A0C.A0I().A09();
    }

    public static Drawable A05(C1618Hi c1618Hi, Bitmap bitmap, boolean z, String str) {
        BitmapDrawable bitmapDrawableA00;
        BitmapDrawable bitmapDrawable = new BitmapDrawable(c1618Hi.getResources(), bitmap);
        return (!z || (bitmapDrawableA00 = AbstractC2569i5.A00(c1618Hi, str)) == null) ? bitmapDrawable : new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawableA00});
    }

    public static NativeAdBase A0A(Context context, String str, String str2) throws C2923nu {
        EnumC2925nx enumC2925nxA00 = C2929o1.A00(str2);
        if (enumC2925nxA00 == null) {
            throw new C2923nu(AdErrorType.BID_PAYLOAD_ERROR, String.format(Locale.US, A0W(114, 50, 50), str2));
        }
        EnumC2925nx enumC2925nx = EnumC2925nx.A04;
        String[] strArr = A0r;
        if (strArr[7].length() != strArr[5].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0r;
        strArr2[0] = "9sjWaS9CbZxjWOFrlYfgckD2h0ahWze6";
        strArr2[2] = "CgLfFBC4KJYZcdRIWMiGUMQeYT9XpqO1";
        if (enumC2925nxA00 == enumC2925nx) {
            return new NativeBannerAd(context, str);
        }
        if (enumC2925nxA00 == EnumC2925nx.A05) {
            return new NativeAd(context, str);
        }
        throw new C2923nu(AdErrorType.BID_PAYLOAD_ERROR, String.format(Locale.US, A0W(42, 34, 84), enumC2925nxA00));
    }

    private final C1716Lh A0C() {
        C1716Lh c1716Lh = this.A0f;
        if (c1716Lh == null || !c1716Lh.A0R()) {
            return null;
        }
        return c1716Lh;
    }

    private LK A0F() {
        return A0G(false);
    }

    private LK A0G(boolean z) {
        if (this.A0f == null || !this.A0f.A0R()) {
            return new LK();
        }
        if (z) {
            this.A0f.A0I();
        }
        C1716Lh c1716Lh = this.A0f;
        String[] strArr = A0r;
        if (strArr[0].charAt(5) == strArr[2].charAt(5)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0r;
        strArr2[7] = "bGIdjP48JCmqHZjd8yMcvy0";
        strArr2[5] = "TixE3qv3ULKos9kbBUakVg1";
        return c1716Lh.A0E();
    }

    public static GW A0K() {
        return new GW();
    }

    public static GT A0L(NativeAdBaseApi nativeAdBaseApi) {
        return nativeAdBaseApi instanceof Proxy ? (GT) ((C2653jT) Proxy.getInvocationHandler(nativeAdBaseApi)).A04() : (GT) nativeAdBaseApi;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    /* JADX INFO: renamed from: A0M, reason: merged with bridge method [inline-methods] */
    public final C2912ni getAdChoicesIcon() {
        return A0F().A0G();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    /* JADX INFO: renamed from: A0O, reason: merged with bridge method [inline-methods] */
    public final C2913nj getAdStarRating() {
        return A0F().A0J();
    }

    private AdPlacementType A0R() {
        return this.A0M == EnumC2925nx.A05 ? AdPlacementType.NATIVE : AdPlacementType.NATIVE_BANNER;
    }

    public static String A0W(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0q, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 40);
        }
        return new String(bArrCopyOfRange);
    }

    private void A0a() {
        for (View view : this.A0n) {
            view.setOnClickListener(null);
            view.setOnTouchListener(null);
            view.setOnLongClickListener(null);
        }
        this.A0n.clear();
    }

    private void A0b() {
        if (TextUtils.isEmpty(getAdChoicesLinkUrl())) {
            return;
        }
        C3007pK.A0P(new C3007pK(), this.A0h, AbstractC3011pP.A00(getAdChoicesLinkUrl()), A1H());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0c() {
        this.A0k.A05();
        this.A0j.A05();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0d() {
        if (this.A0U != null) {
            this.A0U.A0V();
            this.A0h.A0F().ADQ();
            this.A0U = null;
        }
    }

    public static void A0e() {
        A0q = new byte[]{86, -112, -100, -107, -108, -91, -84, -42, -41, -39, -89, -42, -39, -74, -29, -73, -79, -79, -30, -25, -78, -36, Ascii.VT, -34, Ascii.FF, -39, -35, 10, -33, 125, -96, 92, -86, -85, -80, 92, -88, -85, -99, -96, -95, -96, -67, -32, -48, -31, -23, -20, -24, -35, -16, -31, -100, -93, -95, -17, -93, -100, -27, -17, -100, -22, -21, -16, -100, -35, -100, -22, -35, -16, -27, -14, -31, -100, -35, -32, -105, -109, -110, -58, -75, -70, -74, -65, -76, -74, -97, -74, -59, -56, -64, -61, -68, -83, -56, -48, -45, -52, -53, -121, -37, -42, -121, -45, -42, -56, -53, -121, -76, -52, -53, -48, -56, -107, -96, -69, -61, -58, -65, -66, 122, -50, -55, 122, -55, -68, -50, -69, -61, -56, 122, -50, -65, -57, -54, -58, -69, -50, -65, 122, -93, -98, 122, -64, -52, -55, -57, 122, -68, -61, -66, 122, -54, -69, -45, -58, -55, -69, -66, 122, -127, 127, -51, -127, -79, -42, -36, -51, -38, -42, -55, -44, -120, -51, -38, -38, -41, -38, -106, 114, -47, -10, -2, -23, -12, -15, -20, -88, -5, -19, -4, -88, -9, -18, -88, -21, -12, -15, -21, -13, -23, -22, -12, -19, -88, -2, -15, -19, -1, -5, -73, -49, -50, -45, -53, -64, -45, -49, -31, -118, -48, -39, -36, -118, -45, -51, -39, -40, -118, -45, -35, -118, -45, -35, -118, -41, -45, -35, -35, -45, -40, -47, -104, -71, -47, -48, -43, -51, -62, -43, -47, -29, -116, -43, -33, -116, -39, -43, -33, -33, -43, -38, -45, -102, -117, -77, -79, -78, 94, -82, -80, -83, -76, -89, -94, -93, 94, -97, 94, -108, -89, -93, -75, -49, -30, -11, -22, -9, -26, -95, -62, -27, -95, -8, -30, -12, -95, -30, -19, -13, -26, -30, -27, -6, -95, -13, -26, -24, -22, -12, -11, -26, -13, -26, -27, -95, -8, -22, -11, -23, -95, -30, -95, -41, -22, -26, -8, -81, -95, -62, -10, -11, -16, -95, -10, -17, -13, -26, -24, -22, -12, -11, -26, -13, -22, -17, -24, -95, -30, -17, -27, -95, -15, -13, -16, -28, -26, -26, -27, -22, -17, -24, -81, -115, -96, -77, -88, -75, -92, 95, -96, -93, 95, -93, -92, -78, -77, -79, -82, -72, -92, -93, -40, -21, -2, -13, 0, -17, -86, -21, -18, -86, -10, -7, -21, -18, -86, -4, -17, -5, -1, -17, -3, -2, -17, -18, -115, -96, -100, -82, 87, -104, -93, -87, -100, -104, -101, -80, 87, -87, -100, -98, -96, -86, -85, -100, -87, -100, -101, 87, -82, -96, -85, -97, 87, -104, 87, -123, -104, -85, -96, -83, -100, 120, -101, 101, 87, 120, -84, -85, -90, 87, -84, -91, -87, -100, -98, -96, -86, -85, -100, -87, -96, -91, -98, 87, -104, -91, -101, 87, -89, -87, -90, -102, -100, -100, -101, -96, -91, -98, 101, -58, -39, -43, -25, -112, -34, -33, -28, -112, -30, -43, -41, -39, -29, -28, -43, -30, -43, -44, -112, -25, -39, -28, -40, -112, -28, -40, -39, -29, -112, -66, -47, -28, -39, -26, -43, -79, -44, -104, -101, 87, -92, -100, -101, -96, -104, 87, -85, -80, -89, -100, 87, -96, -86, 87, -91, -90, -85, 87, -86, -84, -89, -89, -90, -87, -85, -100, -101, 101, -116, -101, -108, -109, -108, -94, -93, -95, -98, -88, -94, -91, -105, -102, 119, -102, 7, 10, -4, -1, -36, -1, -61, -60, -69, -2, -4, 7, 7, 0, -1, -69, 8, 10, Ascii.CR, 0, -69, Ascii.SI, 3, -4, 9, -69, 10, 9, -2, 0, -17, -30, -11, -22, -9, -26};
    }

    public static void A0f(Drawable drawable, ImageView imageView) {
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        if (drawable != null) {
            imageView.setImageDrawable(drawable);
        }
        imageView.setBackground(null);
    }

    private void A0g(View view, View view2, List<View> list, boolean z) {
        if (!A0r()) {
            this.A0h.A0F().AIo();
        }
        if (view == null) {
            String strA0W = A0W(264, 19, 22);
            if (!A0r()) {
                this.A0h.A0F().AIn(strA0W);
            }
            throw new IllegalArgumentException(strA0W);
        }
        if (list == null || list.size() == 0) {
            String strA0W2 = A0W(180, 30, 96);
            if (!A0r()) {
                this.A0h.A0F().AIn(strA0W2);
            }
            throw new IllegalArgumentException(strA0W2);
        }
        C1716Lh c1716LhA0C = A0C();
        if (c1716LhA0C == null) {
            String strA0W3 = A0W(29, 13, 20);
            if (!A0r()) {
                this.A0h.A0F().AIn(strA0W3);
            }
            Log.e(A0s, strA0W3);
            C2922nt c2922nt = new C2922nt(AdErrorType.NATIVE_AD_IS_NOT_LOADED, strA0W3);
            A16().A0F().A3j(C3076qS.A01(this.A00), c2922nt.A03().getErrorCode(), c2922nt.A04());
            if (!C2863mv.A2q(this.A0h) || this.A0J == null) {
                return;
            }
            this.A0J.AEr(c2922nt);
            return;
        }
        String str = this.A0X;
        boolean z2 = view instanceof FrameLayout;
        String[] strArr = A0r;
        if (strArr[7].length() == strArr[5].length()) {
            String[] strArr2 = A0r;
            strArr2[0] = "EctJGKY0XxsuqG0UQd3u1zsk6i1LiKEB";
            strArr2[2] = "xfmrtxxFdZMJNwdY4ICwqytBKlocc6OO";
            if (z2 && str != null) {
                A0h((FrameLayout) view, str);
            }
            if (this.A09 != null) {
                IB ib = (IB) this.A09.getNativeAdLayoutApi();
                ib.A03();
                ib.A02();
            }
            IW iw = this.A0Y.get();
            if (iw != null && c1716LhA0C.A08() == 1) {
                iw.A0E(EnumC3097qn.AN_INFO_ICON);
            }
            if (view2 == null) {
                if (this.A0M == EnumC2925nx.A05) {
                    AdErrorType adErrorType = AdErrorType.NO_MEDIAVIEW_IN_NATIVEAD;
                    String strA0W4 = A0W(243, 21, 68);
                    C2922nt c2922nt2 = new C2922nt(adErrorType, strA0W4);
                    A16().A0F().A3j(C3076qS.A01(this.A00), c2922nt2.A03().getErrorCode(), c2922nt2.A04());
                    if (this.A0J != null) {
                        this.A0J.AEr(c2922nt2);
                    }
                    if (AdInternalSettings.isDebugBuild()) {
                        Log.e(A0s, strA0W4);
                        return;
                    }
                    return;
                }
                AdErrorType adErrorType2 = AdErrorType.NO_MEDIAVIEW_IN_NATIVEBANNERAD;
                String strA0W5 = A0W(210, 33, 66);
                C2922nt c2922nt3 = new C2922nt(adErrorType2, strA0W5);
                A16().A0F().A3j(C3076qS.A01(this.A00), c2922nt3.A03().getErrorCode(), c2922nt3.A04());
                if (this.A0J != null) {
                    GS gs = this.A0J;
                    String[] strArr3 = A0r;
                    if (strArr3[1].charAt(16) != strArr3[3].charAt(16)) {
                        String[] strArr4 = A0r;
                        strArr4[4] = "nsWl0Hk5Msmp3zmH";
                        strArr4[6] = "oYitqb4l5O5w";
                        gs.AEr(c2922nt3);
                    } else {
                        gs.AEr(c2922nt3);
                    }
                }
                if (AdInternalSettings.isDebugBuild()) {
                    Log.e(A0s, strA0W5);
                    return;
                }
                return;
            }
            boolean z3 = (view2 instanceof AdNativeComponentView) && ((AdNativeComponentView) view2).getAdContentsView() != null;
            boolean z4 = z && (view2 instanceof ImageView);
            if (z3 || z4) {
                if (this.A04 != null) {
                    Log.w(A0s, A0W(283, 80, 89));
                    unregisterView();
                }
                if (A0t.containsKey(view) && A0t.get(view).get() != null) {
                    Log.w(A0s, A0W(InterfaceC3669k1.a.b.f, 75, 15));
                    A0t.get(view).get().unregisterView();
                }
                this.A0I = new GV(this, this.A0h, null);
                this.A04 = view;
                this.A06 = view2;
                if (view instanceof ViewGroup) {
                    this.A0N = new C3174s2(this.A0h, new GZ(this));
                    ((ViewGroup) view).addView(this.A0N);
                }
                if (c1716LhA0C.A0S()) {
                    this.A0S = new GY(this);
                    this.A0U = new C2199c2(view, 1, new WeakReference(this.A0S), this.A0h);
                    this.A0U.A0Y(false);
                    this.A0U.A0X(c1716LhA0C.A09());
                    this.A0U.A0U();
                    this.A0h.A0F().ADP();
                }
                ArrayList<View> arrayList = new ArrayList(list);
                if (this.A05 != null) {
                    arrayList.add(this.A05);
                }
                for (View view3 : arrayList) {
                    String[] strArr5 = A0r;
                    if (strArr5[7].length() != strArr5[5].length()) {
                        String[] strArr6 = A0r;
                        strArr6[1] = "9p8eAJslnqkcQfVFkX2NaZpGo2NogEID";
                        strArr6[3] = "Fdj5aRKmThGOYGM4NU7VADNdisgLrlPk";
                        A1Q(view3);
                    } else {
                        String[] strArr7 = A0r;
                        strArr7[4] = "ta8ztpz9PQU6TWHh";
                        strArr7[6] = "10z3LgKps5EE";
                        A1Q(view3);
                    }
                }
                LA laA13 = A13();
                if (z && laA13 != null && laA13.A2P()) {
                    A1Q(view);
                    arrayList.add(view);
                }
                int iA00 = A00();
                this.A0T = new GX(this, view2, z4, c1716LhA0C);
                if (view2 instanceof AdNativeComponentView) {
                    View adContentsView = ((AdNativeComponentView) view2).getAdContentsView();
                    String[] strArr8 = A0r;
                    if (strArr8[0].charAt(5) == strArr8[2].charAt(5)) {
                        throw new RuntimeException();
                    }
                    String[] strArr9 = A0r;
                    strArr9[1] = "AmKQ97fBLt8v65PXaWQ2lzp6X6hOVLLZ";
                    strArr9[3] = "rJ6ED8esGipYo16AZCwywliOWw3nCSVU";
                    this.A03 = adContentsView;
                } else {
                    this.A03 = view2;
                }
                if (C2863mv.A1z(this.A0h)) {
                    String strA1H = A1H();
                    InterfaceC2896nS interfaceC2896nSA0B = A16().A0B();
                    View view4 = this.A03;
                    if (strA1H == null) {
                        strA1H = A0W(0, 0, 21);
                    }
                    interfaceC2896nSA0B.AM8(view4, strA1H, this.A03 instanceof C2338eI, true);
                }
                this.A0V = new C2199c2(this.A03, iA00, A03(), true, new WeakReference(this.A0T), this.A0h);
                this.A0V.A0Y(!A0r());
                this.A0V.A0W(A01());
                this.A0V.A0X(A02());
                if (this.A03 instanceof C3265tV) {
                    ((C3265tV) this.A03).A06(this.A0V);
                }
                this.A0B = new LL(this.A0h, new GU(this, null), this.A0V, this.A0f);
                this.A0B.A0J(arrayList);
                A0t.put(view, new WeakReference<>(this));
                this.A07 = new ViewTreeObserverOnWindowFocusChangeListenerC2909nf(this);
                ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                if (viewTreeObserver.isAlive()) {
                    viewTreeObserver.addOnWindowFocusChangeListener(this.A07);
                } else {
                    this.A07 = null;
                }
                if (C2863mv.A1B(this.A0h)) {
                    this.A0P = new C3275tf();
                    this.A0P.A0C(this.A0l);
                    this.A0P.A0B(this.A0h.getPackageName());
                    this.A0P.A0A(this.A0V);
                    if (this.A0f != null) {
                        int iA03 = this.A0f.A0E().A03();
                        String[] strArr10 = A0r;
                        if (strArr10[0].charAt(5) == strArr10[2].charAt(5)) {
                            throw new RuntimeException();
                        }
                        String[] strArr11 = A0r;
                        strArr11[1] = "6w9E4u0Xv7t0VT7M4ZQhfT6x3NS05tXG";
                        strArr11[3] = "Knc01yER6LmtVSGtvouwbTa6HiolQ6pK";
                        if (iA03 > 0) {
                            LK lkA0E = this.A0f.A0E();
                            this.A0P.A08(lkA0E.A03(), lkA0E.A04());
                        }
                    }
                    if (this.A0F != null) {
                        this.A0P.A09(this.A0F.A0C());
                    } else if (this.A0C != null && this.A0C.A0I() != null) {
                        this.A0P.A09(this.A0C.A0I().A0C());
                    }
                    ViewOverlay overlay = this.A04.getOverlay();
                    String[] strArr12 = A0r;
                    if (strArr12[4].length() != strArr12[6].length()) {
                        String[] strArr13 = A0r;
                        strArr13[1] = "PlOUkHRjTfP1TLMsEQIjm7lmTF3o2gjY";
                        strArr13[3] = "CcUrimv3R6YWMUNgDXBxsbVafZnEkOT4";
                        overlay.add(this.A0P);
                        return;
                    }
                    String[] strArr14 = A0r;
                    strArr14[0] = "9xtIvycKuGD3X9dlb3eDnO0wOMDHezVB";
                    strArr14[2] = "tgJaSFUkb3OvVdiBqmqS5kHs3fuvF8Xm";
                    overlay.add(this.A0P);
                    return;
                }
                return;
            }
            GS gs2 = this.A0J;
            String[] strArr15 = A0r;
            if (strArr15[7].length() == strArr15[5].length()) {
                String[] strArr16 = A0r;
                strArr16[7] = "NZUYEyoiQJdMJgH58rRyVIN";
                strArr16[5] = "lIJySsauvCfug7psMQHpLAW";
                if (gs2 != null) {
                    C2922nt c2922nt4 = new C2922nt(AdErrorType.UNSUPPORTED_AD_ASSET_NATIVEAD, A0W(519, 31, 15));
                    A16().A0F().A3j(C3076qS.A01(this.A00), c2922nt4.A03().getErrorCode(), c2922nt4.A04());
                    this.A0J.AEr(c2922nt4);
                    return;
                }
                return;
            }
        }
        throw new RuntimeException();
    }

    private void A0h(FrameLayout frameLayout, String str) {
        if (this.A0R != null) {
            C2568i4 c2568i4 = this.A0R;
            String[] strArr = A0r;
            if (strArr[0].charAt(5) == strArr[2].charAt(5)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0r;
            strArr2[1] = "04W9af4JxjBHh0zFEdhxpJnrTxkqUHEu";
            strArr2[3] = "fTNta9LQ6rCDJI7HlapgEKn0696NnVDg";
            frameLayout.removeView(c2568i4);
        }
        this.A0R = AbstractC2569i5.A01(C2673jn.A03(this.A0h), str);
        if (this.A0R != null) {
            frameLayout.addView(this.A0R, new FrameLayout.LayoutParams(-1, -1));
            frameLayout.bringChildToFront(this.A0R);
        }
    }

    private void A0i(C1716Lh c1716Lh, boolean z) {
        if (c1716Lh == null) {
            return;
        }
        boolean zEquals = this.A0H.equals(EnumC2906nc.A04);
        String strA0W = A0W(596, 6, 89);
        if (zEquals) {
            LK lkA0E = c1716Lh.A0E();
            LA laA0F = lkA0E.A0F();
            if (laA0F != null) {
                AbstractC2434fr.A00(laA0F, this.A0g, strA0W);
            }
            String strA7z = c1716Lh.A7z();
            if (!TextUtils.isEmpty(strA7z)) {
                this.A0G = new C2892nO(strA7z, this.A0h.A0A());
                this.A0g.A0e(this.A0G);
            }
            if (lkA0E.A0I() != null) {
                C2744kx c2744kx = new C2744kx(lkA0E.A0I().getUrl(), lkA0E.A0I().getHeight(), lkA0E.A0I().getWidth(), c1716Lh.A0G(), A0W(596, 6, 89));
                c2744kx.A01 = this.A0E;
                this.A0g.A0W();
                this.A0g.A0c(c2744kx);
            }
            if (!this.A0M.equals(EnumC2925nx.A04)) {
                C2912ni c2912niA0H = lkA0E.A0H();
                String[] strArr = A0r;
                if (strArr[1].charAt(16) == strArr[3].charAt(16)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0r;
                strArr2[1] = "BiVeVWtUTguxpSjeMqAkCwQXeKWOVTz4";
                strArr2[3] = "8sdR9nWPZ664Gt9BvBocaDJi5It1hBkX";
                if (c2912niA0H != null) {
                    this.A0g.A0c(new C2744kx(lkA0E.A0H().getUrl(), lkA0E.A0H().getHeight(), lkA0E.A0H().getWidth(), c1716Lh.A0G(), A0W(596, 6, 89)));
                }
                if (c1716Lh.A0H() != null) {
                    for (GT gt : c1716Lh.A0H()) {
                        if (gt.getAdCoverImage() != null) {
                            this.A0g.A0c(new C2744kx(gt.getAdCoverImage().getUrl(), gt.getAdCoverImage().getHeight(), gt.getAdCoverImage().getWidth(), c1716Lh.A0G(), A0W(596, 6, 89)));
                        }
                    }
                }
                String strA0e = lkA0E.A0e();
                if (!TextUtils.isEmpty(strA0e)) {
                    this.A0g.A0b(new C2742kv(strA0e, c1716Lh.A0G(), A0W(596, 6, 89), lkA0E.A0D()));
                }
            }
            if (laA0F != null && laA0F.A2Q()) {
                C2742kv c2742kv = new C2742kv(laA0F.A1Y(), laA0F.A1r(), strA0W);
                c2742kv.A04 = true;
                c2742kv.A03 = A0W(0, 5, 0);
                this.A0g.A0Y(c2742kv);
            }
        }
        this.A0g.A0X(new C1584Ga(this, c1716Lh, z), new C2739ks(c1716Lh.A0G(), strA0W));
    }

    private void A0j(InterfaceC2383f2 interfaceC2383f2) {
        if (this.A0f == null) {
            return;
        }
        this.A0f.A0K(interfaceC2383f2);
    }

    public static void A0k(NativeAdImageApi nativeAdImageApi, ImageView imageView, C1618Hi c1618Hi) {
        if (nativeAdImageApi == null || imageView == null) {
            return;
        }
        new AsyncTaskC1552Et(imageView, c1618Hi).A05(nativeAdImageApi.getHeight(), nativeAdImageApi.getWidth()).A07(nativeAdImageApi.getUrl());
    }

    private final void A0n(GS gs) {
        this.A0J = gs;
    }

    private final void A0o(String str) {
        this.A0W = str;
    }

    private void A0p(List<View> list, View view) {
        if (this.A0i == null || !this.A0i.ALF(view)) {
            if (!(view instanceof ViewGroup)) {
                list.add(view);
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View childAt = viewGroup.getChildAt(i);
                String[] strArr = A0r;
                if (strArr[7].length() != strArr[5].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0r;
                strArr2[1] = "SQxDsveS3BVeMl0nUnJayKxDlwKiSRwM";
                strArr2[3] = "CPUPH8uU8pe6dd8URnD7AGDEQ4lKFlLs";
                A0p(list, childAt);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0q() {
        return A1D() == EnumC2916nm.A05 || A1D() == EnumC2916nm.A03;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0r() {
        return A0F().A0j();
    }

    public final int A0y() {
        return A0F().A06();
    }

    public final int A0z() {
        return A0F().A07();
    }

    public final int A10() {
        if (this.A0f == null || TextUtils.isEmpty(this.A0f.A0E().A0e())) {
            return -1;
        }
        return this.A0f.A0E().A0A();
    }

    public final long A11() {
        return this.A00;
    }

    public final C1716Lh A12() {
        return this.A0f;
    }

    public final LA A13() {
        return A0F().A0F();
    }

    public final C2746kz A14() {
        return this.A0g;
    }

    public final C1618Hi A15() {
        return this.A0h;
    }

    public final C1618Hi A16() {
        return this.A0h;
    }

    public final GV A17() {
        return this.A0I;
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    /* JADX INFO: renamed from: A18, reason: merged with bridge method [inline-methods] */
    public final C2912ni getAdCoverImage() {
        return A0F().A0H();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    /* JADX INFO: renamed from: A19, reason: merged with bridge method [inline-methods] */
    public final C2912ni getAdIcon() {
        return A0F().A0I();
    }

    public final GS A1A() {
        return this.A0J;
    }

    public final C2914nk A1B() {
        return this.A0K;
    }

    public final EnumC2915nl A1C() {
        return this.A0L;
    }

    public final EnumC2916nm A1D() {
        return A0F().A0K();
    }

    public final C3077qT A1E() {
        return this.A0k;
    }

    public final C3212se A1F() {
        if (A13() == null || !A13().A3S()) {
            return null;
        }
        C3212se c3212se = new C3212se(this.A0h, EnumC3229sv.A05);
        c3212se.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.ne
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.A00.A1R(view);
            }
        });
        return c3212se;
    }

    public final C2199c2 A1G() {
        return this.A0V;
    }

    public final String A1H() {
        if (this.A0f == null || !isAdLoaded()) {
            return null;
        }
        return this.A0f.A7z();
    }

    public final String A1I() {
        return this.A0X;
    }

    public final String A1J() {
        return A0G(true).A0Q();
    }

    public final String A1K() {
        return A0G(true).A0R();
    }

    public final String A1L() {
        return A0F().A0d();
    }

    public final String A1M() {
        if (this.A0f == null || TextUtils.isEmpty(this.A0f.A0E().A0e())) {
            return null;
        }
        return this.A0g.A0T(this.A0f.A0E().A0e());
    }

    public final List<GT> A1N() {
        if (this.A0f == null || !isAdLoaded()) {
            return null;
        }
        return this.A0f.A0H();
    }

    public final void A1O() {
        if (!AbstractC2480gb.A00(this.A0h.A02()).A0O(this.A0h, false)) {
            A0b();
            return;
        }
        AbstractC3184sC abstractC3184sCA01 = AbstractC3185sD.A01(this.A0h, this.A0h.A0A(), A1H(), this.A09);
        if (abstractC3184sCA01 == null) {
            A0b();
            return;
        }
        if (this.A09 == null) {
            A0b();
            return;
        }
        ((IB) this.A09.getNativeAdLayoutApi()).A05(abstractC3184sCA01);
        if (!C2863mv.A22(this.A0h)) {
            A15().A0F().ACK();
            abstractC3184sCA01.setOnAdClosedListener(this.A08);
        }
        abstractC3184sCA01.setAdReportingCallbackListener(this.A0O);
        abstractC3184sCA01.A0N();
    }

    public final void A1P(Drawable drawable) {
        this.A01 = drawable;
        A1o(drawable != null, true);
        String[] strArr = A0r;
        if (strArr[4].length() == strArr[6].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0r;
        strArr2[4] = "Q96JEqttX0oIb74l";
        strArr2[6] = "mqYIcYUMJzEb";
    }

    public final void A1Q(View view) {
        this.A0n.add(view);
        view.setOnClickListener(this.A0I);
        view.setOnTouchListener(this.A0I);
        if (C2863mv.A1B(view.getContext())) {
            GV gv = this.A0I;
            String[] strArr = A0r;
            if (strArr[1].charAt(16) == strArr[3].charAt(16)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0r;
            strArr2[4] = "GeTsVetQiODT9yUx";
            strArr2[6] = "UPeG8QvAHkrx";
            view.setOnLongClickListener(gv);
        }
    }

    public final /* synthetic */ void A1R(View view) {
        this.A0h.A0F().ABj(EnumC3229sv.A05.name().toLowerCase(Locale.US));
        A1O();
    }

    public final void A1S(View view, ImageView imageView) {
        ArrayList arrayList = new ArrayList();
        A0p(arrayList, view);
        A0g(view, imageView, arrayList, true);
    }

    public final void A1T(View view, ImageView imageView, List<View> list) {
        A0g(view, imageView, list, true);
    }

    public final void A1U(View view, AdNativeComponentView adNativeComponentView) {
        ArrayList arrayList = new ArrayList();
        A0p(arrayList, view);
        A0g(view, adNativeComponentView, arrayList, false);
    }

    public final void A1V(View view, AdNativeComponentView adNativeComponentView, List<View> list) {
        A0g(view, adNativeComponentView, list, false);
    }

    public final void A1W(View view, AdNativeComponentView adNativeComponentView, List<View> list, boolean z) {
        A0g(view, adNativeComponentView, list, z);
    }

    public final void A1X(View view, AdNativeComponentView adNativeComponentView, boolean z) {
        ArrayList arrayList = new ArrayList();
        A0p(arrayList, view);
        A0g(view, adNativeComponentView, arrayList, z);
    }

    public final void A1Y(AdClosedListener adClosedListener) {
        A15().A0F().ACL();
        this.A08 = adClosedListener;
    }

    public final void A1Z(MediaView mediaView) {
        if (mediaView != null) {
            this.A0d = true;
        }
    }

    public final void A1a(MediaView mediaView) {
        if (mediaView != null) {
            this.A0e = true;
        }
    }

    public final void A1b(NativeAdBase nativeAdBase, NativeAdListener nativeAdListener) {
        if (nativeAdListener == null) {
            return;
        }
        A0n(new AnonymousClass79(nativeAdListener, nativeAdBase));
    }

    public final void A1c(NativeAdLayout nativeAdLayout) {
        this.A09 = nativeAdLayout;
    }

    public final void A1d(C1716Lh c1716Lh) {
        A0i(c1716Lh, true);
        if (this.A0J != null) {
            List<GT> listA0H = c1716Lh.A0H();
            String[] strArr = A0r;
            if (strArr[7].length() != strArr[5].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0r;
            strArr2[0] = "OfB2JsewzcYgCxMvn97l0AOaUV28WOmd";
            strArr2[2] = "fN7XzjPm8qHCAEGwTiZWrbsVWAwnjwvJ";
            if (listA0H != null) {
                C1586Gc c1586Gc = new C1586Gc(this);
                Iterator<GT> it = c1716Lh.A0H().iterator();
                while (it.hasNext()) {
                    it.next().A0j(c1586Gc);
                }
            }
        }
    }

    public final void A1e(IW iw) {
        this.A0Y = new WeakReference<>(iw);
    }

    public final void A1f(EnumC2906nc enumC2906nc, String str, l5 l5Var) {
        if (str == null) {
            this.A0h.A0F().A3m();
        } else {
            this.A0h.A0F().A3l();
        }
        this.A00 = System.currentTimeMillis();
        if (this.A0o) {
            AdSettings.IntegrationErrorMode integrationErrorModeA00 = AbstractC2444g1.A00(this.A0h);
            String strA0W = A0W(566, 30, 115);
            if (AdSettings.IntegrationErrorMode.INTEGRATION_ERROR_CRASH_DEBUG_MODE.equals(integrationErrorModeA00)) {
                throw new C2449g6(strA0W);
            }
            C2922nt c2922nt = new C2922nt(AdErrorType.LOAD_AD_CALLED_MORE_THAN_ONCE, A0W(566, 30, 115));
            A16().A0F().A3j(C3076qS.A01(this.A00), c2922nt.A03().getErrorCode(), c2922nt.A04());
            if (this.A0J != null) {
                this.A0J.AEr(c2922nt);
            } else {
                Log.e(A0W(76, 17, 41), strA0W);
            }
            C2787lg c2787lg = new C2787lg(strA0W);
            A16().A08().ABz(A0W(550, 3, 3), AbstractC2786lf.A0c, c2787lg);
        }
        this.A0o = true;
        this.A0H = enumC2906nc;
        if (enumC2906nc.equals(EnumC2906nc.A05)) {
            this.A0A = EnumC2381f0.A05;
        }
        this.A0E = l5Var;
        C2441fy c2441fy = new C2441fy(this.A0l, this.A0M, A0R(), null, 1, new K5());
        c2441fy.A05(enumC2906nc);
        c2441fy.A06(this.A0W);
        c2441fy.A07(this.A0X);
        this.A0C = new C13717d(this.A0h, c2441fy);
        this.A0C.A0R(new C1587Gd(this));
        this.A0C.A0V(str);
        this.A0h.A0F().A3k();
    }

    public final void A1g(C2914nk c2914nk) {
        this.A0K = c2914nk;
    }

    public final void A1h(EnumC2915nl enumC2915nl) {
        this.A0L = enumC2915nl;
    }

    public final void A1i(EnumC2925nx enumC2925nx) {
        if (!A0r()) {
            if (EnumC2925nx.A04.equals(enumC2925nx)) {
                C1618Hi c1618Hi = this.A0h;
                String[] strArr = A0r;
                if (strArr[7].length() != strArr[5].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0r;
                strArr2[7] = "er71GFUENUkH6mVEmd80tsw";
                strArr2[5] = "eRFgtOOg0hnVr16Te1PNaNs";
                c1618Hi.A0F().A3p(AdPlacementType.NATIVE_BANNER.toString(), this.A0l);
            } else {
                this.A0h.A0F().A3p(AdPlacementType.NATIVE.toString(), this.A0l);
            }
        }
        this.A0M = enumC2925nx;
    }

    public final void A1j(InterfaceC3183sB interfaceC3183sB) {
        this.A0O = interfaceC3183sB;
    }

    public final void A1k(AbstractC2200c3 abstractC2200c3) {
        this.A0Z = new WeakReference<>(abstractC2200c3);
    }

    public final void A1l(boolean z) {
        this.A0b = z;
    }

    public final void A1m(boolean z) {
        this.A0a = z;
    }

    public final void A1n(boolean z) {
        this.A0c = z;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0071  */
    /* JADX WARN: Code duplicated, block: B:35:0x00eb  */
    public final void A1o(boolean z, boolean z2) {
        String strA0W;
        if (z) {
            boolean zEquals = this.A0H.equals(EnumC2906nc.A05);
            String[] strArr = A0r;
            if (strArr[0].charAt(5) == strArr[2].charAt(5)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0r;
            strArr2[7] = "JLY2qeoxINM9b6rKgxvdoo5";
            strArr2[5] = "SO3TgjdXtMDnoN5cYw5MldE";
            if (zEquals && !A0r() && this.A0J != null) {
                this.A0J.AFu();
            }
            if (this.A0V != null) {
                this.A0V.A0U();
                this.A0j.A09();
                return;
            }
            return;
        }
        if (this.A0V != null) {
            C1716Lh c1716LhA12 = A12();
            String[] strArr3 = A0r;
            if (strArr3[7].length() != strArr3[5].length()) {
                String[] strArr4 = A0r;
                strArr4[7] = "USSBWMStI3ylD2K7nffeYBb";
                strArr4[5] = "raKwme25MGMDEpiUbEFBbTJ";
                if (c1716LhA12 != null) {
                    strA0W = c1716LhA12.A0G();
                } else {
                    strA0W = A0W(0, 0, 21);
                }
            } else {
                String[] strArr5 = A0r;
                strArr5[0] = "bG4PdUDVMluUNyK8pZyXt2dq2VQBZyfQ";
                strArr5[2] = "sHMyAJzOe9OYyidAIXRm3TyTiII6Suie";
                if (c1716LhA12 != null) {
                    strA0W = c1716LhA12.A0G();
                } else {
                    strA0W = A0W(0, 0, 21);
                }
            }
            this.A0j.A0C(this.A0h, strA0W);
            this.A0V.A0V();
        }
        GS gs = this.A0J;
        String[] strArr6 = A0r;
        if (strArr6[4].length() != strArr6[6].length()) {
            String[] strArr7 = A0r;
            strArr7[0] = "FypWWsEn8bqXdPqUiIsc7hG8qhiMqauF";
            strArr7[2] = "IXlSBRmtDoTZUwhzIwgkgymkT50eT72S";
            if (gs == null) {
                return;
            }
        } else if (gs == null) {
            return;
        }
        if (z2) {
            C2922nt c2922ntA01 = C2922nt.A01(AdErrorType.BROKEN_MEDIA_ERROR, A0W(93, 21, 63));
            A16().A0F().A3j(C3076qS.A01(this.A00), c2922ntA01.A03().getErrorCode(), c2922ntA01.A04());
            this.A0J.AEr(c2922ntA01);
        }
    }

    public final boolean A1p() {
        return this.A0Y.get() != null;
    }

    public final boolean A1q() {
        return this.A0a;
    }

    public final boolean A1r() {
        return A0F().A0h();
    }

    public final boolean A1s() {
        return A0F().A0g();
    }

    public final boolean A1t() {
        return this.A0M == EnumC2925nx.A04;
    }

    public final boolean A1u() {
        return this.A09 == null;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2919np
    public final int A8E() {
        View view = this.A06;
        if (!(view instanceof AdNativeComponentView)) {
            return -1;
        }
        View adContentsView = ((AdNativeComponentView) view).getAdContentsView();
        if (adContentsView instanceof C2338eI) {
            return ((C2338eI) adContentsView).getCurrentPosition();
        }
        return -1;
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final NativeAdBase.NativeAdLoadConfigBuilder buildLoadAdConfig(NativeAdBase nativeAdBase) {
        return new C2917nn(this, nativeAdBase);
    }

    @Override // com.facebook.ads.Ad
    public final void destroy() {
        AbstractC2933o5.A05(A0W(553, 7, 7), A0W(363, 19, 23), A0W(13, 8, 89));
        if (C2863mv.A1z(this.A0h)) {
            A16().A0B().ALo(this.A03);
        }
        if (!A0r()) {
            this.A0h.A0F().A3q();
        }
        if (this.A0C != null) {
            this.A0C.A0X(true);
            this.A0C.A0J();
            this.A0C = null;
        }
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final void downloadMedia() {
        if (this.A0H.equals(EnumC2906nc.A05)) {
            this.A0A = EnumC2381f0.A04;
        }
        this.A0H = EnumC2906nc.A04;
        A0i(this.A0f, false);
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final String getAdBodyText() {
        return A0G(true).A0L();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final String getAdCallToAction() {
        return A0G(true).A0Z();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final String getAdChoicesImageUrl() {
        if (getAdChoicesIcon() == null) {
            return null;
        }
        C2912ni adChoicesIcon = getAdChoicesIcon();
        String[] strArr = A0r;
        if (strArr[0].charAt(5) == strArr[2].charAt(5)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0r;
        strArr2[7] = "MRTmAh7YnfwjJHGdoro5GGF";
        strArr2[5] = "5NAjexdbITBZf7E7VHPXfXw";
        return adChoicesIcon.getUrl();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final String getAdChoicesLinkUrl() {
        return A0F().A0M();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final String getAdChoicesText() {
        return A0F().A0N();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final String getAdHeadline() {
        return A0G(true).A0O();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final String getAdLinkDescription() {
        return A0G(true).A0P();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final String getAdSocialContext() {
        return A0G(true).A0T();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final String getAdTranslation() {
        return A0G(true).A0W();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final String getAdUntrimmedBodyText() {
        return A0G(true).A0X();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final String getAdvertiserName() {
        return A0G(true).A0Y();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final float getAspectRatio() {
        if (this.A0f != null) {
            LK lkA0E = this.A0f.A0E();
            String[] strArr = A0r;
            if (strArr[7].length() != strArr[5].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0r;
            strArr2[1] = "Gk0JtmCCXYpL8dPDyrRdSPBqQO7pSw2M";
            strArr2[3] = "hZFl2ZrFl9W40ZKmdwMt57qcTxbjzHrP";
            C2912ni c2912niA0H = lkA0E.A0H();
            if (c2912niA0H != null) {
                int width = c2912niA0H.getWidth();
                int height = c2912niA0H.getHeight();
                if (height > 0) {
                    return width / height;
                }
                return 0.0f;
            }
        }
        return 0.0f;
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final String getId() {
        if (!isAdLoaded()) {
            return null;
        }
        String str = this.A0m;
        String[] strArr = A0r;
        if (strArr[4].length() == strArr[6].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0r;
        strArr2[7] = "iawtn5ImZtHDfKUJHK1ePg9";
        strArr2[5] = "61vZsTsWUXSHOR043CjOsZn";
        return str;
    }

    @Override // com.facebook.ads.Ad
    public final String getPlacementId() {
        return this.A0l;
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final Drawable getPreloadedIconViewDrawable() {
        C2912ni c2912niA0I;
        Bitmap bitmapA0N;
        if (this.A0f == null || (c2912niA0I = A0F().A0I()) == null || (bitmapA0N = this.A0g.A0N(c2912niA0I.getUrl())) == null) {
            return null;
        }
        C1618Hi c1618HiA16 = A16();
        boolean zA1u = A1u();
        String[] strArr = A0r;
        if (strArr[0].charAt(5) == strArr[2].charAt(5)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0r;
        strArr2[4] = "5rXv1LFjMRKkpcU7";
        strArr2[6] = "SFgDKFOuseBk";
        return A05(c1618HiA16, bitmapA0N, zA1u, A1I());
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final String getPromotedTranslation() {
        return A0G(true).A0S();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final String getSponsoredTranslation() {
        return A0G(true).A0U();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final boolean hasCallToAction() {
        return this.A0f != null && this.A0f.A0Q();
    }

    @Override // com.facebook.ads.Ad
    public final boolean isAdInvalidated() {
        boolean zA0A = true;
        if (this.A0C != null) {
            zA0A = this.A0C.A0Y();
        } else {
            KC kc = this.A0D;
            String[] strArr = A0r;
            if (strArr[1].charAt(16) == strArr[3].charAt(16)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0r;
            strArr2[7] = "v5uFzvuQ32LyebguaenlI2Y";
            strArr2[5] = "nsJGpwd0QPZOfVeZMyNRGWR";
            if (kc != null) {
                zA0A = this.A0D.A0A();
            }
        }
        this.A0h.A0F().A6E(zA0A);
        return zA0A;
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final boolean isAdLoaded() {
        return this.A0f != null && this.A0f.A0R();
    }

    @Override // com.facebook.ads.Ad
    public final void loadAd() {
        AbstractC2933o5.A05(A0W(560, 6, 14), A0W(382, 24, 98), A0W(21, 8, 126));
        A1f(EnumC2906nc.A00(NativeAdBase.MediaCacheFlag.ALL), null, new l5(false, -1, -1));
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final void loadAd(NativeAdBase.NativeLoadAdConfig nativeLoadAdConfig) {
        AbstractC2933o5.A05(A0W(560, 6, 14), A0W(382, 24, 98), A0W(5, 8, 76));
        ((C2917nn) nativeLoadAdConfig).A00();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final void onCtaBroadcast() {
        if (this.A05 != null) {
            this.A05.performClick();
        }
    }

    @Override // com.facebook.ads.internal.context.Repairable
    public final void repair(Throwable th) {
        if (this.A04 != null) {
            this.A04.post(new C1588Ge(this));
        }
        String str = A0W(164, 16, 64) + AbstractC3068qK.A03(this.A0h, th);
        A16().A0F().A3j(C3076qS.A01(this.A00), AdError.INTERNAL_ERROR_CODE, str);
        if (this.A0J != null) {
            this.A0J.AEr(new C2922nt(AdError.INTERNAL_ERROR_CODE, str));
        }
    }

    @Override // com.facebook.ads.Ad
    public final void setExtraHints(ExtraHints extraHints) {
        if (extraHints == null) {
            return;
        }
        A0o(extraHints.getHints());
        this.A0X = extraHints.getMediationData();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.A02 = onTouchListener;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0072  */
    /* JADX WARN: Code duplicated, block: B:31:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:33:0x00c1  */
    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final void unregisterView() {
        C2568i4 c2568i4 = this.A0R;
        if (c2568i4 != null) {
            ViewParent parent = c2568i4.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(c2568i4);
            }
            this.A0R = null;
        }
        if (this.A04 == null || this.A06 == null) {
            return;
        }
        if (!A0r()) {
            InterfaceC2300df interfaceC2300dfA0F = this.A0h.A0F();
            String[] strArr = A0r;
            if (strArr[4].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0r;
            strArr2[1] = "cYEHlIHF7Qe4IYNxEGisZavvdYqfT1NQ";
            strArr2[3] = "IvkWoeS5LcA5RnG3xI5yLmU1spuVl7qW";
            interfaceC2300dfA0F.unregisterView();
        }
        C1618Hi c1618Hi = this.A0h;
        String[] strArr3 = A0r;
        if (strArr3[1].charAt(16) != strArr3[3].charAt(16)) {
            String[] strArr4 = A0r;
            strArr4[0] = "MOnirYFFQGBOpDM1usFuy9dITQXNjsmg";
            strArr4[2] = "BENjy9ISBGpLCtRbprsy2gYEceZw0rIm";
            if (C2863mv.A1z(c1618Hi)) {
                A16().A0B().ALo(this.A03);
            }
        } else if (C2863mv.A1z(c1618Hi)) {
            A16().A0B().ALo(this.A03);
        }
        if (!A0t.containsKey(this.A04) || A0t.get(this.A04).get() != this) {
            throw new IllegalStateException(A0W(481, 38, 72));
        }
        boolean z = this.A04 instanceof ViewGroup;
        String[] strArr5 = A0r;
        if (strArr5[4].length() != strArr5[6].length()) {
            String[] strArr6 = A0r;
            strArr6[0] = "lVWmVGygxw0UbRbggHe19cSptvLLteak";
            strArr6[2] = "yD1YSLWVotW9RM3Ng5RpEu8J61bKeSm7";
            if (z) {
                if (this.A0N != null) {
                    ((ViewGroup) this.A04).removeView(this.A0N);
                    this.A0N = null;
                }
            }
        } else if (z) {
            if (this.A0N != null) {
                ((ViewGroup) this.A04).removeView(this.A0N);
                this.A0N = null;
            }
        }
        if (this.A0f != null) {
            this.A0f.A0J();
        }
        if (this.A0P != null && C2863mv.A1B(this.A0h)) {
            this.A0P.A07();
            this.A04.getOverlay().remove(this.A0P);
        }
        if (this.A07 != null) {
            ViewTreeObserver viewTreeObserver = this.A04.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnWindowFocusChangeListener(this.A07);
            }
            this.A07 = null;
        }
        A0t.remove(this.A04);
        A0a();
        this.A04 = null;
        this.A06 = null;
        if (this.A0V != null) {
            this.A0V.A0V();
            this.A0V = null;
        }
        A0d();
        this.A0B = null;
        this.A0a = false;
    }
}
