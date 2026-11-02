package com.ironsource.mediationsdk;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.ironsource.B3;
import com.ironsource.C3689l3;
import com.ironsource.C3801r4;
import com.ironsource.C5;
import com.ironsource.D5;
import com.ironsource.N9;
import com.ironsource.Y7;
import com.ironsource.environment.ContextProvider;
import com.ironsource.environment.thread.IronSourceThreadManager;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.unity3d.mediation.adapters.levelplay.LevelPlayBaseAdapter;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class j {
    public static final String a = "BANNER";
    public static final String b = "LARGE";
    public static final String c = "RECTANGLE";
    public static final String d = "LEADERBOARD";
    public static final String e = "SMART";
    public static final String f = "CUSTOM";
    public static final String g = "MEDIUM_RECTANGLE";
    public static final String h = "bannerAdSize";
    public static final int i = 0;
    public static final int j = 1;
    public static final int k = 2;
    public static final int l = 3;
    public static final int m = 4;
    public static final int n = 5;
    public static final int o = 6;
    public static final int p = -1;
    public static final String q = "Adaptive=true";

    interface a {
        void a(Map<String, Object> map, List<String> list, StringBuilder sb);
    }

    interface b {
        void a();

        void a(String str);
    }

    public static int a(int i2) {
        int iA = -1;
        try {
            iA = a(a(c.c()), i2);
            a(i2, iA);
            IronLog.API.verbose("Maximal height - " + iA + " for width - " + i2);
            return iA;
        } catch (Exception e2) {
            C3801r4.d().a(e2);
            IronLog.INTERNAL.error("Failed to get adaptive height: " + e2.getMessage());
            return iA;
        }
    }

    private static int a(Object obj, int i2) {
        if (obj instanceof AbstractAdapter) {
            return ((AbstractAdapter) obj).getAdaptiveHeight(i2);
        }
        if (obj instanceof LevelPlayBaseAdapter) {
            return ((LevelPlayBaseAdapter) obj).getAdaptiveHeight(i2);
        }
        return -1;
    }

    private static int a(Map<String, Object> map, int i2) {
        int iMax = -1;
        for (Object obj : map.values()) {
            try {
                iMax = Math.max(iMax, a(obj, i2));
            } catch (Throwable th) {
                a(obj, th);
            }
        }
        return iMax;
    }

    static long a(long j2, long j3) {
        return j3 - (new Date().getTime() - j2);
    }

    public static ISBannerSize a() {
        return new ISBannerSize("LEADERBOARD", 728, 90);
    }

    public static ISBannerSize a(String str, int i2, int i3) {
        return new ISBannerSize(str, i2, i3);
    }

    public static String a(ISBannerSize iSBannerSize) {
        return "Adaptive=true, size: " + iSBannerSize.e.d() + "x" + iSBannerSize.e.c() + "; fallback: " + iSBannerSize.getDescription() + ", size: " + iSBannerSize.getWidth() + "x" + iSBannerSize.getHeight() + ";";
    }

    private static Map<String, Object> a(c cVar) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        concurrentHashMap.putAll(cVar.a());
        concurrentHashMap.putAll(cVar.d());
        return concurrentHashMap;
    }

    private static void a(int i2, int i3) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(IronSourceConstants.EVENTS_PROVIDER, "Mediation");
            if (i3 == -1) {
                jSONObject.put("errorCode", 2);
                jSONObject.put("reason", "No networks found supporting adaptive banners");
            } else {
                jSONObject.put(IronSourceConstants.EVENTS_EXT1, "w:" + i2 + ",h:" + i3);
            }
            N9.i().a(new C5(D5.BN_GET_MAXIMAL_ADAPTIVE_HEIGHT, jSONObject));
        } catch (Exception e2) {
            C3801r4.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
        }
    }

    public static void a(o oVar) {
        if (oVar != null) {
            oVar.a();
        }
    }

    private static void a(o oVar, View view, Context context, ISBannerSize iSBannerSize) {
        int iDpToPixels = AdapterUtils.dpToPixels(context, iSBannerSize.e.d());
        int iDpToPixels2 = AdapterUtils.dpToPixels(context, iSBannerSize.e.c());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDpToPixels, iDpToPixels2);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setLayoutParams(layoutParams);
        relativeLayout.setGravity(17);
        relativeLayout.addView(view, 0);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) oVar.getLayoutParams();
        if (layoutParams2 == null) {
            layoutParams2 = new FrameLayout.LayoutParams(iDpToPixels, iDpToPixels2);
        }
        layoutParams2.height = iDpToPixels2;
        layoutParams2.width = iDpToPixels;
        layoutParams2.gravity = 17;
        oVar.setLayoutParams(layoutParams2);
        IronLog.INTERNAL.verbose("containerParams height - " + iSBannerSize.e.c() + " width - " + iSBannerSize.e.d());
        oVar.addView(relativeLayout, 0, layoutParams2);
    }

    public static void a(o oVar, View view, FrameLayout.LayoutParams layoutParams) {
        a(oVar, view, layoutParams, (B3) null);
    }

    public static void a(final o oVar, final View view, final FrameLayout.LayoutParams layoutParams, final B3 b3) {
        if (oVar == null || view == null || layoutParams == null) {
            return;
        }
        final Context applicationContext = ContextProvider.getInstance().getApplicationContext();
        final ISBannerSize size = oVar.getSize();
        IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new Runnable() { // from class: com.ironsource.mediationsdk.j$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                j.a(oVar, view, size, applicationContext, layoutParams, b3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(o oVar, View view, ISBannerSize iSBannerSize, Context context, FrameLayout.LayoutParams layoutParams, B3 b3) {
        try {
            oVar.removeAllViews();
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view);
            }
            if (iSBannerSize != null) {
                if (iSBannerSize.isAdaptive()) {
                    a(oVar, view, context, iSBannerSize);
                } else {
                    oVar.addView(view, 0, layoutParams);
                }
            }
            if (b3 != null) {
                b3.a();
            }
        } catch (Exception e2) {
            C3801r4.d().a(e2);
            IronLog.INTERNAL.error("Error while binding a banner - " + Log.getStackTraceString(e2));
        }
    }

    static void a(o oVar, C3689l3 c3689l3, b bVar) {
        String str;
        if (c(oVar)) {
            str = null;
        } else {
            str = String.format("can't load banner - %s", oVar == null ? "banner is null" : "banner is destroyed");
        }
        if (c3689l3 == null || TextUtils.isEmpty(c3689l3.c())) {
            str = String.format("can't load banner - %s", c3689l3 == null ? "placement is null" : "placement name is empty");
        }
        if (TextUtils.isEmpty(str)) {
            bVar.a();
        } else {
            IronLog.INTERNAL.error(str);
            bVar.a(str);
        }
    }

    static void a(o oVar, b bVar) {
        if (oVar == null || oVar.b()) {
            bVar.a(String.format("can't destroy banner - %s", oVar == null ? "banner is null" : "banner is destroyed"));
        } else {
            bVar.a();
        }
    }

    private static void a(Object obj, Throwable th) {
        String simpleName = obj != null ? obj.getClass().getSimpleName() : "unknown";
        C3801r4.d().a(th);
        IronLog.INTERNAL.error("Exception while calling getAdaptiveHeight for adapter - " + simpleName + ": " + th.getMessage());
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0051  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static void a(Map<String, Object> map, ISBannerSize iSBannerSize) {
        byte b2;
        if (iSBannerSize != null) {
            try {
                String description = iSBannerSize.getDescription();
                switch (description.hashCode()) {
                    case -387072689:
                        if (!description.equals("RECTANGLE")) {
                            b2 = -1;
                        } else {
                            b2 = 2;
                        }
                        break;
                    case 72205083:
                        if (!description.equals("LARGE")) {
                            b2 = -1;
                        } else {
                            b2 = 1;
                        }
                        break;
                    case 79011241:
                        if (!description.equals("SMART")) {
                            b2 = -1;
                        } else {
                            b2 = 4;
                        }
                        break;
                    case 446888797:
                        if (!description.equals("LEADERBOARD")) {
                            b2 = -1;
                        } else {
                            b2 = 3;
                        }
                        break;
                    case 1951953708:
                        if (!description.equals("BANNER")) {
                            b2 = -1;
                        } else {
                            b2 = 0;
                        }
                        break;
                    case 1999208305:
                        if (!description.equals("CUSTOM")) {
                            b2 = -1;
                        } else {
                            b2 = 5;
                        }
                        break;
                    default:
                        b2 = -1;
                        break;
                }
                if (b2 == 0) {
                    map.put(h, 1);
                } else if (b2 == 1) {
                    map.put(h, 2);
                } else if (b2 == 2) {
                    map.put(h, 3);
                } else if (b2 == 3) {
                    map.put(h, 4);
                } else if (b2 == 4) {
                    map.put(h, 5);
                } else if (b2 == 5) {
                    map.put(h, 6);
                    map.put("custom_banner_size", iSBannerSize.getWidth() + "x" + iSBannerSize.getHeight());
                }
                if (iSBannerSize.isAdaptive()) {
                    String strA = a(iSBannerSize);
                    if (map.containsKey(IronSourceConstants.EVENTS_EXT1)) {
                        strA = map.get(IronSourceConstants.EVENTS_EXT1) + " , " + a(iSBannerSize);
                    }
                    map.put(IronSourceConstants.EVENTS_EXT1, strA);
                }
            } catch (Exception e2) {
                C3801r4.d().a(e2);
                IronLog.INTERNAL.error(Log.getStackTraceString(e2));
            }
        }
    }

    public static boolean a(Y7 y7, int i2, int i3) {
        if (y7 == null || y7.d() <= 0 || y7.c() <= 0) {
            IronLog.API.warning("Container size is invalid: Default banner size will be used.");
            return false;
        }
        if (y7.d() >= i2 && y7.c() >= i3) {
            return true;
        }
        IronLog.API.warning("Container size too small: Banner may not display correctly.");
        return true;
    }

    public static int b(int i2) {
        if (p.g().F()) {
            return a(i2);
        }
        IronLog.API.error("The mediation must be successfully initiated before calling this API");
        return -1;
    }

    public static ISBannerSize b() {
        if (AdapterUtils.isLargeScreen(ContextProvider.getInstance().getApplicationContext())) {
            a("SMART", 728, 90);
        }
        return a("SMART", 320, 50);
    }

    public static void b(o oVar) {
        ISBannerSize size;
        if (oVar == null || (size = oVar.getSize()) == null || !size.isSmart()) {
            return;
        }
        ISBannerSize iSBannerSizeB = b();
        m.a.a(iSBannerSizeB, size.e);
        iSBannerSizeB.setAdaptive(size.isAdaptive());
        oVar.setBannerSize(iSBannerSizeB);
    }

    static boolean c(o oVar) {
        return (oVar == null || oVar.b()) ? false : true;
    }
}
