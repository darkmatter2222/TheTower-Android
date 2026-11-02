package com.applovin.impl;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinErrorCodes;
import com.unity3d.services.core.device.MimeTypes;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.xml.sax.SAXException;

/* JADX INFO: loaded from: classes2.dex */
public class c4 {
    private final com.applovin.impl.sdk.l a;
    private final com.applovin.impl.sdk.p b;
    private final com.applovin.impl.sdk.ad.a c;
    private final String d;
    private String e;
    private byte[] f;
    private List g;
    private List h;
    private List i;
    private List j;
    private final Object k = new Object();
    private volatile boolean l;

    public interface a {
        void a(int i);
    }

    private static class b {
        final String a;
        final String b;
        final String c;
        final boolean d;

        b(String str, String str2, String str3, boolean z) {
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = z;
        }
    }

    private static class c {
        final c4 a;
        final b b;
        final a c;
        volatile boolean d = false;

        c(c4 c4Var, b bVar, a aVar) {
            this.a = c4Var;
            this.b = bVar;
            this.c = aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            this.d = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            if (this.d || this.a.l) {
                return;
            }
            com.applovin.impl.sdk.l lVar = this.a.a;
            com.applovin.impl.sdk.ad.a aVar = this.a.c;
            com.applovin.impl.sdk.n nVarI = lVar.I();
            File fileA = nVarI.a(u7.a(Uri.parse(this.b.a), aVar.getCachePrefix(), lVar), com.applovin.impl.sdk.l.p());
            if (fileA == null) {
                this.a.a("create_cached_file_for_segment");
                if (this.b.d) {
                    this.a.l = true;
                    this.c.a(AppLovinErrorCodes.UNABLE_TO_PRECACHE_RESOURCES);
                    return;
                }
                return;
            }
            Map mapA = j2.a((AppLovinAdImpl) aVar);
            int iA = nVarI.a(this.b.a, aVar);
            b bVar = this.b;
            if (nVarI.a(fileA, bVar.a, bVar.b, aVar.V(), iA, this.b.c, mapA)) {
                return;
            }
            com.applovin.impl.sdk.p unused = this.a.b;
            if (com.applovin.impl.sdk.p.a()) {
                this.a.b.b("MpdManager", "Failed to cache " + (this.b.d ? "required" : "optional") + " segment: " + this.b.a + " range: " + this.b.b);
            }
            if (this.b.d) {
                this.a.l = true;
                this.c.a(AppLovinErrorCodes.UNABLE_TO_PRECACHE_RESOURCES);
            }
        }
    }

    public c4(com.applovin.impl.sdk.ad.a aVar, String str, com.applovin.impl.sdk.l lVar) {
        this.c = aVar;
        this.d = str;
        this.a = lVar;
        this.b = lVar.Q();
    }

    private String a(String str, a aVar) {
        com.applovin.impl.sdk.n nVarI = this.a.I();
        byte[] bArrA = nVarI.a(this.d, this.c.V(), str, j2.a((AppLovinAdImpl) this.c));
        if (bArrA == null) {
            if (com.applovin.impl.sdk.p.a()) {
                this.b.b("MpdManager", "Failed to download MPD: " + this.d);
            }
            aVar.a(AppLovinErrorCodes.UNABLE_TO_PRECACHE_RESOURCES);
            return null;
        }
        if (com.applovin.impl.sdk.p.a()) {
            this.b.a("MpdManager", "Successfully downloaded MPD");
        }
        Charset charset = StandardCharsets.UTF_8;
        String str2 = new String(bArrA, charset);
        if (TextUtils.isEmpty(str2)) {
            if (com.applovin.impl.sdk.p.a()) {
                this.b.b("MpdManager", "Failed to read MPD data: " + this.d);
            }
            aVar.a(AppLovinErrorCodes.UNABLE_TO_PRECACHE_RESOURCES);
            return null;
        }
        this.f = str2.replace("https://", "sdk://").getBytes(charset);
        String strA = u7.a(Uri.parse(this.d), this.c.getCachePrefix(), this.a);
        String str3 = "sdk://" + strA;
        com.applovin.impl.sdk.ad.a aVar2 = this.c;
        aVar2.d(StringUtils.replace(aVar2.h1(), this.d, str3));
        this.e = str3;
        if (((Boolean) this.a.a(c5.e1)).booleanValue()) {
            File fileA = nVarI.a(strA, com.applovin.impl.sdk.l.p());
            if (fileA != null) {
                nVarI.a((InputStream) new ByteArrayInputStream(bArrA), fileA, true);
                return str2;
            }
            if (com.applovin.impl.sdk.p.a()) {
                this.b.b("MpdManager", "Failed to create cached file for MPD: " + this.d);
            }
        }
        return str2;
    }

