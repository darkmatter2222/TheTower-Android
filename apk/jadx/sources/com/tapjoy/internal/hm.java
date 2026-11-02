package com.tapjoy.internal;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.Window;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.ironsource.C3510b4;
import com.tapjoy.TapjoyConnectFlag;
import com.tapjoy.TapjoyConstants;
import com.unity3d.services.UnityAdsConstants;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import java.util.TimeZone;
import java.util.UUID;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class hm {
    public static final String a = UUID.randomUUID().toString();
    private static hm d;
    final fj.a b;
    final ht c;
    private final fc.a e;
    private final ew.a f;
    private final Context g;

    private hm(Context context, ht htVar) {
        hx.a();
        fc.a aVar = new fc.a();
        this.e = aVar;
        ew.a aVar2 = new ew.a();
        this.f = aVar2;
        fj.a aVar3 = new fj.a();
        this.b = aVar3;
        aVar.p = "12.10.0/Android";
        aVar.g = C3510b4.d;
        aVar.h = Build.VERSION.RELEASE;
        aVar.e = Build.MANUFACTURER;
        aVar.f = Build.MODEL;
        aVar.l = Locale.getDefault().toString();
        aVar.m = TimeZone.getDefault().getID();
        Context applicationContext = context.getApplicationContext();
        this.g = applicationContext;
        SharedPreferences sharedPreferences = applicationContext.getSharedPreferences(TapjoyConstants.TJC_PREFERENCE, 0);
        File file = new File(hj.c(applicationContext), "deviceid");
        String string = sharedPreferences.getString(TapjoyConstants.PREF_ANALYTICS_ID, null);
        if (TextUtils.isEmpty(string)) {
            String strB = file.exists() ? gs.b(ba.a(file)) : null;
            string = strB == null ? UUID.randomUUID().toString() : strB;
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putString(TapjoyConstants.PREF_ANALYTICS_ID, string);
            editorEdit.apply();
        }
        aVar.d = string;
        if (!gd.b().a(TapjoyConnectFlag.DISABLE_ANDROID_ID_AS_ANALYTICS_ID, true)) {
            String string2 = Settings.Secure.getString(applicationContext.getContentResolver(), TapjoyConstants.TJC_ANDROID_ID);
            aVar.t = !"9774d56d682e549c".equals(string2) ? gs.b(string2) : null;
        }
        PackageManager packageManager = applicationContext.getPackageManager();
        TelephonyManager telephonyManager = (TelephonyManager) applicationContext.getSystemService("phone");
        if (telephonyManager != null) {
            String simCountryIso = telephonyManager.getSimCountryIso();
            if (!TextUtils.isEmpty(simCountryIso)) {
                aVar.q = simCountryIso.toUpperCase(Locale.US);
            }
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            if (!TextUtils.isEmpty(networkCountryIso)) {
                aVar.r = networkCountryIso.toUpperCase(Locale.US);
            }
        }
        String packageName = applicationContext.getPackageName();
        aVar.n = packageName;
        Signature[] signatureArrE = y.e(packageManager, packageName);
        aVar.o = gs.a((signatureArrE == null || signatureArrE.length <= 0) ? null : Base64.encodeToString(cb.a(signatureArrE[0].toByteArray()), 2));
        aVar2.c = y.a(packageManager, packageName);
        aVar2.d = Integer.valueOf(y.b(packageManager, packageName));
        String installerPackageName = packageManager.getInstallerPackageName(packageName);
        if (!TextUtils.isEmpty(installerPackageName)) {
            aVar2.f = installerPackageName;
        }
        String strA = a(packageManager, packageName);
        if (!TextUtils.isEmpty(strA)) {
            aVar2.g = strA;
        }
        a();
        this.c = htVar;
        String strA2 = htVar.c.a();
        if (strA2 != null && strA2.length() > 0) {
            aVar.p = strA2 + " 12.10.0/Android";
        }
        String strB2 = htVar.b();
        if (strB2 != null) {
            aVar3.d = strB2;
        }
        long jC = htVar.b.getLong("it", 0L);
        if (jC == 0) {
            Context context2 = htVar.a;
            jC = y.c(context2.getPackageManager(), context2.getPackageName());
            if (jC == 0) {
                jC = hj.d(htVar.a).lastModified();
                if (jC == 0) {
                    Context context3 = htVar.a;
                    jC = new File(y.d(context3.getPackageManager(), context3.getPackageName())).lastModified();
                    if (jC == 0) {
                        jC = System.currentTimeMillis();
                    }
                }
            }
            htVar.b.edit().putLong("it", jC).apply();
        }
        aVar3.c = Long.valueOf(jC);
        int iB = htVar.f.b();
        aVar3.e = Integer.valueOf(a(7, iB));
        aVar3.f = Integer.valueOf(a(30, iB));
        int iB2 = htVar.h.b();
        if (iB2 > 0) {
            aVar3.h = Integer.valueOf(iB2);
        }
        long jA = htVar.i.a();
        if (jA > 0) {
            aVar3.i = Long.valueOf(jA);
        }
        long jA2 = htVar.j.a();
        if (jA2 > 0) {
            aVar3.j = Long.valueOf(jA2);
        }
        long jA3 = htVar.k.a();
        if (jA3 > 0) {
            aVar3.k = Long.valueOf(jA3);
        }
        String strA3 = htVar.l.a();
        if (strA3 != null) {
            aVar3.l = strA3;
        }
        int iB3 = htVar.m.b();
        if (iB3 > 0) {
            aVar3.m = Integer.valueOf(iB3);
        }
        double dA = htVar.n.a();
        if (dA != FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            aVar3.n = Double.valueOf(dA);
        }
        long jA4 = htVar.o.a();
        if (jA4 > 0) {
            aVar3.o = Long.valueOf(jA4);
        }
        double dA2 = htVar.p.a();
        if (dA2 != FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            aVar3.p = Double.valueOf(dA2);
        }
        String strA4 = htVar.g.a();
        if (strA4 != null) {
            try {
                fh fhVarA = fh.c.a(Base64.decode(strA4, 2));
                aVar3.g.clear();
                aVar3.g.addAll(fhVarA.d);
            } catch (IOException unused) {
                this.c.g.c();
            } catch (IllegalArgumentException unused2) {
                this.c.g.c();
            }
        }
        this.f.e = this.c.q.a();
        this.b.s = this.c.r.a();
        int iIntValue = this.c.s.a().intValue();
        this.b.t = iIntValue != -1 ? Integer.valueOf(iIntValue) : null;
        int iIntValue2 = this.c.t.a().intValue();
        this.b.u = iIntValue2 != -1 ? Integer.valueOf(iIntValue2) : null;
        this.b.v = this.c.u.a();
        this.b.w = this.c.v.a();
        this.b.x = this.c.w.a();
        this.b.y = this.c.x.a();
        this.b.z = this.c.y.a();
        String strA5 = this.c.z.a();
        if (strA5 != null) {
            try {
                fi fiVarA = fi.c.a(Base64.decode(strA5, 2));
                this.b.A.clear();
                this.b.A.addAll(fiVarA.d);
            } catch (IOException unused3) {
                this.c.z.c();
            } catch (IllegalArgumentException unused4) {
                this.c.z.c();
            }
        }
        String strA6 = this.c.A.a();
        boolean zBooleanValue = this.c.B.a().booleanValue();
        if (strA6 != null) {
            this.b.q = strA6;
            this.b.r = Boolean.valueOf(zBooleanValue);
        } else {
            this.b.q = null;
            this.b.r = null;
        }
        this.b.B = this.c.C.a();
    }

    private static int a(int i, int i2) {
        return Integer.bitCount(((1 << i) - 1) & i2);
    }

    public static synchronized hm a(Context context) {
        if (d == null) {
            d = new hm(context, ht.a(context));
        }
        return d;
    }

    private static String a(PackageManager packageManager, String str) {
        Object obj;
        try {
            Bundle bundle = packageManager.getApplicationInfo(str, 128).metaData;
            if (bundle == null || (obj = bundle.get("com.tapjoy.appstore")) == null) {
                return null;
            }
            return obj.toString().trim();
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    private void g() {
        this.c.g.a(Base64.encodeToString(fh.c.b(new fh(this.b.g)), 2));
    }

    final void a() {
        Window window;
        synchronized (this) {
            try {
                DisplayMetrics displayMetrics = new DisplayMetrics();
                h.a(this.g).getDefaultDisplay().getMetrics(displayMetrics);
                Activity activityA = hb.a();
                if (activityA != null && (window = activityA.getWindow()) != null) {
                    displayMetrics.heightPixels -= ac.a(window);
                }
                this.e.i = Integer.valueOf(displayMetrics.densityDpi);
                this.e.j = Integer.valueOf(displayMetrics.widthPixels);
                this.e.k = Integer.valueOf(displayMetrics.heightPixels);
            } catch (Exception unused) {
            }
        }
    }

    public final void a(long j, double d2) {
        synchronized (this) {
            SharedPreferences.Editor editorA = this.c.a();
            this.c.o.a(editorA, j);
            this.c.p.a(editorA, d2);
            editorA.apply();
            this.b.o = Long.valueOf(j);
            this.b.p = Double.valueOf(d2);
        }
    }

    public final void a(String str, double d2) {
        synchronized (this) {
            SharedPreferences.Editor editorA = this.c.a();
            int iB = 1;
            if (str.equals(this.c.l.a())) {
                iB = 1 + this.c.m.b();
                this.c.m.a(editorA, iB);
                d2 += this.c.n.a();
                this.c.n.a(editorA, d2);
                editorA.apply();
            } else {
                this.c.l.a(editorA, str);
                this.c.m.a(editorA, 1);
                this.c.n.a(editorA, d2);
                this.c.o.a(editorA);
                this.c.p.a(editorA);
                editorA.apply();
                this.b.l = str;
                this.b.o = null;
                this.b.p = null;
            }
            this.b.m = Integer.valueOf(iB);
            this.b.n = Double.valueOf(d2);
        }
    }

    public final void a(String str, boolean z) {
        String strA = this.c.A.a();
        this.b.q = str;
        this.b.r = Boolean.valueOf(z);
        this.c.A.a(str);
        this.c.B.a(z);
        hx.a(str, z);
        if (TextUtils.isEmpty(strA) || str.equals(strA)) {
            return;
        }
        this.c.a(false);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0034 A[Catch: all -> 0x0044, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0009, B:8:0x0042, B:7:0x0034), top: B:13:0x0003 }] */
    public final void a(Set<String> set) {
        synchronized (this) {
            if (set == null) {
                this.c.z.c();
                this.b.A.clear();
            } else if (set.isEmpty()) {
                this.c.z.c();
                this.b.A.clear();
            } else {
                this.c.z.a(Base64.encodeToString(fi.c.b(new fi(new ArrayList(set))), 2));
                this.b.A.clear();
                this.b.A.addAll(set);
            }
            throw th;
        }
    }

    public final boolean a(int i, String str) {
        boolean z;
        boolean z2;
        synchronized (this) {
            try {
                if (i == 1) {
                    this.c.u.a(str);
                    boolean zA = gq.a(this.b.v, str);
                    z = !zA;
                    if (!zA) {
                        this.b.v = str;
                    }
                } else if (i == 2) {
                    this.c.v.a(str);
                    boolean zA2 = gq.a(this.b.w, str);
                    z = !zA2;
                    if (!zA2) {
                        this.b.w = str;
                    }
                } else if (i == 3) {
                    this.c.w.a(str);
                    boolean zA3 = gq.a(this.b.x, str);
                    z = !zA3;
                    if (!zA3) {
                        this.b.x = str;
                    }
                } else if (i == 4) {
                    this.c.x.a(str);
                    boolean zA4 = gq.a(this.b.y, str);
                    z = !zA4;
                    if (!zA4) {
                        this.b.y = str;
                    }
                } else if (i != 5) {
                    z2 = false;
                } else {
                    this.c.y.a(str);
                    boolean zA5 = gq.a(this.b.z, str);
                    z = !zA5;
                    if (!zA5) {
                        this.b.z = str;
                    }
                }
                z2 = z;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z2;
    }

    public final boolean a(Integer num) {
        boolean z;
        synchronized (this) {
            this.c.s.a(num);
            boolean zA = gq.a(this.b.t, num);
            z = !zA;
            if (!zA) {
                this.b.t = num;
            }
        }
        return z;
    }

    public final boolean a(String str) {
        boolean zA;
        synchronized (this) {
            this.c.q.a(str);
            zA = true;
            if (str != null) {
                zA = true ^ gq.a(this.f.e, str);
                this.f.e = str;
            } else {
                if (this.f.e == null) {
                    zA = false;
                }
                this.f.e = null;
            }
        }
        return zA;
    }

    public final boolean a(String str, long j, boolean z) {
        synchronized (this) {
            int size = this.b.g.size();
            for (int i = 0; i < size; i++) {
                fg fgVar = this.b.g.get(i);
                if (fgVar.f.equals(str)) {
                    if (!z) {
                        return false;
                    }
                    fg.a aVar = new fg.a();
                    aVar.c = fgVar.f;
                    aVar.d = fgVar.g;
                    aVar.e = fgVar.h;
                    aVar.a(fgVar.a());
                    aVar.d = Long.valueOf(j);
                    this.b.g.set(i, aVar.b());
                    return true;
                }
            }
            this.b.g.add(new fg(str, Long.valueOf(j)));
            g();
            return true;
        }
    }

    public final boolean a(boolean z) {
        boolean z2;
        synchronized (this) {
            this.c.C.a(z);
            z2 = z != ((Boolean) gq.b(this.b.B, fj.r)).booleanValue();
            this.b.B = Boolean.valueOf(z);
        }
        return z2;
    }

    public final fd b() {
        fd fdVar;
        synchronized (this) {
            this.e.l = Locale.getDefault().toString();
            this.e.m = TimeZone.getDefault().getID();
            long jCurrentTimeMillis = System.currentTimeMillis() - 259200000;
            Iterator<fg> it = this.b.g.iterator();
            boolean z = false;
            while (it.hasNext()) {
                if (it.next().g.longValue() <= jCurrentTimeMillis) {
                    it.remove();
                    z = true;
                }
            }
            if (z) {
                g();
            }
            fdVar = new fd(this.e.b(), this.f.b(), this.b.b());
        }
        return fdVar;
    }

    public final boolean b(Integer num) {
        boolean z;
        synchronized (this) {
            this.c.t.a(num);
            boolean zA = gq.a(this.b.u, num);
            z = !zA;
            if (!zA) {
                this.b.u = num;
            }
        }
        return z;
    }

    public final boolean b(String str) {
        boolean z;
        synchronized (this) {
            this.c.r.a(str);
            boolean zA = gq.a(this.b.s, str);
            z = !zA;
            if (!zA) {
                this.b.s = str;
            }
        }
        return z;
    }

    final String c() {
        String strA;
        synchronized (this) {
            strA = this.c.d.a();
        }
        return strA;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x00da  */
    /* JADX WARN: Code duplicated, block: B:24:0x00dc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:25:0x00de A[Catch: all -> 0x0147, TryCatch #0 {, blocks: (B:4:0x0003, B:7:0x002f, B:28:0x0135, B:29:0x0143, B:8:0x004a, B:11:0x0083, B:21:0x00d4, B:27:0x00e4, B:25:0x00de, B:26:0x00e1, B:12:0x008e, B:15:0x00c2, B:17:0x00ca, B:13:0x00a8, B:31:0x0145), top: B:36:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x00e1 A[Catch: all -> 0x0147, TryCatch #0 {, blocks: (B:4:0x0003, B:7:0x002f, B:28:0x0135, B:29:0x0143, B:8:0x004a, B:11:0x0083, B:21:0x00d4, B:27:0x00e4, B:25:0x00de, B:26:0x00e1, B:12:0x008e, B:15:0x00c2, B:17:0x00ca, B:13:0x00a8, B:31:0x0145), top: B:36:0x0003 }] */
    @Nullable
    public final fe d() {
        Calendar calendar;
        long timeInMillis;
        int i;
        int i2;
        fe feVar;
        synchronized (this) {
            Calendar calendar2 = Calendar.getInstance();
            int i3 = 1;
            int i4 = (calendar2.get(1) * UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS) + (calendar2.get(2) * 100) + 100 + calendar2.get(5);
            int iIntValue = this.c.e.a().intValue();
            if (iIntValue == i4) {
                return null;
            }
            if (iIntValue == 0) {
                this.b.e = 1;
                this.b.f = 1;
                feVar = new fe("fq7_0_1", "fq30_0_1", null);
            } else {
                int iIntValue2 = this.c.f.a().intValue();
                int iA = a(7, iIntValue2);
                int iA2 = a(30, iIntValue2);
                Calendar calendar3 = Calendar.getInstance();
                calendar3.set(iIntValue / UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS, ((iIntValue / 100) % 100) - 1, iIntValue % 100);
                int iSignum = Integer.signum(calendar2.get(1) - calendar3.get(1));
                if (iSignum != -1) {
                    if (iSignum != 1) {
                        i = calendar2.get(6) - calendar3.get(6);
                    } else {
                        calendar = (Calendar) calendar2.clone();
                        calendar.set(calendar3.get(1), calendar3.get(2), calendar3.get(5));
                        timeInMillis = calendar2.getTimeInMillis();
                    }
                    if (Math.abs(i) >= 30) {
                        i2 = 0;
                    } else if (i >= 0) {
                        i2 = iIntValue2 << i;
                    } else {
                        i2 = iIntValue2 >> (-i);
                    }
                    i3 = 1 | i2;
                    int iA3 = a(7, i3);
                    int iA4 = a(30, i3);
                    this.b.e = Integer.valueOf(iA3);
                    this.b.f = Integer.valueOf(iA4);
                    feVar = new fe("fq7_" + iA + "_" + iA3, "fq30_" + iA2 + "_" + iA4, null);
                } else {
                    calendar = (Calendar) calendar3.clone();
                    calendar.set(calendar2.get(1), calendar2.get(2), calendar2.get(5));
                    timeInMillis = calendar3.getTimeInMillis();
                }
                i = 0;
                while (calendar.getTimeInMillis() < timeInMillis) {
                    calendar.add(5, 1);
                    i++;
                }
                if (iSignum <= 0) {
                    i = -i;
                }
                if (Math.abs(i) >= 30) {
                    i2 = 0;
                } else if (i >= 0) {
                    i2 = iIntValue2 << i;
                } else {
                    i2 = iIntValue2 >> (-i);
                }
                i3 = 1 | i2;
                int iA5 = a(7, i3);
                int iA6 = a(30, i3);
                this.b.e = Integer.valueOf(iA5);
                this.b.f = Integer.valueOf(iA6);
                feVar = new fe("fq7_" + iA + "_" + iA5, "fq30_" + iA2 + "_" + iA6, null);
            }
            this.c.e.a(i4);
            this.c.f.a(i3);
            return feVar;
        }
    }

    public final Set<String> e() {
        HashSet hashSet;
        synchronized (this) {
            hashSet = new HashSet(this.b.A);
        }
        return hashSet;
    }

    public final boolean f() {
        return ((Boolean) gq.b(this.b.B, fj.r)).booleanValue();
    }
}
