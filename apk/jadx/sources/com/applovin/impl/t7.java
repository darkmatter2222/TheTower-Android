package com.applovin.impl;

import android.text.TextUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.Locale;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public final class t7 {
    private final com.applovin.impl.sdk.l a;
    private String b;
    private final String c = a(e5.l);
    private final String d = a(e5.m);
    private String e = (String) f5.a(e5.n, (Object) null, com.applovin.impl.sdk.l.p());
    private String f = (String) f5.a(e5.o, (Object) null, com.applovin.impl.sdk.l.p());

    public t7(com.applovin.impl.sdk.l lVar) {
        this.a = lVar;
        a(f());
    }

    private String a(e5 e5Var) {
        String str = (String) f5.a(e5Var, (Object) null, com.applovin.impl.sdk.l.p());
        if (StringUtils.isValidString(str)) {
            return str;
        }
        String lowerCase = UUID.randomUUID().toString().toLowerCase(Locale.US);
        f5.b(e5Var, lowerCase, com.applovin.impl.sdk.l.p());
        return lowerCase;
    }

    public static String a(com.applovin.impl.sdk.l lVar) {
        e5 e5Var = e5.p;
        String str = (String) lVar.a(e5Var);
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        String strValueOf = String.valueOf(((int) (Math.random() * 100.0d)) + 1);
        lVar.b(e5Var, strValueOf);
        return strValueOf;
    }

    private String f() {
        if (!((Boolean) this.a.a(c5.V3)).booleanValue()) {
            this.a.c(e5.k);
        }
        String str = (String) this.a.a(e5.k);
        if (!StringUtils.isValidString(str)) {
            return null;
        }
        this.a.Q();
        if (com.applovin.impl.sdk.p.a()) {
            this.a.Q().a("AppLovinSdk", "Using identifier (" + str + ") from previous session");
        }
        return str;
    }

    public String a() {
        return this.d;
    }

    public void a(String str) {
        if (((Boolean) this.a.a(c5.V3)).booleanValue()) {
            this.a.b(e5.k, str);
        }
        this.b = str;
        this.a.u().b(str, a());
    }

    public String b() {
        return this.e;
    }

    public void b(String str) {
        this.e = str;
        f5.b(e5.n, str, com.applovin.impl.sdk.l.p());
    }

    public String c() {
        return this.c;
    }

    public void c(String str) {
        this.f = str;
        f5.b(e5.o, str, com.applovin.impl.sdk.l.p());
    }

    public String d() {
        return this.f;
    }

    public String e() {
        return this.b;
    }
}
