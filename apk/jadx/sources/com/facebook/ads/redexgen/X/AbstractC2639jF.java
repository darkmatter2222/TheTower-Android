package com.facebook.ads.redexgen.X;

import android.view.View;
import javax.annotation.Nullable;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.jF, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2639jF {
    public static String[] A00 = {"UqypfisWbLbbWLDfIVvpiaUsz0iS", "wEiCJDeLGzLJebV", "cX", "dRMEhdR7kDOm9Ob", "SmhGT229bW5LAFpAZzaxeRYqKvMDeGhX", "QcSoUKFtoryhyFMFYIfDI81ChPsDlMu7", "SBvSWfqovIH0ljTVzoffsyrdWCNw", com.ironsource.G5.q};

    public static int A00(@Nullable C2635jB c2635jB, @Nullable AbstractC2604ig abstractC2604ig, View view, View view2, AbstractC2620iw abstractC2620iw, boolean z) {
        if (abstractC2620iw.A1T() == 0 || c2635jB.A03() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(abstractC2620iw.A1o(view) - abstractC2620iw.A1o(view2)) + 1;
        }
        int iA0D = abstractC2604ig.A0D(view2);
        int iA0G = abstractC2604ig.A0G(view);
        String[] strArr = A00;
        if (strArr[4].charAt(28) == strArr[5].charAt(28)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A00;
        strArr2[3] = "xd2oZUwi45Npmqe";
        strArr2[1] = "1k2xoHfklbXXQiR";
        return Math.min(abstractC2604ig.A0C(), iA0D - iA0G);
    }

    public static int A01(@Nullable C2635jB c2635jB, @Nullable AbstractC2604ig abstractC2604ig, View view, View view2, AbstractC2620iw abstractC2620iw, boolean z) {
        if (abstractC2620iw.A1T() == 0 || c2635jB.A03() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return c2635jB.A03();
        }
        return (int) (((abstractC2604ig.A0D(view2) - abstractC2604ig.A0G(view)) / (Math.abs(abstractC2620iw.A1o(view) - abstractC2620iw.A1o(view2)) + 1)) * c2635jB.A03());
    }

    public static int A02(@Nullable C2635jB c2635jB, @Nullable AbstractC2604ig abstractC2604ig, View view, View view2, AbstractC2620iw abstractC2620iw, boolean z, boolean z2) {
        if (abstractC2620iw.A1T() != 0) {
            int iA03 = c2635jB.A03();
            String[] strArr = A00;
            if (strArr[3].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A00;
            strArr2[6] = "xSzU3PMpL9LC7k2G9V08vNIV3nIP";
            strArr2[0] = "UsrmTbcEPDcBULmsiiLKltF5MwgK";
            if (iA03 != 0 && view != null && view2 != null) {
                int iMax = z2 ? Math.max(0, (c2635jB.A03() - Math.max(abstractC2620iw.A1o(view), abstractC2620iw.A1o(view2))) - 1) : Math.max(0, Math.min(abstractC2620iw.A1o(view), abstractC2620iw.A1o(view2)));
                if (z) {
                    return Math.round((iMax * (Math.abs(abstractC2604ig.A0D(view2) - abstractC2604ig.A0G(view)) / (Math.abs(abstractC2620iw.A1o(view) - abstractC2620iw.A1o(view2)) + 1))) + (abstractC2604ig.A0B() - abstractC2604ig.A0G(view)));
                }
                return iMax;
            }
        }
        return 0;
    }
}