    private List a(u8 u8Var) {
        ArrayList arrayList = new ArrayList();
        u8 u8VarC = u8Var.c("Initialization");
        if (u8VarC != null) {
            String str = (String) u8VarC.a().get("range");
            if (StringUtils.isValidString(str)) {
                arrayList.add(str);
            }
        }
        Iterator it = u8Var.a("SegmentURL").iterator();
        while (it.hasNext()) {
            String str2 = (String) ((u8) it.next()).a().get("mediaRange");
            if (StringUtils.isValidString(str2)) {
                arrayList.add(str2);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        HashMap<String, String> mapHashMap = CollectionUtils.hashMap("url", this.d);
        mapHashMap.putAll(j2.a((AppLovinAdImpl) this.c));
        this.a.E().a(h2.b1, str, mapHashMap);
    }

    private void a(String str, List list, boolean z, boolean z2, String str2, a aVar) {
        if (TextUtils.isEmpty(str) || CollectionUtils.isEmpty(list)) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new c(this, new b(str, (String) it.next(), str2, z2), aVar));
        }
        if (z) {
            if (z2) {
                this.g = arrayList;
                return;
            }
            synchronized (this.k) {
                this.i = arrayList;
            }
            return;
        }
        if (z2) {
            this.h = arrayList;
            return;
        }
        synchronized (this.k) {
            this.j = arrayList;
        }
    }

