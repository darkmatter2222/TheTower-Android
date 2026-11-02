package com.applovin.impl;

import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinSdkUtils;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
public abstract class q5 extends n5 implements z3.a, AppLovinBroadcastManager.Receiver {
    protected final com.applovin.impl.sdk.ad.b g;
    private AppLovinAdLoadListener h;
    protected final String i;
    private final com.applovin.impl.sdk.n j;
    private final Collection k;
    private volatile boolean l;
    private final Object m;
    protected ExecutorService n;
    protected ExecutorService o;
    protected List p;
    private d0 q;

    class a implements e0.a {
        final /* synthetic */ e0.a a;

        a(e0.a aVar) {
            this.a = aVar;
        }

        @Override // com.applovin.impl.e0.a
        public void a(Uri uri) {
            if (uri != null) {
                com.applovin.impl.sdk.p pVar = q5.this.c;
                if (com.applovin.impl.sdk.p.a()) {
                    q5 q5Var = q5.this;
                    q5Var.c.a(q5Var.b, "Finish caching video for ad #" + q5.this.g.getAdIdNumber() + ". Updating ad with cachedVideoURL = " + uri);
                }
                this.a.a(uri);
                return;
            }
            com.applovin.impl.sdk.p pVar2 = q5.this.c;
            if (com.applovin.impl.sdk.p.a()) {
                q5 q5Var2 = q5.this;
                q5Var2.c.b(q5Var2.b, "Failed to cache video");
            }
            q5.this.a(AppLovinErrorCodes.UNABLE_TO_PRECACHE_VIDEO_RESOURCES);
            Bundle bundle = new Bundle();
            bundle.putLong("ad_id", q5.this.g.getAdIdNumber());
            q5.this.a.u().a(bundle, "video_caching_failed");
        }
    }

    class b implements d0.d {
        final /* synthetic */ c a;

        b(c cVar) {
            this.a = cVar;
        }

        @Override // com.applovin.impl.d0.d
        public void a(String str, boolean z) {
            if (z) {
                q5.this.a(AppLovinErrorCodes.UNABLE_TO_PRECACHE_HTML_RESOURCES);
                return;
            }
            c cVar = this.a;
            if (cVar != null) {
                cVar.a(str);
            }
        }
    }

    public interface c {
        void a(String str);
    }

    q5(String str, com.applovin.impl.sdk.ad.b bVar, com.applovin.impl.sdk.l lVar, AppLovinAdLoadListener appLovinAdLoadListener) {
        super(str, lVar);
        this.i = UUID.randomUUID().toString();
        this.m = new Object();
        if (bVar == null) {
            throw new IllegalArgumentException("No ad specified.");
        }
        this.g = bVar;
        this.h = appLovinAdLoadListener;
        this.j = lVar.I();
        this.k = g();
        if (((Boolean) lVar.a(c5.L0)).booleanValue()) {
            if (lVar.s0().e()) {
                this.n = lVar.s0().a();
                this.o = lVar.s0().d();
            } else {
                String mediationServeId = StringUtils.isValidString(bVar.getMediationServeId()) ? bVar.getMediationServeId() : UUID.randomUUID().toString();
                this.n = lVar.s0().a("com.applovin.sdk.caching." + mediationServeId, ((Integer) lVar.a(c5.N0)).intValue());
                this.o = lVar.s0().a("com.applovin.sdk.caching.html." + mediationServeId, ((Integer) lVar.a(c5.O0)).intValue());
            }
        }
    }

