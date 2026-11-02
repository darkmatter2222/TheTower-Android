package com.ironsource.sdk.controller;

import com.ironsource.A8;
import com.ironsource.C3510b4;
import com.ironsource.C3655j5;
import com.ironsource.C3700le;
import com.ironsource.C3801r4;
import com.ironsource.C3879v8;
import com.ironsource.D8;
import com.ironsource.G5;
import com.ironsource.sdk.utils.IronSourceStorageUtils;
import com.ironsource.sdk.utils.SDKUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
class d {
    static final String h = "controllerSourceData";
    private static final String i = "next_";
    private static final String j = "fallback_";
    private static final String k = "controllerSourceCode";
    private long a;
    private int b;
    private c c;
    private EnumC1121d d = EnumC1121d.NONE;
    private String e;
    private String f;
    private C3655j5 g;

    class a extends JSONObject {
        a() throws JSONException {
            putOpt(C3510b4.a.j, Integer.valueOf(d.this.b));
            putOpt(d.k, Integer.valueOf(d.this.d.b()));
        }
    }

    static /* synthetic */ class b {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[c.values().length];
            a = iArr;
            try {
                iArr[c.FETCH_FROM_SERVER_NO_FALLBACK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[c.FETCH_FROM_SERVER_WITH_LOCAL_FALLBACK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[c.FETCH_FOR_NEXT_SESSION_LOAD_FROM_LOCAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum c {
        FETCH_FROM_SERVER_NO_FALLBACK,
        FETCH_FROM_SERVER_WITH_LOCAL_FALLBACK,
        FETCH_FOR_NEXT_SESSION_LOAD_FROM_LOCAL
    }

    /* JADX INFO: renamed from: com.ironsource.sdk.controller.d$d, reason: collision with other inner class name */
    public enum EnumC1121d {
        NONE(0),
        PREPARED_CONTROLLER_LOADED(1),
        CONTROLLER_FROM_SERVER(2),
        MISSING_PREPARED_CONTROLLER_LOAD_LAST_USED_CONTROLLER(3),
        FAILED_RENAME_PREPARED_CONTROLLER_LOAD_LAST_USED_CONTROLLER(4),
        FALLBACK_CONTROLLER_RECOVERY(5);

        private int a;

        EnumC1121d(int i) {
            this.a = i;
        }

        public int b() {
            return this.a;
        }
    }

    d(JSONObject jSONObject, String str, String str2, C3655j5 c3655j5) {
        int iOptInt = jSONObject.optInt(C3510b4.a.j, -1);
        this.b = iOptInt;
        this.c = a(iOptInt);
        this.e = str;
        this.f = str2;
        this.g = c3655j5;
    }

    private c a(int i2) {
        if (i2 != 1) {
            return i2 != 2 ? c.FETCH_FROM_SERVER_NO_FALLBACK : c.FETCH_FOR_NEXT_SESSION_LOAD_FROM_LOCAL;
        }
        return c.FETCH_FROM_SERVER_WITH_LOCAL_FALLBACK;
    }

    private void a(D8 d8) {
        if (this.g.c()) {
            return;
        }
        this.g.a(d8, this.f);
    }

    private void a(EnumC1121d enumC1121d) {
        C3879v8 c3879v8A = new C3879v8().a(G5.y, Integer.valueOf(this.b)).a(G5.z, Integer.valueOf(enumC1121d.b()));
        if (this.a > 0) {
            c3879v8A.a(G5.B, Long.valueOf(System.currentTimeMillis() - this.a));
        }
        A8.a(C3700le.w, c3879v8A.a());
    }

    private boolean a() {
        try {
            if (j()) {
                return IronSourceStorageUtils.renameFile(h().getPath(), g().getPath());
            }
            return false;
        } catch (Exception e) {
            C3801r4.d().a(e);
            return false;
        }
    }

    private boolean b() throws Exception {
        return IronSourceStorageUtils.renameFile(i().getPath(), g().getPath());
    }

    private void c() {
        try {
            D8 d8G = g();
            if (d8G.exists()) {
                D8 d8H = h();
                if (d8H.exists()) {
                    d8H.delete();
                }
                IronSourceStorageUtils.renameFile(d8G.getPath(), d8H.getPath());
            }
        } catch (Exception e) {
            C3801r4.d().a(e);
        }
    }

    private void d() {
        IronSourceStorageUtils.deleteFile(h());
    }

    private void e() {
        IronSourceStorageUtils.deleteFile(g());
    }

    private D8 h() {
        return new D8(this.e, "fallback_mobileController.html");
    }

    private D8 i() {
        return new D8(this.e, "next_mobileController.html");
    }

    private boolean j() {
        return h().exists();
    }

    private void l() {
        C3879v8 c3879v8A = new C3879v8().a(G5.y, Integer.valueOf(this.b));
        if (this.a > 0) {
            c3879v8A.a(G5.B, Long.valueOf(System.currentTimeMillis() - this.a));
        }
        A8.a(C3700le.x, c3879v8A.a());
    }

    void a(C3879v8 c3879v8) {
        c3879v8.a(G5.y, Integer.valueOf(this.b));
        A8.a(C3700le.v, c3879v8.a());
        this.a = System.currentTimeMillis();
    }

    void a(Runnable runnable) {
        if (m()) {
            return;
        }
        if (this.c == c.FETCH_FROM_SERVER_WITH_LOCAL_FALLBACK) {
            d();
        }
        EnumC1121d enumC1121d = EnumC1121d.CONTROLLER_FROM_SERVER;
        this.d = enumC1121d;
        a(enumC1121d);
        runnable.run();
    }

    void a(Runnable runnable, Runnable runnable2) {
        if (m()) {
            return;
        }
        if (this.c != c.FETCH_FROM_SERVER_WITH_LOCAL_FALLBACK || !a()) {
            l();
            runnable2.run();
        } else {
            EnumC1121d enumC1121d = EnumC1121d.FALLBACK_CONTROLLER_RECOVERY;
            this.d = enumC1121d;
            a(enumC1121d);
            runnable.run();
        }
    }

    JSONObject f() throws JSONException {
        return new a();
    }

    D8 g() {
        return new D8(this.e, C3510b4.f);
    }

    boolean k() {
        int i2 = b.a[this.c.ordinal()];
        if (i2 == 1) {
            e();
            a(new D8(this.e, SDKUtils.getFileName(this.f)));
            return false;
        }
        if (i2 == 2) {
            c();
            a(new D8(this.e, SDKUtils.getFileName(this.f)));
            return false;
        }
        if (i2 == 3) {
            try {
                D8 d8G = g();
                D8 d8I = i();
                if (!d8I.exists() && !d8G.exists()) {
                    a(new D8(this.e, SDKUtils.getFileName(this.f)));
                    return false;
                }
                if (!d8I.exists() && d8G.exists()) {
                    EnumC1121d enumC1121d = EnumC1121d.MISSING_PREPARED_CONTROLLER_LOAD_LAST_USED_CONTROLLER;
                    this.d = enumC1121d;
                    a(enumC1121d);
                    a(new D8(this.e, d8I.getName()));
                    return true;
                }
                c();
                if (b()) {
                    EnumC1121d enumC1121d2 = EnumC1121d.PREPARED_CONTROLLER_LOADED;
                    this.d = enumC1121d2;
                    a(enumC1121d2);
                    d();
                    a(new D8(this.e, d8I.getName()));
                    return true;
                }
                if (!a()) {
                    a(new D8(this.e, SDKUtils.getFileName(this.f)));
                    return false;
                }
                EnumC1121d enumC1121d3 = EnumC1121d.FAILED_RENAME_PREPARED_CONTROLLER_LOAD_LAST_USED_CONTROLLER;
                this.d = enumC1121d3;
                a(enumC1121d3);
                a(new D8(this.e, d8I.getName()));
                return true;
            } catch (Exception e) {
                C3801r4.d().a(e);
            }
        }
        return false;
    }

    boolean m() {
        return this.d != EnumC1121d.NONE;
    }
}