    private void a(List list) {
        if (CollectionUtils.isEmpty(list)) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((c) it.next()).a();
        }
        list.clear();
    }

    private void a(List list, List list2) {
        int size = list != null ? list.size() : 0;
        int size2 = list2 != null ? list2.size() : 0;
        int iMax = Math.max(size, size2);
        for (int i = 0; i < iMax && !this.l; i++) {
            if (i < size) {
                ((c) list.get(i)).b();
            }
            if (i < size2) {
                ((c) list2.get(i)).b();
            }
        }
    }

    private void b(String str, a aVar) {
        HashMap<String, String> mapHashMap = CollectionUtils.hashMap("url", this.d);
        CollectionUtils.putStringIfValid("details", str, mapHashMap);
        mapHashMap.putAll(j2.a((AppLovinAdImpl) this.c));
        this.a.g().d(h2.W, mapHashMap);
        aVar.a(AppLovinErrorCodes.UNABLE_TO_PRECACHE_RESOURCES);
    }

    public void a() {
        ArrayList arrayList;
        ArrayList arrayList2;
        synchronized (this.k) {
            arrayList = !CollectionUtils.isEmpty(this.i) ? new ArrayList(this.i) : null;
            arrayList2 = CollectionUtils.isEmpty(this.j) ? null : new ArrayList(this.j);
        }
        if (com.applovin.impl.sdk.p.a()) {
            this.b.a("MpdManager", "Caching optional MPD segments...");
        }
        a(arrayList, arrayList2);
        if (com.applovin.impl.sdk.p.a()) {
            this.b.a("MpdManager", "Finished caching optional MPD segments");
        }
    }

    public byte[] a(String str, String str2) {
        Context contextP = com.applovin.impl.sdk.l.p();
        com.applovin.impl.sdk.n nVarI = this.a.I();
        String strA = u7.a(Uri.parse(str), this.c.getCachePrefix(), this.a);
        File fileA = nVarI.a(strA, contextP);
        if (fileA == null) {
            if (com.applovin.impl.sdk.p.a()) {
                this.b.b("MpdManager", "Failed to get cached file for segment: " + str);
            }
            return null;
        }
        if (com.applovin.impl.sdk.p.a()) {
            this.b.a("MpdManager", "Serving segment: " + str + " range: " + str2);
        }
        if (nVarI.a(fileA, str, str2, this.c.V(), nVarI.a(str, this.c), (String) null, j2.a((AppLovinAdImpl) this.c))) {
            return nVarI.d(nVarI.a(strA, str2), contextP);
        }
        return null;
    }

    public void b() {
        if (com.applovin.impl.sdk.p.a()) {
            this.b.a("MpdManager", "Caching required MPD segments...");
        }
        a(this.g, this.h);
        if (com.applovin.impl.sdk.p.a()) {
            this.b.a("MpdManager", "Finished caching required MPD segments");
        }
    }

    public void c() {
        if (com.applovin.impl.sdk.p.a()) {
            this.b.a("MpdManager", "Cancelling MPD segment caching...");
        }
        this.l = true;
        synchronized (this.k) {
            a(this.i);
            a(this.j);
        }
    }

    public void c(String str, a aVar) {
        if (com.applovin.impl.sdk.p.a()) {
            this.b.a("MpdManager", "Parsing MPD manifest: " + this.d);
        }
        String strA = a(str, aVar);
        if (strA == null) {
            return;
        }
        try {
            u8 u8VarB = v8.a(strA, this.a).b("Period");
            if (u8VarB == null) {
                b("missing_period", aVar);
                return;
            }
            List<u8> listA = u8VarB.a("AdaptationSet");
            if (CollectionUtils.isEmpty(listA)) {
                b("missing_adaptation_set", aVar);
                return;
            }
            int iM1 = this.c.m1();
            for (u8 u8Var : listA) {
                u8 u8VarB2 = u8Var.b("Representation");
                if (u8VarB2 == null) {
                    b("missing_representation", aVar);
                    return;
                }
                u8 u8VarC = u8VarB2.c("SegmentList");
                if (u8VarC == null) {
                    b("missing_segment_list", aVar);
                    return;
                }
                List listA2 = a(u8VarC);
                if (CollectionUtils.isEmpty(listA2)) {
                    b("empty_segment_list", aVar);
                    return;
                }
                u8 u8VarC2 = u8VarB2.c("BaseURL");
                String strD = u8VarC2 != null ? u8VarC2.d() : null;
                if (TextUtils.isEmpty(strD)) {
                    b("missing_base_url", aVar);
                    return;
                }
                int size = ((listA2.size() * iM1) + 99) / 100;
                String str2 = (String) u8Var.a().get("contentType");
                String str3 = (String) u8VarB2.a().get("mimeType");
                String str4 = MimeTypes.BASE_TYPE_VIDEO;
                boolean z = MimeTypes.BASE_TYPE_VIDEO.equals(str2) || (str3 != null && str3.startsWith(MimeTypes.BASE_TYPE_VIDEO));
                if (com.applovin.impl.sdk.p.a()) {
                    com.applovin.impl.sdk.p pVar = this.b;
                    StringBuilder sbAppend = new StringBuilder("Creating ").append(listA2.size()).append(" ");
                    if (!z) {
                        str4 = MimeTypes.BASE_TYPE_AUDIO;
                    }
                    pVar.a("MpdManager", sbAppend.append(str4).append(" segment download operations (").append(size).append(" required, ").append(listA2.size() - size).append(" optional), baseUrl = ").append(strD).toString());
                }
                String str5 = strD;
                boolean z2 = z;
                a(str5, listA2.subList(0, size), z2, true, str, aVar);
                a(str5, listA2.subList(size, listA2.size()), z2, false, str, aVar);
            }
        } catch (SAXException e) {
            this.a.E().a("MpdManager", "parseManifest", e);
            aVar.a(AppLovinErrorCodes.UNABLE_TO_PRECACHE_RESOURCES);
        }
    }

    public byte[] d() {
        return this.f;
    }

    public String e() {
        return this.e;
    }

    public boolean f() throws Throwable {
        String strA = u7.a(Uri.parse(this.d), this.c.getCachePrefix(), this.a);
        this.e = "sdk://" + strA;
        com.applovin.impl.sdk.n nVarI = this.a.I();
        File fileA = nVarI.a(strA, com.applovin.impl.sdk.l.p());
        if (fileA == null) {
            return false;
        }
        String strF = nVarI.f(fileA);
        if (TextUtils.isEmpty(strF)) {
            return false;
        }
        this.f = strF.replace("https://", "sdk://").getBytes(StandardCharsets.UTF_8);
        return true;
    }
}
