package com.ironsource;

import android.os.Handler;
import com.ironsource.sdk.utils.IronSourceStorageUtils;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.j5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C3655j5 implements C7 {
    private static final int e = 5;
    private static C3655j5 f;
    private HandlerC3638i5 a;
    private final JSONObject b;
    private Thread c;
    private final String d;

    private C3655j5(String str, V7 v7, JSONObject jSONObject) {
        this.d = str;
        this.a = new HandlerC3638i5(v7.b());
        this.b = jSONObject;
        IronSourceStorageUtils.deleteFolder(b());
        IronSourceStorageUtils.makeDir(b());
    }

    public static synchronized C3655j5 a(String str, V7 v7, JSONObject jSONObject) {
        if (f == null) {
            f = new C3655j5(str, v7, jSONObject);
        }
        return f;
    }

    private Thread a(C3602g5 c3602g5, Handler handler) {
        return new Thread(new RunnableC3958zf(c3602g5, handler));
    }

    private String b() {
        return IronSourceStorageUtils.buildAbsolutePathToDirInCache(this.d, C3546d4.D);
    }

    private Thread b(D8 d8, String str, int i, int i2, Handler handler) {
        if (i <= 0) {
            i = this.b.optInt("connectionTimeout", 5);
        }
        if (i2 <= 0) {
            i2 = this.b.optInt("readTimeout", 5);
        }
        boolean zOptBoolean = this.b.optBoolean(C3546d4.H, false);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        return a(new C3602g5(d8, str, (int) timeUnit.toMillis(i), (int) timeUnit.toMillis(i2), zOptBoolean, b()), handler);
    }

    public String a() {
        return this.d;
    }

    @Override // com.ironsource.C7
    public void a(D8 d8, String str) {
        int iOptInt = this.b.optInt("connectionTimeout", 5);
        int iOptInt2 = this.b.optInt("readTimeout", 5);
        boolean zOptBoolean = this.b.optBoolean(C3546d4.H, false);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        Thread threadA = a(new C3602g5(d8, str, (int) timeUnit.toMillis(iOptInt), (int) timeUnit.toMillis(iOptInt2), zOptBoolean, b()), this.a);
        this.c = threadA;
        threadA.start();
    }

    @Override // com.ironsource.C7
    public void a(D8 d8, String str, int i, int i2) {
        b(d8, str, i, i2, this.a).start();
    }

    @Override // com.ironsource.C7
    public void a(D8 d8, String str, int i, int i2, Handler handler) {
        b(d8, str, i, i2, handler).start();
    }

    @Override // com.ironsource.C7
    public void a(Vc vc) {
        this.a.a(vc);
    }

    public boolean c() {
        Thread thread = this.c;
        return thread != null && thread.isAlive();
    }

    public synchronized void d() {
        f = null;
        HandlerC3638i5 handlerC3638i5 = this.a;
        if (handlerC3638i5 != null) {
            handlerC3638i5.a();
            this.a = null;
        }
    }
}
