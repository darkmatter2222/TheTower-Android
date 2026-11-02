package com.applovin.impl;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.core.util.Consumer;
import androidx.webkit.ProxyConfig;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinErrorCodes;
import com.google.common.net.HttpHeaders;
import com.ironsource.C3510b4;
import com.ironsource.adapters.facebook.FacebookConstants;
import java.net.MalformedURLException;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class r0 {
    private static final List f = Arrays.asList("5.0/i", "4.0/ad", "1.0/mediate");
    private final com.applovin.impl.sdk.l a;
    private final com.applovin.impl.sdk.p b;
    private final g4 c;
    private d d;
    private final Set e = Collections.synchronizedSet(new HashSet());

    public static class b {
        private long a;
        private long b;

        /* JADX INFO: Access modifiers changed from: private */
        public void a(long j) {
            this.a = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(long j) {
            this.b = j;
        }

        public long a() {
            return this.a;
        }

        public long b() {
            return this.b;
        }
    }

    private class c implements Consumer {
        private final String a;
        private final com.applovin.impl.sdk.network.a b;
        private final String c;
        private final Object d;
        private final boolean e;
        private final b f;
        private final e g;

        private c(String str, com.applovin.impl.sdk.network.a aVar, String str2, Object obj, boolean z, b bVar, e eVar) {
            this.a = str;
            this.b = aVar;
            this.c = str2;
            this.d = obj;
            this.e = z;
            this.f = bVar;
            this.g = eVar;
        }

        /* JADX WARN: Not initialized variable reg: 8, insn: 0x0183: MOVE (r5 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r8 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:60:0x0182 */
        @Override // androidx.core.util.Consumer
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(g4.d dVar) {
            MalformedURLException malformedURLException;
            int iC;
            int i;
            long jE = dVar.e();
            Object objA = null;
            try {
                try {
                    iC = dVar.c();
                    try {
                        if (iC > 0) {
                            try {
                                if (iC < 200 || iC >= 400) {
                                    this.g.a(this.a, iC, null, null);
                                    return;
                                }
                                try {
                                    b bVar = this.f;
                                    if (bVar != null) {
                                        bVar.a(jE);
                                    }
                                    r0.this.a(this.c, this.a, iC, jE);
                                    byte[] bArrD = dVar.d();
                                    if (u7.h(com.applovin.impl.sdk.l.p()) && (!this.e || z4.b(bArrD) != z4.a.V2)) {
                                        r0.this.a.u().a(bArrD != null ? new String(dVar.d(), Charset.forName("UTF-8")) : "", this.a, this.b.b() != null ? this.b.b().toString() : "");
                                    }
                                    if (bArrD == null) {
                                        this.g.a(this.a, this.d, iC);
                                        return;
                                    }
                                    String str = new String(dVar.d(), Charset.forName("UTF-8"));
                                    b bVar2 = this.f;
                                    if (bVar2 != null) {
                                        bVar2.b(bArrD.length);
                                        if (this.b.r()) {
                                            r0.this.d = new d(this.b.f(), bArrD.length, jE);
                                        }
                                    }
                                    if (this.e) {
                                        String strB = z4.b(bArrD, r0.this.a);
                                        if (strB == null) {
                                            HashMap<String, String> mapHashMap = CollectionUtils.hashMap("url", StringUtils.getHostAndPath(this.a));
                                            if (((Boolean) r0.this.a.a(c5.W5)).booleanValue()) {
                                                CollectionUtils.putStringIfValid("details", str, mapHashMap);
                                            }
                                            r0.this.a.E().d(h2.t1, mapHashMap);
                                        }
                                        str = strB;
                                    }
                                    try {
                                        this.g.a(this.a, r0.this.a(str, this.d), iC);
                                        return;
                                    } catch (Throwable th) {
                                        String str2 = "Unable to parse response from " + StringUtils.getHostAndPath(this.a) + " because of " + th.getClass().getName() + " : " + th.getMessage();
                                        com.applovin.impl.sdk.p unused = r0.this.b;
                                        if (com.applovin.impl.sdk.p.a()) {
                                            r0.this.b.a("ConnectionManager", str2, th);
                                        }
                                        r0.this.a.E().a("ConnectionManager", "failedToParseResponse", th, CollectionUtils.hashMap("url", StringUtils.getHostAndPath(this.a)));
                                        this.g.a(this.a, AppLovinErrorCodes.INVALID_RESPONSE, str2, null);
                                        return;
                                    }
                                } catch (MalformedURLException e) {
                                    e = e;
                                }
                            } catch (MalformedURLException e2) {
                                malformedURLException = e2;
                                iC = i;
                            }
                        } else {
                            try {
                                r0.this.a(this.c, this.a, iC, jE, (Throwable) null);
                                this.g.a(this.a, iC, null, null);
                                return;
                            } catch (MalformedURLException e3) {
                                e = e3;
                                iC = iC;
                            }
                        }
                    } catch (MalformedURLException e4) {
                        e = e4;
                    }
                    malformedURLException = e;
                } catch (MalformedURLException e5) {
                    malformedURLException = e5;
                    iC = 0;
                }
            } catch (Throwable th2) {
                int iB = dVar.b();
                try {
                    byte[] bArrF = dVar.f();
                    String str3 = new String(bArrF);
                    if (bArrF != null) {
                        if (this.e) {
                            str3 = z4.b(bArrF, r0.this.a);
                        }
                        objA = r0.this.a(str3, this.d);
                    }
                } catch (Throwable unused2) {
                }
                r0.this.a(this.c, this.a, iB, jE, th2);
                this.g.a(this.a, iB, th2.getMessage(), objA);
                return;
            }
            MalformedURLException malformedURLException2 = malformedURLException;
            if (this.d != null) {
                r0.this.a(this.c, this.a, iC, jE, malformedURLException2);
                this.g.a(this.a, -901, malformedURLException2.getMessage(), null);
            } else {
                r0.this.a(this.c, this.a, iC, jE);
                this.g.a(this.a, this.d, -901);
            }
        }
    }

    public static class d {
        private final long a = System.currentTimeMillis();
        private final String b;
        private final long c;
        private final long d;

        public d(String str, long j, long j2) {
            this.b = str;
            this.c = j;
            this.d = j2;
        }

        public long a() {
            return this.d;
        }

        protected boolean a(Object obj) {
            return obj instanceof d;
        }

        public long b() {
            return this.c;
        }

        public long c() {
            return this.a;
        }

        public String d() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            if (!dVar.a(this) || c() != dVar.c() || b() != dVar.b() || a() != dVar.a()) {
                return false;
            }
            String strD = d();
            String strD2 = dVar.d();
            return strD != null ? strD.equals(strD2) : strD2 == null;
        }

        public int hashCode() {
            long jC = c();
            long jB = b();
            int i = ((((int) (jC ^ (jC >>> 32))) + 59) * 59) + ((int) (jB ^ (jB >>> 32)));
            long jA = a();
            String strD = d();
            return (((i * 59) + ((int) ((jA >>> 32) ^ jA))) * 59) + (strD == null ? 43 : strD.hashCode());
        }

        public String toString() {
            return "ConnectionManager.RequestMeasurement(timestampMillis=" + c() + ", urlHostAndPathString=" + d() + ", responseSizeBytes=" + b() + ", connectionTimeMillis=" + a() + ")";
        }
    }

    public interface e {
        void a(String str, int i, String str2, Object obj);

        void a(String str, Object obj, int i);
    }

    public r0(com.applovin.impl.sdk.l lVar) {
        this.a = lVar;
        this.b = lVar.Q();
        g4 g4Var = new g4(lVar);
        this.c = g4Var;
        g4Var.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object a(String str, Object obj) {
        if (obj != null) {
            if (str != null && str.length() >= 3) {
                if (obj instanceof JSONObject) {
                    return new JSONObject(str);
                }
                if (obj instanceof u8) {
                    return v8.a(str, this.a);
                }
                if (!(obj instanceof String)) {
                    if (com.applovin.impl.sdk.p.a()) {
                        this.b.b("ConnectionManager", "Failed to process response of type '" + obj.getClass().getName() + "'");
                    }
                }
            }
            return obj;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, int i, long j) {
        if (com.applovin.impl.sdk.p.a()) {
            this.b.d("ConnectionManager", "Successful " + str + " returned " + i + " in " + (j / 1000.0f) + " s over " + s0.g(this.a) + " to " + c(str2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, int i, long j, Throwable th) {
        if (com.applovin.impl.sdk.p.a()) {
            this.b.a("ConnectionManager", "Failed " + str + " returned " + i + " in " + (j / 1000.0f) + " s over " + s0.g(this.a) + " to " + c(str2), th);
        }
    }

    private String c(String str) {
        return "#" + str.hashCode() + " \"" + StringUtils.getHostAndPath(str) + "\"";
    }

    public d a() {
        return this.d;
    }

    /* JADX WARN: Code duplicated, block: B:76:0x0204 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:77:0x0206 A[Catch: all -> 0x013c, TRY_LEAVE, TryCatch #2 {all -> 0x013c, blocks: (B:38:0x00fd, B:42:0x012a, B:51:0x016a, B:53:0x017a, B:57:0x019b, B:72:0x01ec, B:75:0x01fb, B:77:0x0206, B:59:0x019f, B:62:0x01a7, B:67:0x01be, B:69:0x01c4, B:70:0x01da, B:54:0x0188, B:80:0x020f, B:82:0x0227, B:83:0x0235, B:41:0x0126, B:64:0x01b8), top: B:111:0x00fd, inners: #3 }] */
    public void a(com.applovin.impl.sdk.network.a aVar, b bVar, e eVar) {
        Throwable th;
        byte[] bytes;
        byte[] bArrA;
        if (aVar == null) {
            throw new IllegalArgumentException("No request specified");
        }
        String strF = aVar.f();
        String strH = aVar.h();
        if (strF == null) {
            throw new IllegalArgumentException("No endpoint specified");
        }
        if (strH == null) {
            throw new IllegalArgumentException("No method specified");
        }
        if (eVar == null) {
            throw new IllegalArgumentException("No callback specified");
        }
        if (!strF.toLowerCase().startsWith(ProxyConfig.MATCH_HTTP)) {
            String str = "Requested postback submission to non HTTP endpoint " + strF + "; skipping...";
            com.applovin.impl.sdk.p.h("ConnectionManager", str);
            eVar.a(strF, AppLovinErrorCodes.INVALID_URL, str, null);
            return;
        }
        String httpsString = StringUtils.toHttpsString(strF);
        HashMap map = new HashMap(2);
        boolean zM = aVar.m();
        z4.a aVarA = ((Boolean) this.a.a(c5.B5)).booleanValue() ? z4.a.a(((Integer) this.a.a(c5.y5)).intValue()) : aVar.e();
        long jA = u7.a(this.a);
        if ((aVar.i() != null && !aVar.i().isEmpty()) || aVar.c() > 0) {
            Map mapI = aVar.i();
            Boolean bool = (Boolean) this.a.a(c5.s3);
            if (mapI != null && aVar.c() > 0) {
                mapI.put("current_retry_attempt", String.valueOf(aVar.c()));
            }
            if (zM) {
                String strA = u7.a(mapI, bool.booleanValue());
                String strB = z4.b(strA, jA, aVarA, this.a);
                if (StringUtils.isValidString(strA) && TextUtils.isEmpty(strB)) {
                    CollectionUtils.putStringIfValid("query", strA, map);
                }
                httpsString = StringUtils.appendQueryParameter(httpsString, "p", strB);
            } else {
                httpsString = StringUtils.appendQueryParameters(httpsString, mapI, bool.booleanValue());
            }
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
            Boolean boolEndsWith = StringUtils.endsWith(StringUtils.getHostAndPath(httpsString), f);
            if (com.applovin.impl.sdk.p.a()) {
                try {
                    this.b.d("ConnectionManager", "Sending " + strH + " request to id=#" + httpsString.hashCode() + " \"" + (boolEndsWith.booleanValue() ? httpsString : StringUtils.getHostAndPath(httpsString)) + "\"...");
                } catch (Throwable th2) {
                    th = th2;
                    strH = strH;
                }
            }
            g4.c.a aVarA2 = new g4.c.a().a(httpsString).b(strH).a(aVar.g()).a(aVar.l());
            if (aVar.b() != null) {
                if (zM != 0) {
                    bytes = z4.a(aVar.b().toString(), jA, aVarA, this.a);
                    if (bytes == null) {
                        CollectionUtils.putStringIfValid(C3510b4.i.E0, aVar.b().toString(), map);
                    }
                } else {
                    bytes = aVar.b().toString().getBytes("UTF-8");
                }
                byte[] bArr = bytes;
                if ((zM == 0 || aVarA != z4.a.V2) && aVar.o() && bArr != null && bArr.length > ((Integer) this.a.a(c5.X5)).intValue()) {
                    try {
                        bArrA = u7.a(bArr);
                    } catch (Throwable th3) {
                        if (com.applovin.impl.sdk.p.a()) {
                            this.b.a("ConnectionManager", "Failed to gzip POST body for request " + c(httpsString), th3);
                        }
                        this.a.E().a("ConnectionManager", "gzip", th3, CollectionUtils.hashMap("url", StringUtils.getHostAndPath(httpsString)));
                        bArrA = null;
                    }
                    aVarA2.a("Content-Type", "application/json; charset=utf-8");
                    if (!aVar.o() && bArrA != null) {
                        aVarA2.a(HttpHeaders.CONTENT_ENCODING, "gzip");
                        aVarA2.a(bArrA);
                    } else if (bArr != null) {
                        aVarA2.a(bArr);
                    }
                } else {
                    bArrA = null;
                    aVarA2.a("Content-Type", "application/json; charset=utf-8");
                    if (!aVar.o()) {
                        if (bArr != null) {
                            aVarA2.a(bArr);
                        }
                    } else if (bArr != null) {
                        aVarA2.a(bArr);
                    }
                }
                a(strH, httpsString, 0, SystemClock.elapsedRealtime() - jElapsedRealtime, th);
                eVar.a(httpsString, 0, th.getMessage(), null);
            }
            if (!map.isEmpty()) {
                HashMap<String, String> mapHashMap = CollectionUtils.hashMap("url", StringUtils.getHostAndPath(httpsString));
                if (((Boolean) this.a.a(c5.W5)).booleanValue()) {
                    CollectionUtils.putStringIfValid("details", new JSONObject(map).toString(), mapHashMap);
                }
                this.a.E().a(h2.s1, String.join(FacebookConstants.PLACEMENT_IDS_SEPARATOR, map.keySet()), mapHashMap);
            }
            String str2 = httpsString;
            try {
                httpsString = str2;
                try {
                    this.c.a(aVarA2.a(new c(str2, aVar, strH, aVar.d(), zM, bVar, eVar)).a(this.a.s0().c()).a());
                } catch (Throwable th4) {
                    th = th4;
                    th = th;
                    a(strH, httpsString, 0, SystemClock.elapsedRealtime() - jElapsedRealtime, th);
                    eVar.a(httpsString, 0, th.getMessage(), null);
                }
            } catch (Throwable th5) {
                th = th5;
                httpsString = str2;
                th = th;
                a(strH, httpsString, 0, SystemClock.elapsedRealtime() - jElapsedRealtime, th);
                eVar.a(httpsString, 0, th.getMessage(), null);
            }
        } catch (Throwable th6) {
            th = th6;
        }
    }

    public boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return this.e.contains(str);
    }

    public void b(String str) {
        if (((Boolean) this.a.a(c5.D3)).booleanValue()) {
            String hostAndPath = StringUtils.getHostAndPath(str);
            if (TextUtils.isEmpty(hostAndPath)) {
                return;
            }
            this.e.add(hostAndPath);
        }
    }
}
