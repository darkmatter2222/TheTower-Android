package com.ironsource;

import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.k4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3672k4 implements InterfaceC3932y7 {
    private final String a;
    private final String b;
    private final boolean c;
    private final C3646id d;

    public C3672k4() {
        this(null, null, false, null, 15, null);
    }

    public C3672k4(String controllerUrl, String cacheFolder, boolean z, C3646id rootFolder) {
        Intrinsics.checkNotNullParameter(controllerUrl, "controllerUrl");
        Intrinsics.checkNotNullParameter(cacheFolder, "cacheFolder");
        Intrinsics.checkNotNullParameter(rootFolder, "rootFolder");
        this.a = controllerUrl;
        this.b = cacheFolder;
        this.c = z;
        this.d = rootFolder;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ C3672k4(String str, String str2, boolean z, C3646id c3646id, int i, DefaultConstructorMarker defaultConstructorMarker) {
        str = (i & 1) != 0 ? "" : str;
        this(str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? false : z, (i & 8) != 0 ? new C3646id(str) : c3646id);
    }

    @Override // com.ironsource.InterfaceC3932y7
    public String a() {
        return this.a;
    }

    @Override // com.ironsource.InterfaceC3932y7
    public boolean b() {
        return this.c;
    }

    @Override // com.ironsource.InterfaceC3932y7
    public C3646id c() {
        return this.d;
    }

    @Override // com.ironsource.InterfaceC3932y7
    public String d() {
        return this.b;
    }
}
