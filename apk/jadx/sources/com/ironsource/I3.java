package com.ironsource;

import p005kotlin.NoWhenBranchMatchedException;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class I3 {

    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[N3.values().length];
            try {
                iArr[N3.Pacing.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[N3.ShowCount.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[N3.Delivery.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public final int a(N3 cappingType) {
        Intrinsics.checkNotNullParameter(cappingType, "cappingType");
        int i = a.a[cappingType.ordinal()];
        if (i == 1 || i == 2) {
            return 3000;
        }
        if (i == 3) {
            return 3001;
        }
        throw new NoWhenBranchMatchedException();
    }
}
