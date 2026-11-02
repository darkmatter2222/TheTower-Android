package com.ironsource;

import android.content.Context;
import p005kotlin.NoWhenBranchMatchedException;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class D4 implements A7 {

    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[EnumC3947z4.values().length];
            try {
                iArr[EnumC3947z4.IADS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EnumC3947z4.UADS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[EnumC3947z4.SHARED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[EnumC3947z4.NONE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = iArr;
        }
    }

    @Override // com.ironsource.A7
    public F4 a(Context context, EnumC3947z4 source) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(source, "source");
        int i = a.a[source.ordinal()];
        if (i == 1) {
            return new C4(context, "supersonic_shared_preferen");
        }
        if (i == 2) {
            return new C4(context, "unityads-installinfo");
        }
        if (i == 3) {
            return new C4(context, E4.c);
        }
        if (i == 4) {
            return null;
        }
        throw new NoWhenBranchMatchedException();
    }
}
