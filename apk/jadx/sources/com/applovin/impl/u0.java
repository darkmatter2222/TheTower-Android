package com.applovin.impl;

import com.applovin.impl.sdk.utils.StringUtils;

/* JADX INFO: loaded from: classes2.dex */
public class u0 {
    private final StringBuilder a = new StringBuilder();

    private String a(w0 w0Var) {
        w0.b bVarD = w0Var.d();
        if (bVarD == w0.b.EVENT) {
            return ((z0) w0Var).g();
        }
        return bVarD == w0.b.DECISION ? StringUtils.emptyIfNull(w0Var.b()) : StringUtils.emptyIfNull(w0Var.e());
    }

    private void a(String str) {
        this.a.append(str).append("\n");
    }

    private void a(String str, long j) {
        a(str + " after " + j + "ms");
    }

    public void a() {
        this.a.setLength(0);
    }

    public void a(w0 w0Var, long j) {
        if (w0Var.d() == w0.b.DECISION) {
            return;
        }
        a(a(w0Var), j);
    }

    public void a(w0 w0Var, boolean z, long j) {
        a(a(w0Var) + ": " + z, j);
    }

    public void b() {
        a("Invalid Activity");
    }

    public void b(String str) {
        a("Invalid state: " + str);
    }

    public String toString() {
        return this.a.toString();
    }
}
