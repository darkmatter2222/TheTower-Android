package com.applovin.impl;

import android.text.TextUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinErrorCodes;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public abstract class r6 extends n5 implements r0.e {
    private final com.applovin.impl.sdk.network.a g;
    private final r0.e h;
    private i6.b i;
    private c5 j;
    private c5 k;
    private String l;
    protected r0.b m;

    class a implements r0.e {
        final /* synthetic */ com.applovin.impl.sdk.l a;

        a(com.applovin.impl.sdk.l lVar) {
            this.a = lVar;
        }

        @Override // com.applovin.impl.r0.e
        public void a(String str, int i, String str2, Object obj) {
            long millis;
            boolean z = false;
            boolean z2 = i < 200 || i >= 500;
            boolean z3 = i == 429;
            boolean z4 = i != -1009 || r6.this.g.q();
            boolean z5 = (i == -900 || i == -1000) ? false : true;
            if (!z4 || !z5 || (!z2 && !z3 && !r6.this.g.p())) {
                r6 r6Var = r6.this;
                r6Var.a(r6Var.g.f(), i, str2, obj);
                return;
            }
            String strA = r6.this.g.a();
            if (r6.this.g.j() <= 0) {
                if (strA == null || !strA.equals(r6.this.g.f())) {
                    r6 r6Var2 = r6.this;
                    r6Var2.a(r6Var2.j);
                } else {
                    r6 r6Var3 = r6.this;
                    r6Var3.a(r6Var3.k);
                }
                r6 r6Var4 = r6.this;
                r6Var4.a(r6Var4.g.f(), i, str2, obj);
                return;
            }
            com.applovin.impl.sdk.p pVar = r6.this.c;
            if (com.applovin.impl.sdk.p.a()) {
                r6 r6Var5 = r6.this;
                r6Var5.c.k(r6Var5.b, "Unable to send request due to server failure (code " + i + "). " + r6.this.g.j() + " attempts left, retrying in " + TimeUnit.MILLISECONDS.toSeconds(r6.this.g.k()) + " seconds...");
            }
            int iJ = r6.this.g.j() - 1;
            r6.this.g.a(iJ);
            if (iJ == 0) {
                r6 r6Var6 = r6.this;
                r6Var6.a(r6Var6.j);
                if (StringUtils.isValidString(strA) && strA.length() >= 4) {
                    com.applovin.impl.sdk.p pVar2 = r6.this.c;
                    if (com.applovin.impl.sdk.p.a()) {
                        r6 r6Var7 = r6.this;
                        r6Var7.c.d(r6Var7.b, "Switching to backup endpoint " + strA);
                    }
                    r6 r6Var8 = r6.this;
                    r6Var8.l = r6Var8.g.f();
                    r6.this.g.b(strA);
                    z = true;
                }
            }
            if (((Boolean) this.a.a(c5.q3)).booleanValue() && z) {
                millis = 0;
            } else {
                millis = r6.this.g.n() ? TimeUnit.SECONDS.toMillis((long) Math.pow(2.0d, r6.this.g.c())) : r6.this.g.k();
            }
            i6 i6VarS0 = this.a.s0();
            r6 r6Var9 = r6.this;
            i6VarS0.a(r6Var9, r6Var9.i, millis);
        }

        @Override // com.applovin.impl.r0.e
        public void a(String str, Object obj, int i) {
            r6.this.b().x().b(r6.this.l);
            r6.this.g.a(0);
            r6.this.a(str, obj, i);
        }
    }

    public r6(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.l lVar) {
        this(aVar, lVar, false);
    }

    public r6(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.l lVar, boolean z) {
        super("TaskRepeatRequest", lVar, z);
        this.i = i6.b.OTHER;
        if (aVar == null) {
            throw new IllegalArgumentException("No request specified");
        }
        a(aVar.f());
        this.g = aVar;
        this.m = new r0.b();
        this.h = new a(lVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(c5 c5Var) {
        if (c5Var != null) {
            b().q0().a(c5Var, c5Var.a());
        }
    }

    private void e() {
        if (((Boolean) this.a.a(c5.D3)).booleanValue() && b().x().a(StringUtils.getHostAndPath(this.g.f()))) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.d(this.b, "Swapping primary endpoint with backup endpoint " + this.g.a());
            }
            String strF = this.g.f();
            com.applovin.impl.sdk.network.a aVar = this.g;
            aVar.b(aVar.a());
            this.g.a(strF);
        }
    }

    public void a(i6.b bVar) {
        this.i = bVar;
    }

    public abstract void a(String str, int i, String str2, Object obj);

    public abstract void a(String str, Object obj, int i);

    public void b(c5 c5Var) {
        this.k = c5Var;
    }

    public void c(c5 c5Var) {
        this.j = c5Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        r0 r0VarX = b().x();
        if (!b().H0() && !b().E0()) {
            com.applovin.impl.sdk.p.h("AppLovinSdk", "AppLovin SDK is disabled");
            a(this.g.f(), -22, null, null);
            return;
        }
        e();
        if (!StringUtils.isValidString(this.g.f()) || this.g.f().length() < 4) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.b(this.b, "Task has an invalid or null request endpoint.");
            }
            a(this.g.f(), AppLovinErrorCodes.INVALID_URL, null, null);
        } else {
            if (TextUtils.isEmpty(this.g.h())) {
                this.g.c(this.g.b() != null ? "POST" : "GET");
            }
            r0VarX.a(this.g, this.m, this.h);
        }
    }
}