    private Uri a(String str, String str2) {
        File fileA = this.j.a(u7.a(Uri.parse(str2), this.g.getCachePrefix(), this.a), com.applovin.impl.sdk.l.p());
        if (fileA == null) {
            return null;
        }
        String str3 = str + str2;
        if (this.j.a(fileA, str3, (String) null, Arrays.asList(str), this.a.I().a(str3, this.g), this.i, j2.a((AppLovinAdImpl) this.g))) {
            return Uri.parse("file://" + fileA.getAbsolutePath());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(AppLovinAdLoadListener appLovinAdLoadListener) {
        appLovinAdLoadListener.adReceived(this.g);
    }

    private String b(String str, List list, com.applovin.impl.sdk.ad.b bVar) {
        if (!TextUtils.isEmpty(str)) {
            if (((Boolean) this.a.a(c5.H0)).booleanValue()) {
                StringBuilder sb = new StringBuilder(str);
                List listS = bVar.S();
                List listJ = bVar.J();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    String str2 = (String) it.next();
                    int iIndexOf = 0;
                    int i = 0;
                    while (iIndexOf < sb.length()) {
                        if (!i()) {
                            iIndexOf = sb.indexOf(str2, i);
                            if (iIndexOf == -1) {
                                break;
                            }
                            int length = sb.length();
                            int i2 = iIndexOf;
                            while (!this.k.contains(Character.valueOf(sb.charAt(i2))) && i2 < length) {
                                i2++;
                            }
                            if (i2 > iIndexOf && i2 != length) {
                                String strSubstring = sb.substring(str2.length() + iIndexOf, i2);
                                String str3 = str2 + strSubstring;
                                if (StringUtils.isValidString(strSubstring) && !listJ.contains(str3)) {
                                    Uri uriA = a(str2, strSubstring);
                                    if (uriA != null) {
                                        sb.replace(iIndexOf, i2, uriA.toString());
                                        bVar.a(uriA.toString(), str3);
                                    } else {
                                        if (listS.contains(str3)) {
                                            a(AppLovinErrorCodes.UNABLE_TO_PRECACHE_HTML_RESOURCES);
                                            this.l = true;
                                        }
                                        if (com.applovin.impl.sdk.p.a()) {
                                            this.c.b(this.b, "Failed to cache HTML Resource: " + str3);
                                        }
                                        a(str3, "cacheHtmlResource", j2.a((AppLovinAdImpl) bVar));
                                    }
                                } else if (com.applovin.impl.sdk.p.a()) {
                                    this.c.a(this.b, "Skip caching of optional or non-resource: " + strSubstring);
                                }
                                i = i2;
                            } else if (com.applovin.impl.sdk.p.a()) {
                                this.c.b(this.b, "Unable to cache resource; ad HTML is invalid.");
                            }
                        }
                    }
                }
                return sb.toString();
            }
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Resource caching is disabled, skipping cache...");
                return str;
            }
        }
        return str;
    }

