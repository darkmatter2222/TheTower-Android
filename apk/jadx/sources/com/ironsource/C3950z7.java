package com.ironsource;

import java.util.UUID;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.z7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3950z7 {
    public static final C3950z7 a = new C3950z7();

    private C3950z7() {
    }

    public final UUID a() {
        UUID uuidRandomUUID = UUID.randomUUID();
        Intrinsics.checkNotNullExpressionValue(uuidRandomUUID, "randomUUID(...)");
        return uuidRandomUUID;
    }
}
