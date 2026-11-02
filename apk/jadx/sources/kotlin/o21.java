package kotlin;

import android.app.Activity;
import android.app.LocaleManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.Process;
import android.webkit.CookieManager;
import com.ironsource.C3510b4;
import com.ironsource.G5;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.Regex;
import p005kotlin.text.StringsKt;
import p005kotlin.text.Typography;

/* JADX INFO: loaded from: classes.dex */
public final class o21 {
    public static final m21 f = new m21();
    public static final AtomicReference g = new AtomicReference(null);
    public static final Regex h = new Regex("^(ca-app-pub-[0-9]{16})~([0-9]{10})$");
    public static final Regex i = new Regex("^(ca-app-pub-[a-zA-Z0-9\\-]+)/([a-zA-Z0-9_\\-]+)(/.*)?$");
    public static final Regex j = new Regex("^/([0-9]+(?:,[0-9]+)*)(?:/.*)?$");
    public final Context a;
    public final f0 b;
    public final ex0 c;
    public final k0 d;
    public final Class e;

    public o21(Context applicationContext, f0 activityTracker, ex0 flags, k0 adActivityDelegateMap, Class adActivityClass) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(adActivityDelegateMap, "adActivityDelegateMap");
        Intrinsics.checkNotNullParameter(adActivityClass, "adActivityClass");
        this.a = applicationContext;
        this.b = activityTracker;
        this.c = flags;
        this.d = adActivityDelegateMap;
        this.e = adActivityClass;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0040  */
    public static n21 a(Context context) {
        Configuration configuration;
        LocaleList locales;
        Intrinsics.checkNotNullParameter(context, "context");
        n21 n21Var = new n21(Locale.getDefault().getLanguage(), Locale.getDefault().getCountry());
        if (Build.VERSION.SDK_INT >= 33) {
            LocaleManager localeManager = (LocaleManager) context.getSystemService(LocaleManager.class);
            if (localeManager != null) {
                locales = localeManager.getSystemLocales();
            } else {
                locales = null;
            }
        } else {
            Resources resources = context.getResources();
            if (resources == null || (configuration = resources.getConfiguration()) == null) {
                locales = null;
            } else {
                locales = configuration.getLocales();
            }
        }
        if (locales == null || locales.isEmpty()) {
            return n21Var;
        }
        Locale locale = locales.get(0);
        return new n21(locale.getLanguage(), locale.getCountry());
    }

    public static CookieManager b() {
        int iMyUid = Process.myUid();
        if (iMyUid == 0 || iMyUid == 1000 || iMyUid == 1001 || iMyUid == 1002 || iMyUid == 1027) {
            return null;
        }
        return CookieManager.getInstance();
    }

    public final long a() {
        PackageInfo packageInfo;
        PackageInfo packageInfo2;
        if (Build.VERSION.SDK_INT < 33) {
            PackageManager packageManager = this.a.getPackageManager();
            return (packageManager == null || (packageInfo = packageManager.getPackageInfo(this.a.getPackageName(), 128)) == null) ? 0 : packageInfo.versionCode;
        }
        PackageManager packageManager2 = this.a.getPackageManager();
        if (packageManager2 == null || (packageInfo2 = packageManager2.getPackageInfo(this.a.getPackageName(), PackageManager.PackageInfoFlags.of(128L))) == null) {
            return 0L;
        }
        return packageInfo2.getLongVersionCode();
    }

