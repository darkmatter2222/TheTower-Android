package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.mediation.LevelPlay;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import p005kotlin.Unit;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class Cd implements Dd {
    private final LevelPlay.AdFormat a;
    private final Bd b;
    private final D7 c;
    private a d;
    private List<InterfaceC3956zd> e;
    private final int f;

    private enum a {
        None,
        Idle,
        Loading;

        private static final /* synthetic */ EnumEntries e = EnumEntriesKt.enumEntries(a());

        public static EnumEntries<a> b() {
            return e;
        }
    }

    public /* synthetic */ class b {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[LevelPlay.AdFormat.values().length];
            try {
                iArr[LevelPlay.AdFormat.INTERSTITIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LevelPlay.AdFormat.REWARDED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public Cd(LevelPlay.AdFormat adFormat, Bd adUnitsFactory, D7 epService) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Intrinsics.checkNotNullParameter(adUnitsFactory, "adUnitsFactory");
        Intrinsics.checkNotNullParameter(epService, "epService");
        this.a = adFormat;
        this.b = adUnitsFactory;
        this.c = epService;
        this.d = a.None;
        this.e = new ArrayList();
        this.f = b();
    }

    public /* synthetic */ Cd(LevelPlay.AdFormat adFormat, Bd bd, D7 d7, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(adFormat, (i & 2) != 0 ? new Ad(adFormat) : bd, (i & 4) != 0 ? Pb.w.d().h() : d7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a(InterfaceC3956zd interfaceC3956zd, Cd cd, boolean z) {
        if (!z) {
            IronLog.INTERNAL.verbose("adunit \"" + interfaceC3956zd.b() + "\" failed to load, removing");
            cd.e.remove(interfaceC3956zd);
        }
        cd.d();
        return Unit.INSTANCE;
    }

    private final boolean a() {
        int i;
        List<InterfaceC3956zd> list = this.e;
        if ((list instanceof Collection) && list.isEmpty()) {
            i = 0;
        } else {
            Iterator<T> it = list.iterator();
            i = 0;
            while (it.hasNext()) {
                if (!((InterfaceC3956zd) it.next()).a() && (i = i + 1) < 0) {
                    CollectionsKt.throwCountOverflow();
                }
            }
        }
        return i < this.f;
    }

    private final int b() {
        int i = b.a[this.a.ordinal()];
        if (i == 1) {
            return this.c.j();
        }
        if (i != 2) {
            return 0;
        }
        return this.c.A();
    }

    private final InterfaceC3956zd b(String str) {
        Object next;
        Iterator<T> it = this.e.iterator();
        while (it.hasNext()) {
            next = it.next();
            if (Intrinsics.areEqual(((InterfaceC3956zd) next).b(), str)) {
                return (InterfaceC3956zd) next;
            }
        }
        next = null;
        return (InterfaceC3956zd) next;
    }

    private final int c() {
        int i = b.a[this.a.ordinal()];
        if (i == 1) {
            return this.c.M();
        }
        if (i != 2) {
            return 0;
        }
        return this.c.C();
    }

    private final void d() {
        final InterfaceC3956zd interfaceC3956zdE = e();
        if (interfaceC3956zdE == null) {
            this.d = a.Idle;
        } else {
            this.d = a.Loading;
            interfaceC3956zdE.a(new Function1() { // from class: com.ironsource.Cd$$ExternalSyntheticLambda0
                @Override // p005kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Cd.a(interfaceC3956zdE, this, ((Boolean) obj).booleanValue());
                }
            });
        }
    }

    private final InterfaceC3956zd e() {
        Object next;
        if (!a()) {
            IronLog.INTERNAL.verbose(this.a + " - reached capacity");
            return null;
        }
        Iterator<T> it = this.e.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((InterfaceC3956zd) next).a());
        InterfaceC3956zd interfaceC3956zd = (InterfaceC3956zd) next;
        if (interfaceC3956zd != null) {
            return interfaceC3956zd;
        }
        IronLog.INTERNAL.verbose(this.a + " - preload done");
        return null;
    }

    @Override // com.ironsource.Dd
    public C3710m6 a(String adUnitId) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        IronLog.INTERNAL.verbose(this.a + " - adunit: \"" + adUnitId + "\"");
        InterfaceC3956zd interfaceC3956zdB = b(adUnitId);
        if (interfaceC3956zdB != null) {
            return interfaceC3956zdB.c();
        }
        return null;
    }

    @Override // com.ironsource.Dd
    public void a(C3456ab config) {
        Intrinsics.checkNotNullParameter(config, "config");
        if (!this.c.z()) {
            IronLog.INTERNAL.warning(this.a + " - preload is disabled");
            return;
        }
        if (this.d != a.None) {
            IronLog.INTERNAL.warning(this.a + " - initializing service again");
            return;
        }
        int iC = c();
        if (iC < 1) {
            IronLog.INTERNAL.warning(this.a + " - invalid maxParallelLoad: " + iC);
        } else {
            IronLog.INTERNAL.verbose(String.valueOf(this.a));
            this.d = a.Idle;
            this.e = CollectionsKt.toMutableList((Collection) this.b.a(config.c(this.a), iC, config));
            d();
        }
    }

    @Override // com.ironsource.Dd
    public void a(String adUnitId, boolean z) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(this.a + " - adunit: \"" + adUnitId + "\", didUseInstance: " + z);
        InterfaceC3956zd interfaceC3956zdB = b(adUnitId);
        if (interfaceC3956zdB == null) {
            ironLog.warning("adunit is null at \"" + adUnitId + "\"");
            return;
        }
        interfaceC3956zdB.a(z);
        if (z && this.d == a.Idle) {
            d();
        }
    }
}
