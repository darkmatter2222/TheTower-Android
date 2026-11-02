package com.ironsource;

import android.content.Context;
import com.ironsource.environment.ContextProvider;
import p005kotlin.NoWhenBranchMatchedException;
import p005kotlin.Result;
import p005kotlin.Unit;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class J3 implements InterfaceC3842t7, InterfaceC3842t7.a {
    private final C3574ed a;
    private final C3904wf b;

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

    public J3() {
        this(null, null, null, 7, null);
    }

    public J3(InterfaceC3839t4 currentTimeProvider, N7 pacingDataRepository, U8 showCountDataRepository) {
        Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
        Intrinsics.checkNotNullParameter(pacingDataRepository, "pacingDataRepository");
        Intrinsics.checkNotNullParameter(showCountDataRepository, "showCountDataRepository");
        this.a = new C3574ed(currentTimeProvider, pacingDataRepository);
        this.b = new C3904wf(currentTimeProvider, showCountDataRepository);
    }

    public /* synthetic */ J3(InterfaceC3839t4 interfaceC3839t4, N7 n7, U8 u8, int i, DefaultConstructorMarker defaultConstructorMarker) {
        interfaceC3839t4 = (i & 1) != 0 ? new InterfaceC3839t4.a() : interfaceC3839t4;
        if ((i & 2) != 0) {
            Context applicationContext = ContextProvider.getInstance().getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            n7 = new C3592fd(new C3795qf(applicationContext, "pacing_service", null, 4, null));
        }
        if ((i & 4) != 0) {
            Context applicationContext2 = ContextProvider.getInstance().getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext2, "getApplicationContext(...)");
            u8 = new C3868uf(new C3795qf(applicationContext2, "capping_service", null, 4, null));
        }
        this(interfaceC3839t4, n7, u8);
    }

    @Override // com.ironsource.InterfaceC3842t7
    public synchronized L3 a(String identifier) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        L3 l3A = this.a.a(identifier);
        if (l3A.d()) {
            return l3A;
        }
        return this.b.a(identifier);
    }

    @Override // com.ironsource.InterfaceC3842t7.a
    public synchronized Object a(String identifier, N3 cappingType, InterfaceC3804r7 cappingConfig) {
        Object objA;
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Intrinsics.checkNotNullParameter(cappingType, "cappingType");
        Intrinsics.checkNotNullParameter(cappingConfig, "cappingConfig");
        int i = a.a[cappingType.ordinal()];
        if (i == 1) {
            objA = this.a.a(identifier, cappingType, cappingConfig);
        } else if (i == 2) {
            objA = this.b.a(identifier, cappingType, cappingConfig);
        } else {
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            Result.Companion companion = Result.INSTANCE;
            objA = Result.m3022constructorimpl(Unit.INSTANCE);
        }
        return objA;
    }

    @Override // com.ironsource.InterfaceC3842t7.a
    public synchronized void b(String identifier) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        this.a.b(identifier);
        this.b.b(identifier);
    }
}