    public final Intent a(Context context, h0 delegate) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(delegate, "adActivityDelegate");
        Intent intent = new Intent(context, (Class<?>) this.e);
        Bundle bundle = new Bundle();
        k0 k0Var = this.d;
        k0Var.getClass();
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        int andIncrement = k0Var.c.getAndIncrement();
        CoroutineScope coroutineScope = k0Var.a;
        j0 block = new j0(k0Var, andIncrement, null);
        EmptyCoroutineContext context2 = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context2, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(coroutineScope, context2, null, new ws3(block, null), 2, null);
        k0Var.d.put(Integer.valueOf(andIncrement), new i0(delegate, jobLaunch$default));
        bundle.putInt("ad_activity_delegate", andIncrement);
        intent.putExtra("ad_activity_delegate_bundle", bundle);
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        return intent;
    }

    public final boolean a(Intent intent) {
        if (intent == null) {
            return false;
        }
        Context contextG = this.b.g();
        if (contextG == null) {
            contextG = this.a;
        }
        if (!(contextG instanceof Activity)) {
            intent.addFlags(268435456);
        }
        try {
            contextG.startActivity(intent);
            return true;
        } catch (Throwable th) {
            xs3.a("Exception starting Activity: " + th.getMessage(), th, 4);
            return false;
        }
    }

    public final boolean a(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        if (!b(uri)) {
            return false;
        }
        String string = uri.toString();
        ex0 ex0Var = this.c;
        ex0Var.getClass();
        List defaultValue = CollectionsKt.listOf("^[^?]*(/aclk|/pcs/click|/dbm/clk).*");
        Intrinsics.checkNotNullParameter("gads:click_url_pattern_match", C3510b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        List list = (List) ex0Var.a("gads:click_url_pattern_match", defaultValue, yr.g);
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Regex regex = new Regex((String) it.next());
            Intrinsics.checkNotNull(string);
            if (regex.containsMatchIn(string)) {
                return true;
            }
        }
        return false;
    }

    public final boolean b(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        String host = uri.getHost();
        if (host != null) {
            ex0 ex0Var = this.c;
            ex0Var.getClass();
            List defaultValue = CollectionsKt.listOf((Object[]) new String[]{".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"});
            Intrinsics.checkNotNullParameter("gads:google_ad_domain_suffixes", C3510b4.i.W);
            Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
            List list = (List) ex0Var.a("gads:google_ad_domain_suffixes", defaultValue, yr.g);
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    if (StringsKt.endsWith$default(host, (String) it.next(), false, 2, (Object) null)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean c() {
        PackageManager packageManager = this.a.getPackageManager();
        if (packageManager != null) {
            return packageManager.isInstantApp();
        }
        return false;
    }

    public final boolean c(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        if (!b(uri)) {
            return false;
        }
        String string = uri.toString();
        ex0 ex0Var = this.c;
        ex0Var.getClass();
        List defaultValue = CollectionsKt.listOf("^[^?]*(/adview|/pcs/view).*");
        Intrinsics.checkNotNullParameter("gads:impression_url_pattern_match", C3510b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        List list = (List) ex0Var.a("gads:impression_url_pattern_match", defaultValue, yr.g);
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Regex regex = new Regex((String) it.next());
            Intrinsics.checkNotNull(string);
            if (regex.containsMatchIn(string)) {
                return true;
            }
        }
        return false;
    }

    public final Map d(Uri uri) {
        String encodedQuery;
        String strDecode;
        Intrinsics.checkNotNullParameter(uri, "uri");
        ex0 ex0Var = this.c;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:uri_query_to_map:enabled", C3510b4.i.W);
        if (!((Boolean) ex0Var.a("gads:uri_query_to_map:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
            return m21.a(uri);
        }
        Intrinsics.checkNotNullParameter(uri, "uri");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (!uri.isOpaque() && (encodedQuery = uri.getEncodedQuery()) != null) {
            int length = encodedQuery.length();
            int i2 = 0;
            while (true) {
                int iIndexOf$default = StringsKt.indexOf$default((CharSequence) encodedQuery, Typography.amp, i2, false, 4, (Object) null);
                int i3 = iIndexOf$default != -1 ? iIndexOf$default : length;
                int iIndexOf$default2 = StringsKt.indexOf$default((CharSequence) encodedQuery, G5.U, i2, false, 4, (Object) null);
                if (iIndexOf$default2 > i3 || iIndexOf$default2 == -1) {
                    iIndexOf$default2 = i3;
                }
                String strSubstring = encodedQuery.substring(i2, iIndexOf$default2);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                String strDecode2 = Uri.decode(strSubstring);
                if (iIndexOf$default2 == i3) {
                    strDecode = "";
                } else {
                    String strSubstring2 = encodedQuery.substring(iIndexOf$default2 + 1, i3);
                    Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                    strDecode = Uri.decode(strSubstring2);
                }
                Intrinsics.checkNotNull(strDecode2);
                Intrinsics.checkNotNull(strDecode);
                linkedHashMap.put(strDecode2, strDecode);
                if (iIndexOf$default == -1) {
                    break;
                }
                i2 = iIndexOf$default + 1;
            }
        }
        return linkedHashMap;
    }

    public final boolean d() {
        String str = a(this.a).b;
        if (str == null) {
            return false;
        }
        String lowerCase = str.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        if (lowerCase != null) {
            return lowerCase.equals("ru");
        }
        return false;
    }
}