    private String c(String str, List list, com.applovin.impl.sdk.ad.b bVar) {
        if (!TextUtils.isEmpty(str)) {
            if (((Boolean) this.a.a(c5.H0)).booleanValue()) {
                StringBuilder sb = new StringBuilder(str);
                List listS = bVar.S();
                List listJ = bVar.J();
                ArrayList arrayList = new ArrayList();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    String str2 = (String) it.next();
                    int iIndexOf = 0;
                    int i = 0;
                    while (iIndexOf < sb.length()) {
                        if (!i()) {
                            iIndexOf = sb.indexOf(str2, i);
                            if (iIndexOf == -1) {
                                break;
                            }
                            int length = sb.length();
                            int i2 = iIndexOf;
                            while (!this.k.contains(Character.valueOf(sb.charAt(i2))) && i2 < length) {
                                i2++;
                            }
                            if (i2 > iIndexOf && i2 != length) {
                                String strSubstring = sb.substring(str2.length() + iIndexOf, i2);
                                String str3 = str2 + strSubstring;
                                if (!StringUtils.isValidString(strSubstring) || listJ.contains(str3)) {
                                    if (com.applovin.impl.sdk.p.a()) {
                                        this.c.a(this.b, "Skip caching of optional or non-resource: " + strSubstring);
                                    }
                                } else if (listS.contains(str3)) {
                                    Uri uriA = a(str2, strSubstring);
                                    if (uriA != null) {
                                        sb.replace(iIndexOf, i2, uriA.toString());
                                        bVar.a(uriA.toString(), str3);
                                    } else {
                                        a(AppLovinErrorCodes.UNABLE_TO_PRECACHE_HTML_RESOURCES);
                                        this.l = true;
                                        if (com.applovin.impl.sdk.p.a()) {
                                            this.c.b(this.b, "Failed to cache HTML Resource: " + str3);
                                        }
                                        a(str3, "cacheHtmlResource", j2.a((AppLovinAdImpl) bVar));
                                    }
                                } else {
                                    if (com.applovin.impl.sdk.p.a()) {
                                        this.c.a(this.b, "Skip caching of uncategorized resource: " + strSubstring);
                                    }
                                    arrayList.add(str3);
                                }
                                i = i2;
                            } else if (com.applovin.impl.sdk.p.a()) {
                                this.c.b(this.b, "Unable to cache resource; ad HTML is invalid.");
                            }
                        }
                    }
                }
                bVar.a(arrayList);
                return sb.toString();
            }
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Resource caching is disabled, skipping cache...");
                return str;
            }
        }
        return str;
    }

    private Collection g() {
        HashSet hashSet = new HashSet();
        for (char c2 : ((String) this.a.a(c5.G0)).toCharArray()) {
            hashSet.add(Character.valueOf(c2));
        }
        hashSet.add('\"');
        return hashSet;
    }

    Uri a(String str, List list, boolean z) {
        try {
            int iA = this.a.I().a(str, this.g);
            Map mapA = j2.a((AppLovinAdImpl) this.g);
            String strA = this.j.a(a(), str, this.g.getCachePrefix(), list, z, iA, this.i, mapA);
            if (!StringUtils.isValidString(strA)) {
                if (com.applovin.impl.sdk.p.a()) {
                    this.c.b(this.b, "Failed to cache image: " + str);
                }
                a(str, "cacheImageResource", mapA);
                return null;
            }
            File fileA = this.j.a(strA, a());
            if (fileA == null) {
                if (com.applovin.impl.sdk.p.a()) {
                    this.c.b(this.b, "Unable to retrieve File from cached image filename = " + strA);
                }
                a(strA, "retrieveImageFile", mapA);
                return null;
            }
            Uri uriFromFile = Uri.fromFile(fileA);
            if (uriFromFile != null) {
                return uriFromFile;
            }
            if (com.applovin.impl.sdk.p.a()) {
                this.c.b(this.b, "Unable to extract Uri from image file");
            }
            a(strA, "extractUriFromImageFile", mapA);
            return null;
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Failed to cache image at url = " + str, th);
            }
            Map mapA2 = j2.a((AppLovinAdImpl) this.g);
            CollectionUtils.putStringIfValid("url", str, mapA2);
            this.a.E().a(this.b, "cacheImageResource", th, mapA2);
            return null;
        }
    }

    protected d0 a(String str, List list, c cVar) {
        d0 d0Var = new d0(str, this.g, list, this.o, this.i, this.a, new b(cVar));
        this.q = d0Var;
        return d0Var;
    }

    protected e0 a(String str, e0.a aVar) {
        return a(str, this.g.V(), true, aVar);
    }

    protected e0 a(String str, List list, boolean z, e0.a aVar) {
        if (!TextUtils.isEmpty(str)) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Caching video " + str + "...");
            }
            return new e0(str, this.g, list, z, this.i, this.a, new a(aVar));
        }
        if (!com.applovin.impl.sdk.p.a()) {
            return null;
        }
        this.c.a(this.b, "No video to cache, skipping...");
        return null;
    }

    String a(String str, List list, com.applovin.impl.sdk.ad.b bVar) {
        return ((Boolean) this.a.a(c5.b1)).booleanValue() ? c(str, list, bVar) : b(str, list, bVar);
    }

    protected List a(List list) {
        this.p = list;
        return this.a.s0().a(list, this.n);
    }

    void a(int i) {
        synchronized (this.m) {
            if (this.h == null) {
                return;
            }
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Calling back ad load failed with error code: " + i);
            }
            AppLovinAdLoadListener appLovinAdLoadListener = this.h;
            this.h = null;
            appLovinAdLoadListener.failedToReceiveAd(i);
            f();
        }
    }

    @Override // com.applovin.impl.z3.a
    public void a(c3 c3Var) {
        if (c3Var.T().equalsIgnoreCase(this.g.getMediationServeId())) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.b(this.b, "Updating flag for timeout...");
            }
            f();
        }
        this.a.b0().b(this);
    }

    protected void a(String str, String str2, Map map) {
        HashMap map2 = new HashMap(map);
        CollectionUtils.putStringIfValid("url", str, map2);
        this.a.E().a(h2.b1, str2, map2);
    }

    Uri b(String str) {
        return b(str, this.g.V(), true);
    }

    Uri b(String str, List list, boolean z) {
        if (!StringUtils.isValidString(str)) {
            return null;
        }
        if (com.applovin.impl.sdk.p.a()) {
            this.c.a(this.b, "Caching video " + str + "...");
        }
        int iA = this.a.I().a(str, this.g);
        Map mapA = j2.a((AppLovinAdImpl) this.g);
        String strA = this.j.a(a(), str, this.g.getCachePrefix(), list, z, iA, this.i, mapA);
        if (!StringUtils.isValidString(strA)) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.b(this.b, "Failed to cache video: " + str);
            }
            a(str, "cacheVideo", mapA);
            a(AppLovinErrorCodes.UNABLE_TO_PRECACHE_VIDEO_RESOURCES);
            return null;
        }
        File fileA = this.j.a(strA, a());
        if (fileA == null) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.b(this.b, "Unable to retrieve File from cached video filename = " + strA);
            }
            a(strA, "retrieveVideoFile", mapA);
            return null;
        }
        Uri uriFromFile = Uri.fromFile(fileA);
        if (uriFromFile != null) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Finish caching video for ad #" + this.g.getAdIdNumber() + ". Updating ad with cachedVideoFilename = " + strA);
            }
            return uriFromFile;
        }
        if (com.applovin.impl.sdk.p.a()) {
            this.c.b(this.b, "Unable to create URI from cached video file = " + fileA);
        }
        a(strA, "extractUriFromVideoFile", mapA);
        return null;
    }

    protected String c(String str, List list, boolean z) {
        try {
            InputStream inputStreamA = this.j.a(str, (String) null, list, z, j2.a((AppLovinAdImpl) this.g));
            if (inputStreamA == null) {
                if (inputStreamA != null) {
                    inputStreamA.close();
                }
                return null;
            }
            try {
                String strA = this.j.a(inputStreamA);
                inputStreamA.close();
                return strA;
            } catch (Throwable th) {
                try {
                    inputStreamA.close();
                    throw th;
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                    throw th;
                }
            }
        } catch (Throwable th3) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Unknown failure to read input stream.", th3);
            }
            this.c.a(this.b, th3);
            this.a.E().a(this.b, "readInputStreamAsString", th3);
            return null;
        }
    }

    void e() {
        synchronized (this.m) {
            if (this.h == null) {
                return;
            }
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Rendered new ad:" + this.g);
            }
            final AppLovinAdLoadListener appLovinAdLoadListener = this.h;
            this.h = null;
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.q5$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(appLovinAdLoadListener);
                }
            });
        }
    }

    protected void f() {
        c4 c4VarI1;
        this.l = true;
        com.applovin.impl.sdk.ad.b bVar = this.g;
        if ((bVar instanceof com.applovin.impl.sdk.ad.a) && (c4VarI1 = ((com.applovin.impl.sdk.ad.a) bVar).i1()) != null) {
            c4VarI1.c();
        }
        List list = this.p;
        if (list != null && !list.isEmpty()) {
            Iterator it = this.p.iterator();
            while (it.hasNext()) {
                ((c0) it.next()).a(true);
            }
        }
        if (this.a.s0().e()) {
            d0 d0Var = this.q;
            if (d0Var != null) {
                d0Var.c();
                return;
            }
            return;
        }
        ExecutorService executorService = this.n;
        if (executorService != null) {
            executorService.shutdown();
            this.n = null;
        }
        ExecutorService executorService2 = this.o;
        if (executorService2 != null) {
            executorService2.shutdown();
            this.o = null;
        }
    }

    protected void h() {
        this.a.b0().b(this);
        AppLovinBroadcastManager.unregisterReceiver(this);
        if (!this.a.s0().e()) {
            ExecutorService executorService = this.n;
            if (executorService != null) {
                executorService.shutdown();
                this.n = null;
            }
            ExecutorService executorService2 = this.o;
            if (executorService2 != null) {
                executorService2.shutdown();
                this.o = null;
            }
        }
        MaxAdFormat maxAdFormatD = this.g.getAdZone().d();
        if (((Boolean) this.a.a(c5.e1)).booleanValue() && maxAdFormatD != null && maxAdFormatD.isFullscreenAd()) {
            this.a.i().b(this.g);
        }
        this.a.f0().a(this.i);
    }

    protected boolean i() {
        return this.l;
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, Map map) {
        if (map != null && map.get("ad") == this.g) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Updating flag for ad dismissal...");
            }
            f();
            AppLovinBroadcastManager.unregisterReceiver(this);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.g.b1()) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Subscribing to timeout events...");
            }
            this.a.b0().a(this);
        }
        com.applovin.impl.sdk.ad.b bVar = this.g;
        if (!(bVar instanceof com.applovin.impl.sdk.ad.a) || ((com.applovin.impl.sdk.ad.a) bVar).i1() == null) {
            return;
        }
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.sdk.ad_did_dismiss"));
    }
}
