package com.ironsource.mediationsdk;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.ironsource.A2;
import com.ironsource.C3635i2;
import com.ironsource.C3643ia;
import com.ironsource.C3652j2;
import com.ironsource.C3763p5;
import com.ironsource.C3801r4;
import com.ironsource.C3927y2;
import com.ironsource.InterfaceC3526c2;
import com.ironsource.Q9;
import com.ironsource.Ue;
import com.ironsource.environment.thread.IronSourceThreadManager;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class e {
    private final String a = "1";
    private final String b = "102";
    private final String c = "102";
    private final String d = "GenericNotifications";
    private f e;
    private IronSource.a f;
    private A2 g;
    private InterfaceC3526c2 h;
    private ISBannerSize i;

    public static class a implements Runnable {
        protected InterfaceC3526c2 a;
        protected d.a b;
        protected int c;
        protected String d;
        protected long e;
        protected int f;
        private int h;
        private final URL k;
        private final JSONObject l;
        private final boolean m;
        private final int n;
        private final long o;
        private final boolean p;
        private final boolean q;
        private final boolean r;
        protected String i = "";
        protected int j = 0;
        protected String g = a((Integer) null);

        public a(InterfaceC3526c2 interfaceC3526c2, URL url, JSONObject jSONObject, boolean z, A2 a2) {
            this.a = interfaceC3526c2;
            this.k = url;
            this.l = jSONObject;
            this.m = z;
            this.n = a2.g();
            this.o = a2.m();
            this.p = a2.o();
            this.q = a2.p();
            this.h = a2.d();
            this.r = a2.n();
        }

        private String a() {
            return this.h == 2 ? C3763p5.b().d() : C3763p5.b().c();
        }

        private String a(Integer num) {
            return C3635i2.a.a(this.r, num);
        }

        private String a(HttpURLConnection httpURLConnection) throws IOException {
            InputStreamReader inputStreamReader = new InputStreamReader(httpURLConnection.getInputStream());
            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
            StringBuilder sb = new StringBuilder();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    bufferedReader.close();
                    inputStreamReader.close();
                    return sb.toString();
                }
                sb.append(line);
            }
        }

        private HttpURLConnection a(URL url, long j) throws IOException {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty("Content-Type", "application/json; charset=utf-8");
            httpURLConnection.setReadTimeout((int) j);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setDoOutput(true);
            return httpURLConnection;
        }

        private JSONObject a(String str, String str2) throws JSONException {
            String strB = Q9.b(str, str2);
            if (TextUtils.isEmpty(strB)) {
                throw new JSONException("decryption error");
            }
            return new JSONObject(strB);
        }

        private void a(long j, long j2) {
            long time = j - (new Date().getTime() - j2);
            if (time > 0) {
                SystemClock.sleep(time);
            }
        }

        private void a(HttpURLConnection httpURLConnection, JSONObject jSONObject, boolean z) throws Exception {
            String strA;
            String strE;
            OutputStream outputStream = httpURLConnection.getOutputStream();
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, "UTF-8");
            BufferedWriter bufferedWriter = new BufferedWriter(outputStreamWriter);
            if (this.h == 2) {
                try {
                    strA = C3763p5.b().a();
                } catch (JSONException e) {
                    C3801r4.d().a(e);
                    this.i = e.getLocalizedMessage();
                    this.j = 1015;
                    this.h = 1;
                    IronLog.INTERNAL.error("get encrypted session key exception " + e.getMessage());
                    strA = "";
                }
            } else {
                strA = "";
            }
            String string = jSONObject.toString();
            String strA2 = a();
            if (z) {
                IronLog.INTERNAL.verbose("compressing and encrypting auction request");
                strE = Q9.a(strA2, string);
            } else {
                strE = Q9.e(strA2, string);
            }
            bufferedWriter.write(this.h == 2 ? String.format("{\"sk\" : \"%1$s\", \"ct\" : \"%2$s\"}", strA, strE) : String.format("{\"request\" : \"%1$s\"}", strE));
            bufferedWriter.flush();
            bufferedWriter.close();
            outputStreamWriter.close();
            outputStream.close();
        }

        private JSONObject b(String str, String str2) throws JSONException {
            IronLog.INTERNAL.verbose("decrypting and decompressing auction response");
            String strD = Q9.d(str, str2);
            if (strD != null) {
                return new JSONObject(strD);
            }
            throw new JSONException("decompression error");
        }

        protected JSONObject a(JSONObject jSONObject, boolean z) throws JSONException {
            String strA = a();
            String string = jSONObject.getString(this.h == 2 ? "ct" : Ue.n);
            return z ? b(strA, string) : a(strA, string);
        }

        protected void a(String str, boolean z, boolean z2) throws JSONException {
            if (TextUtils.isEmpty(str)) {
                throw new JSONException("empty response");
            }
            JSONObject jSONObject = new JSONObject(str);
            if (z) {
                jSONObject = a(jSONObject, z2);
            }
            d.a aVarA = d.b().a(jSONObject);
            this.b = aVarA;
            this.c = aVarA.c();
            this.d = this.b.d();
        }

        protected void a(boolean z, InterfaceC3526c2 interfaceC3526c2, long j) {
            if (z) {
                interfaceC3526c2.a(this.b.h(), this.b.a(), this.b.e(), this.b.f(), this.b.b(), this.f + 1, j, this.j, this.i);
            } else {
                interfaceC3526c2.a(this.c, this.d, this.f + 1, this.g, j);
            }
        }

        protected boolean b() {
            this.e = new Date().getTime();
            try {
                this.h = this.j == 1015 ? 1 : this.h;
                this.f = 0;
                HttpURLConnection httpURLConnectionA = null;
                while (true) {
                    int i = this.f;
                    int i2 = this.n;
                    if (i >= i2) {
                        this.f = i2 - 1;
                        this.g = a(Integer.valueOf(this.c));
                        return false;
                    }
                    try {
                        long time = new Date().getTime();
                        String str = "Auction Handler: auction trial " + (this.f + 1) + " out of " + this.n + " max trials";
                        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, str, 0);
                        IronSourceUtils.i(str);
                        httpURLConnectionA = a(this.k, this.o);
                        IronLog ironLog = IronLog.INTERNAL;
                        ironLog.verbose("parameters for auction url: " + this.k.getQuery());
                        ironLog.verbose("parameters for auction POST data: " + this.l);
                        a(httpURLConnectionA, this.l, this.p);
                        int responseCode = httpURLConnectionA.getResponseCode();
                        if (responseCode == 200 || responseCode == 204) {
                            try {
                                a(a(httpURLConnectionA), this.m, this.q);
                                httpURLConnectionA.disconnect();
                                return true;
                            } catch (JSONException e) {
                                C3801r4.d().a(e);
                                if (e.getMessage() != null && e.getMessage().equalsIgnoreCase("decryption error")) {
                                    this.c = 1003;
                                    this.d = "Auction decryption error";
                                } else if (e.getMessage() == null || !e.getMessage().equalsIgnoreCase("decompression error")) {
                                    this.c = 1002;
                                    this.d = "Auction parsing error";
                                } else {
                                    this.c = 1008;
                                    this.d = "Auction decompression error";
                                }
                                this.g = a(Integer.valueOf(this.c));
                                IronLog.INTERNAL.error("Auction handle response exception " + e.getMessage());
                                httpURLConnectionA.disconnect();
                                return false;
                            }
                        }
                        this.c = 1001;
                        String str2 = "Auction response code not valid, error code response from server - " + responseCode;
                        this.d = str2;
                        ironLog.error(str2);
                        httpURLConnectionA.disconnect();
                        if (this.f < this.n - 1) {
                            a(this.o, time);
                        }
                        this.f++;
                    } catch (SocketTimeoutException e2) {
                        C3801r4.d().a(e2);
                        if (httpURLConnectionA != null) {
                            httpURLConnectionA.disconnect();
                        }
                        this.c = 1006;
                        this.d = "Connection timed out";
                        IronLog.INTERNAL.error("Auction socket timeout exception " + e2.getMessage());
                    } catch (Throwable th) {
                        C3801r4.d().a(th);
                        IronLog.INTERNAL.error("getting exception " + th);
                        if (httpURLConnectionA != null) {
                            httpURLConnectionA.disconnect();
                        }
                        this.c = 1000;
                        this.d = th.getMessage();
                        this.g = a(Integer.valueOf(this.c));
                        return false;
                    }
                }
            } catch (Exception e3) {
                C3801r4.d().a(e3);
                this.c = 1007;
                this.d = e3.getMessage();
                this.f = 0;
                this.g = a(Integer.valueOf(this.c));
                IronLog.INTERNAL.error("Auction request exception " + e3.getMessage());
                return false;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean zB = b();
            InterfaceC3526c2 interfaceC3526c2 = this.a;
            if (interfaceC3526c2 == null) {
                return;
            }
            a(zB, interfaceC3526c2, new Date().getTime() - this.e);
        }
    }

    @Deprecated
    public e(IronSource.a aVar, A2 a2, InterfaceC3526c2 interfaceC3526c2) {
        this.f = aVar;
        this.g = a2;
        this.h = interfaceC3526c2;
    }

    public e(f fVar) {
        this.e = fVar;
    }

    private JSONObject a(Map<String, Object> map, List<String> list, C3652j2 c3652j2, int i, boolean z, C3643ia c3643ia) throws JSONException {
        h hVar = new h(this.f);
        hVar.a(map);
        hVar.a(list);
        hVar.a(c3652j2);
        hVar.a(i);
        hVar.a(this.i);
        hVar.a(c3643ia);
        hVar.b(z);
        return d.b().a(hVar);
    }

    public void a(Context context, h hVar, InterfaceC3526c2 interfaceC3526c2) {
        try {
            IronSourceThreadManager.INSTANCE.postMediationBackgroundTask(this.e.a(context, hVar, interfaceC3526c2));
        } catch (Exception e) {
            C3801r4.d().a(e);
            IronLog.INTERNAL.error("execute auction exception " + e.getMessage());
            if (interfaceC3526c2 != null) {
                interfaceC3526c2.a(1000, e.getMessage(), 0, C3635i2.a.a(this.e.a(), 1000), 0L);
            }
        }
    }

    @Deprecated
    public void a(Context context, Map<String, Object> map, List<String> list, C3652j2 c3652j2, int i, C3643ia c3643ia) {
        e eVar;
        try {
            boolean zG = IronSourceUtils.g();
            eVar = this;
            try {
                IronSourceThreadManager.INSTANCE.postMediationBackgroundTask(new a(eVar.h, new URL(eVar.g.a(false)), eVar.a(map, list, c3652j2, i, zG, c3643ia), zG, eVar.g));
            } catch (Exception e) {
                e = e;
                Exception exc = e;
                C3801r4.d().a(exc);
                IronLog.INTERNAL.error("execute auction exception " + exc.getMessage());
                eVar.h.a(1000, exc.getMessage(), 0, C3635i2.a.a(eVar.g.n(), 1000), 0L);
            }
        } catch (Exception e2) {
            e = e2;
            eVar = this;
        }
    }

    @Deprecated
    public void a(Context context, Map<String, Object> map, List<String> list, C3652j2 c3652j2, int i, C3643ia c3643ia, ISBannerSize iSBannerSize) {
        this.i = iSBannerSize;
        a(context, map, list, c3652j2, i, c3643ia);
    }

    public void a(C3927y2 c3927y2, int i, C3927y2 c3927y3) {
        Iterator<String> it = c3927y2.h().iterator();
        while (it.hasNext()) {
            C3927y2 c3927y4 = c3927y2;
            int i2 = i;
            d.b().a("reportLoadSuccess", c3927y4.c(), d.b().a(it.next(), i2, c3927y4, "", "", ""));
            i = i2;
            c3927y2 = c3927y4;
        }
        C3927y2 c3927y5 = c3927y2;
        int i3 = i;
        if (c3927y3 != null) {
            Iterator<String> it2 = c3927y3.h().iterator();
            while (it2.hasNext()) {
                d.b().a("reportLoadSuccess", "GenericNotifications", d.b().a(it2.next(), i3, c3927y5, "", "102", ""));
            }
        }
    }

    public void a(C3927y2 c3927y2, int i, C3927y2 c3927y3, String str) {
        Iterator<String> it = c3927y2.b().iterator();
        while (it.hasNext()) {
            C3927y2 c3927y4 = c3927y2;
            int i2 = i;
            String str2 = str;
            d.b().a("reportImpression", c3927y4.c(), d.b().a(it.next(), i2, c3927y4, "", "", str2));
            i = i2;
            c3927y2 = c3927y4;
            str = str2;
        }
        C3927y2 c3927y5 = c3927y2;
        int i3 = i;
        String str3 = str;
        if (c3927y3 != null) {
            Iterator<String> it2 = c3927y3.b().iterator();
            while (it2.hasNext()) {
                d.b().a("reportImpression", "GenericNotifications", d.b().a(it2.next(), i3, c3927y5, "", "102", str3));
            }
        }
    }

    public void a(ArrayList<String> arrayList, ConcurrentHashMap<String, C3927y2> concurrentHashMap, int i, C3927y2 c3927y2, C3927y2 c3927y3) {
        int iJ = c3927y3.j();
        for (String str : arrayList) {
            if (!str.equals(c3927y3.c())) {
                C3927y2 c3927y4 = concurrentHashMap.get(str);
                int iJ2 = c3927y4.j();
                String strI = c3927y4.i();
                String str2 = iJ2 < iJ ? "1" : "102";
                IronLog.INTERNAL.verbose("instance=" + c3927y4.c() + ", instancePriceOrder= " + iJ2 + ", loseReasonCode=" + str2 + ", winnerInstance=" + c3927y3.c() + ", winnerInstancePriceOrder=" + iJ);
                Iterator<String> it = c3927y4.g().iterator();
                while (it.hasNext()) {
                    d.b().a("reportAuctionLose", c3927y4.c(), d.b().a(it.next(), i, c3927y3, strI, str2, ""));
                }
            }
        }
        if (c3927y2 != null) {
            Iterator<String> it2 = c3927y2.g().iterator();
            while (it2.hasNext()) {
                d.b().a("reportAuctionLose", "GenericNotifications", d.b().a(it2.next(), i, c3927y3, "", "102", ""));
            }
        }
    }

    public void a(CopyOnWriteArrayList<u> copyOnWriteArrayList, ConcurrentHashMap<String, C3927y2> concurrentHashMap, int i, C3927y2 c3927y2, C3927y2 c3927y3) {
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<u> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().c());
        }
        a(arrayList, concurrentHashMap, i, c3927y2, c3927y3);
    }

    public boolean a() {
        return this.e.b();
    }
}
