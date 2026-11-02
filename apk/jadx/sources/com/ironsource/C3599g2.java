package com.ironsource;

import java.util.Iterator;
import java.util.List;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.g2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3599g2 implements InterfaceC3617h2 {
    private final C3898w9 a;
    private final com.ironsource.mediationsdk.d b;
    private final C3742o2 c;

    public C3599g2(C3898w9 instanceInfo, com.ironsource.mediationsdk.d auctionDataUtils, C3742o2 c3742o2) {
        Intrinsics.checkNotNullParameter(instanceInfo, "instanceInfo");
        Intrinsics.checkNotNullParameter(auctionDataUtils, "auctionDataUtils");
        this.a = instanceInfo;
        this.b = auctionDataUtils;
        this.c = c3742o2;
    }

    private final void a(List<String> list, String str) {
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            this.b.a(str, this.a.e(), com.ironsource.mediationsdk.d.b().a(it.next(), this.a.e(), this.a.f(), this.a.d(), "", "", "", ""));
        }
    }

    @Override // com.ironsource.InterfaceC3617h2
    public void a(String methodName) {
        List<String> listEmptyList;
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        C3742o2 c3742o2 = this.c;
        if (c3742o2 == null || (listEmptyList = c3742o2.b()) == null) {
            listEmptyList = CollectionsKt.emptyList();
        }
        a(listEmptyList, methodName);
    }

    @Override // com.ironsource.InterfaceC3617h2
    public void b(String methodName) {
        List<String> listEmptyList;
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        C3742o2 c3742o2 = this.c;
        if (c3742o2 == null || (listEmptyList = c3742o2.a()) == null) {
            listEmptyList = CollectionsKt.emptyList();
        }
        a(listEmptyList, methodName);
    }

    @Override // com.ironsource.InterfaceC3617h2
    public void c(String methodName) {
        List<String> listEmptyList;
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        C3742o2 c3742o2 = this.c;
        if (c3742o2 == null || (listEmptyList = c3742o2.c()) == null) {
            listEmptyList = CollectionsKt.emptyList();
        }
        a(listEmptyList, methodName);
    }
}
