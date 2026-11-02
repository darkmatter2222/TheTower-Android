package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class h01 {
    public static String a(i01 error) {
        Intrinsics.checkNotNullParameter(error, "error");
        if (error.a() != kk1.INTERNAL_ERROR && !(error instanceof t01)) {
            if (error instanceof s01) {
                s01 s01Var = (s01) error;
                return "WebView HTTP error " + s01Var.d() + ": " + s01Var.c() + " on url: " + s01Var.e();
            }
            if (error instanceof u01) {
                return ir0.e.d();
            }
            if (error instanceof m01) {
                return ((m01) error).c();
            }
            if (error instanceof j01) {
                j01 j01Var = (j01) error;
                String strD = j01Var.d();
                return strD == null ? j01Var.c().toString() : strD;
            }
            if (error instanceof l01) {
                return ((l01) error).c().toString();
            }
            if (error instanceof k01) {
                return error.toString();
            }
            if (error instanceof p01) {
                return ((p01) error).c();
            }
            if (error instanceof n01) {
                return ((n01) error).c();
            }
            if (error instanceof r01) {
                return ((r01) error).c();
            }
            if (error instanceof o01) {
                return ((o01) error).c();
            }
            throw new p005kotlin.NoWhenBranchMatchedException();
        }
        return ir0.b.d();
    }
}
