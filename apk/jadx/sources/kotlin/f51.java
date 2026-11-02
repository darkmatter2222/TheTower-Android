package kotlin;

import android.content.Context;
import android.net.Uri;
import com.appsflyer.AdRevenueScheme;
import com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration;
import com.google.common.base.Splitter;
import com.google.gson.JsonObject;
import com.ironsource.C3510b4;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class f51 {
    public final h51 a;
    public final ex0 b;
    public final g83 c;
    public final cw2 d;
    public final l43 e;
    public final Context f;
    public final CoroutineScope g;
    public final CoroutineScope h;
    public final o21 i;
    public final Object j;
    public final LinkedHashMap k;

    public f51(h51 afmaMessenger, ex0 flags, g83 rootTraceCreator, xf0 h5FullscreenAdComponentProvider, l43 requestConfigurationWrapper, Context context, CoroutineScope backgroundScope, CoroutineScope uiScope, o21 gmaUtil) {
        Intrinsics.checkNotNullParameter(afmaMessenger, "afmaMessenger");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(h5FullscreenAdComponentProvider, "h5FullscreenAdComponentProvider");
        Intrinsics.checkNotNullParameter(requestConfigurationWrapper, "requestConfigurationWrapper");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        this.a = afmaMessenger;
        this.b = flags;
        this.c = rootTraceCreator;
        this.d = h5FullscreenAdComponentProvider;
        this.e = requestConfigurationWrapper;
        this.f = context;
        this.g = backgroundScope;
        this.h = uiScope;
        this.i = gmaUtil;
        this.j = new Object();
        this.k = new LinkedHashMap();
    }

    public static final void c(f51 f51Var) {
        synchronized (f51Var.j) {
            f51Var.k.clear();
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
        }
        h51 h51Var = f51Var.a;
        h51Var.getClass();
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("eventCategory", "initialize");
        h51Var.a(jsonObject);
    }

    public final void a() {
        synchronized (this.j) {
            Iterator it = this.k.values().iterator();
            while (it.hasNext()) {
                ((a51) it.next()).dispose();
            }
            this.k.clear();
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
        }
    }

    public final void a(long j) {
        a51 a51Var;
        synchronized (this.j) {
            a51Var = (a51) this.k.remove(Long.valueOf(j));
        }
        if (a51Var == null) {
            xs3.a("Could not dispose H5 ad, object ID does not exist: " + j, null, 6);
            return;
        }
        a51Var.dispose();
        Splitter splitter = f01.a;
        f01.b("DisposeH5 ad: " + j, null);
    }

    public final void a(long j, String str) {
        a51 a51Var;
        synchronized (this.j) {
            a51Var = (a51) this.k.get(Long.valueOf(j));
        }
        if (a51Var != null) {
            BuildersKt__Builders_commonKt.launch$default(this.h, null, null, new e51(a51Var, null), 3, null);
            return;
        }
        Splitter splitter = f01.a;
        f01.c("Could not show H5 ad, object ID does not exist: " + j, null);
        if (Intrinsics.areEqual(str, "show_interstitial_ad")) {
            this.a.a(j);
        } else {
            this.a.d(j);
        }
    }

    public final void a(Map map, long j, String str) {
        a51 a51Var;
        synchronized (this.j) {
            a51Var = (a51) this.k.get(Long.valueOf(j));
        }
        if (a51Var != null) {
            s51 s51VarA = r51.a(map, a51Var.getAdUnitId(), this.f, this.e.a());
            RequestConfiguration requestConfiguration = s51VarA.b;
            if (requestConfiguration != null) {
                this.e.a(requestConfiguration);
            }
            a51Var.a(s51VarA);
            return;
        }
        Splitter splitter = f01.a;
        f01.c("Could not load H5 ad, object ID does not exist: " + j, null);
        if (Intrinsics.areEqual(str, "load_interstitial_ad")) {
            this.a.a(j);
        } else {
            this.a.d(j);
        }
    }

    public final void a(Map map, long j, Function2 function2) {
        a51 a51Var;
        synchronized (this.j) {
            if (this.k.size() >= this.b.W()) {
                f01.c("Could not create H5 ad, too many existing objects", null);
            } else if (this.k.containsKey(Long.valueOf(j))) {
                Splitter splitter = f01.a;
                f01.c("Could not create h5 ad, object ID already exists: " + j, null);
            } else {
                String str = (String) map.get(AdRevenueScheme.AD_UNIT);
                if (str == null || str.length() == 0) {
                    f01.c("Could not create H5 ad, missing ad unit", null);
                } else {
                    a51Var = (a51) function2.invoke(str, Long.valueOf(j));
                    this.k.put(Long.valueOf(j), a51Var);
                }
            }
            a51Var = null;
        }
        if (a51Var == null) {
            this.a.c(j);
            return;
        }
        Splitter splitter2 = f01.a;
        f01.b("Created H5 ad " + j + " with ad unit " + a51Var.getAdUnitId(), null);
        this.a.b(j);
    }

    public final boolean a(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        int length = url.length();
        ex0 ex0Var = this.b;
        if (length <= ((Number) ex0Var.a("gads:h5ads:max_gmsg_length", by0.a(ex0Var, "gads:h5ads:max_gmsg_length", C3510b4.i.W, 5000), yr.f)).intValue()) {
            Uri uri = Uri.parse(url);
            return Intrinsics.areEqual("gmsg", uri.getScheme()) && Intrinsics.areEqual("mobileads.google.com", uri.getHost()) && Intrinsics.areEqual("/h5ads", uri.getPath());
        }
        Splitter splitter = f01.a;
        f01.c("H5 GMSG exceeds max length", null);
        return false;
    }
}
