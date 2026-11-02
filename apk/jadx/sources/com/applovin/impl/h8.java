package com.applovin.impl;

import android.net.Uri;
import android.webkit.URLUtil;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public abstract class h8 {
    private static final DateFormat a = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.US);
    private static final Random b = new Random(System.currentTimeMillis());

    public static Uri a(String str, long j, Uri uri, a8 a8Var, com.applovin.impl.sdk.l lVar) {
        if (!URLUtil.isValidUrl(str)) {
            lVar.Q();
            if (com.applovin.impl.sdk.p.a()) {
                lVar.Q().b("VastUtils", "Unable to replace macros in invalid URL string.");
            }
            return null;
        }
        try {
            String string = Integer.toString(a8Var.b());
            String strReplace = str.replace("[ERRORCODE]", string).replace("[REASON]", string);
            if (j >= 0) {
                strReplace = strReplace.replace("[CONTENTPLAYHEAD]", a(j));
            }
            if (uri != null) {
                strReplace = strReplace.replace("[ASSETURI]", uri.toString());
            }
            return Uri.parse(strReplace.replace("[CACHEBUSTING]", a()).replace("[TIMESTAMP]", b()));
        } catch (Throwable th) {
            lVar.Q();
            if (com.applovin.impl.sdk.p.a()) {
                lVar.Q().a("VastUtils", "Unable to replace macros in URL string " + str, th);
            }
            lVar.E().a("VastUtils", th);
            return null;
        }
    }

    private static String a() {
        return Integer.toString(b.nextInt(89999999) + 10000000);
    }

    private static String a(long j) {
        if (j <= 0) {
            return "00:00:00.000";
        }
        TimeUnit timeUnit = TimeUnit.SECONDS;
        long hours = timeUnit.toHours(j);
        long minutes = timeUnit.toMinutes(j);
        TimeUnit timeUnit2 = TimeUnit.MINUTES;
        return String.format(Locale.US, "%02d:%02d:%02d.000", Long.valueOf(hours), Long.valueOf(minutes % timeUnit2.toSeconds(1L)), Long.valueOf(j % timeUnit2.toSeconds(1L)));
    }

    public static String a(u8 u8Var, String str, String str2) {
        u8 u8VarC = u8Var.c(str);
        if (u8VarC != null) {
            String strD = u8VarC.d();
            if (StringUtils.isValidString(strD)) {
                return strD;
            }
        }
        return str2;
    }

    public static String a(z7 z7Var) {
        u8 u8VarB;
        if (z7Var == null) {
            throw new IllegalArgumentException("Unable to get resolution uri string for fetching the next wrapper or inline response in the chain");
        }
        List listA = z7Var.a();
        int size = z7Var.a().size();
        if (size <= 0 || (u8VarB = ((u8) listA.get(size - 1)).b("VASTAdTagURI")) == null) {
            return null;
        }
        return u8VarB.d();
    }

    private static HashSet a(HashSet hashSet, List list, z7 z7Var, com.applovin.impl.sdk.l lVar) {
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                f8 f8VarA = f8.a((u8) it.next(), z7Var, lVar);
                if (f8VarA != null) {
                    hashSet.add(f8VarA);
                }
            }
        }
        return hashSet;
    }

    private static Set a(z7 z7Var, com.applovin.impl.sdk.l lVar) {
        if (z7Var == null) {
            return null;
        }
        List<u8> listA = z7Var.a();
        HashSet hashSet = new HashSet(listA.size());
        for (u8 u8Var : listA) {
            u8 u8VarB = u8Var.b("Wrapper");
            if (u8VarB == null) {
                u8VarB = u8Var.b("InLine");
            }
            hashSet = a(hashSet, u8VarB != null ? u8VarB.a("Error") : u8Var.a("Error"), z7Var, lVar);
        }
        lVar.Q();
        if (com.applovin.impl.sdk.p.a()) {
            lVar.Q().a("VastUtils", "Retrieved " + hashSet.size() + " top level error trackers: " + hashSet);
        }
        return hashSet;
    }

    public static void a(u8 u8Var, Map map, z7 z7Var, com.applovin.impl.sdk.l lVar) {
        List<u8> listA;
        if (lVar == null) {
            throw new IllegalArgumentException("Unable to render event trackers. No sdk specified.");
        }
        if (u8Var == null) {
            lVar.Q();
            if (com.applovin.impl.sdk.p.a()) {
                lVar.Q().b("VastUtils", "Unable to render event trackers; null node provided");
                return;
            }
            return;
        }
        if (map == null) {
            lVar.Q();
            if (com.applovin.impl.sdk.p.a()) {
                lVar.Q().b("VastUtils", "Unable to render event trackers; null event trackers provided");
                return;
            }
            return;
        }
        u8 u8VarC = u8Var.c("TrackingEvents");
        if (u8VarC == null || (listA = u8VarC.a("Tracking")) == null) {
            return;
        }
        for (u8 u8Var2 : listA) {
            String str = (String) u8Var2.a().get("event");
            if (StringUtils.isValidString(str)) {
                f8 f8VarA = f8.a(u8Var2, z7Var, lVar);
                if (f8VarA != null) {
                    Set set = (Set) map.get(str);
                    if (set != null) {
                        set.add(f8VarA);
                    } else {
                        HashSet hashSet = new HashSet();
                        hashSet.add(f8VarA);
                        map.put(str, hashSet);
                    }
                }
            } else {
                lVar.Q();
                if (com.applovin.impl.sdk.p.a()) {
                    lVar.Q().b("VastUtils", "Could not find event for tracking node = " + u8Var2);
                }
            }
        }
    }

    public static void a(z7 z7Var, AppLovinAdLoadListener appLovinAdLoadListener, a8 a8Var, int i, com.applovin.impl.sdk.l lVar) {
        if (lVar == null) {
            throw new IllegalArgumentException("Unable to handle failure. No sdk specified.");
        }
        if (appLovinAdLoadListener != null) {
            appLovinAdLoadListener.failedToReceiveAd(i);
        }
        Set setA = a(z7Var, lVar);
        if (CollectionUtils.isEmpty(setA)) {
            return;
        }
        a(setA, a8Var, lVar);
    }

    public static void a(List list, Set set, z7 z7Var, com.applovin.impl.sdk.l lVar) {
        if (lVar == null) {
            throw new IllegalArgumentException("Unable to render trackers. No sdk specified.");
        }
        if (list == null) {
            lVar.Q();
            if (com.applovin.impl.sdk.p.a()) {
                lVar.Q().b("VastUtils", "Unable to render trackers; null nodes provided");
                return;
            }
            return;
        }
        if (set == null) {
            lVar.Q();
            if (com.applovin.impl.sdk.p.a()) {
                lVar.Q().b("VastUtils", "Unable to render trackers; null trackers provided");
                return;
            }
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            f8 f8VarA = f8.a((u8) it.next(), z7Var, lVar);
            if (f8VarA != null) {
                set.add(f8VarA);
            }
        }
    }

    public static void a(Set set, long j, Uri uri, a8 a8Var, com.applovin.impl.sdk.l lVar) {
        if (lVar == null) {
            throw new IllegalArgumentException("Unable to fire trackers. No sdk specified.");
        }
        if (set == null || set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            f8 f8Var = (f8) it.next();
            long j2 = j;
            Uri uri2 = uri;
            a8 a8Var2 = a8Var;
            com.applovin.impl.sdk.l lVar2 = lVar;
            Uri uriA = a(f8Var.c(), j2, uri2, a8Var2, lVar2);
            if (uriA != null) {
                lVar2.h0().a(com.applovin.impl.sdk.network.d.b().d(uriA.toString()).a(false).b(f8Var.d()).a(), false);
            }
            j = j2;
            uri = uri2;
            a8Var = a8Var2;
            lVar = lVar2;
        }
    }

    public static void a(Set set, a8 a8Var, com.applovin.impl.sdk.l lVar) {
        a(set, -1L, (Uri) null, a8Var, lVar);
    }

    public static void a(Set set, com.applovin.impl.sdk.l lVar) {
        a(set, -1L, (Uri) null, a8.UNSPECIFIED, lVar);
    }

    public static boolean a(u8 u8Var) {
        if (u8Var != null) {
            return u8Var.b("InLine") != null;
        }
        throw new IllegalArgumentException("Unable to check if a given XmlNode contains an inline response");
    }

    public static boolean a(v7 v7Var) {
        y7 y7VarG1;
        d8 d8VarE;
        if (v7Var == null || (y7VarG1 = v7Var.g1()) == null || (d8VarE = y7VarG1.e()) == null) {
            return false;
        }
        return d8VarE.c() != null || StringUtils.isValidString(d8VarE.b());
    }

    private static String b() {
        DateFormat dateFormat = a;
        dateFormat.setTimeZone(TimeZone.getDefault());
        return dateFormat.format(new Date());
    }

    public static boolean b(u8 u8Var) {
        if (u8Var != null) {
            return u8Var.b("Wrapper") != null;
        }
        throw new IllegalArgumentException("Unable to check if a given XmlNode contains a wrapper response");
    }

    public static boolean b(v7 v7Var) {
        i8 i8VarP1;
        List listG;
        return (v7Var == null || (i8VarP1 = v7Var.p1()) == null || (listG = i8VarP1.g()) == null || listG.isEmpty()) ? false : true;
    }

    public static a8 c(v7 v7Var) {
        if (b(v7Var) || a(v7Var)) {
            return null;
        }
        return a8.GENERAL_WRAPPER_ERROR;
    }
}
