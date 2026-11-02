package com.ironsource;

import java.util.concurrent.ConcurrentHashMap;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.fd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3592fd implements N7 {
    private final G3 a;
    private ConcurrentHashMap<String, Long> b;

    public C3592fd(G3 storage) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        this.a = storage;
        this.b = new ConcurrentHashMap<>();
    }

    @Override // com.ironsource.N7
    public Long a(String identifier) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Long l = this.b.get(identifier);
        if (l != null) {
            return Long.valueOf(l.longValue());
        }
        Long lB = this.a.b(identifier);
        if (lB == null) {
            return null;
        }
        long jLongValue = lB.longValue();
        this.b.put(identifier, Long.valueOf(jLongValue));
        return Long.valueOf(jLongValue);
    }

    @Override // com.ironsource.N7
    public void a(long j, String identifier) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        this.b.put(identifier, Long.valueOf(j));
        this.a.a(identifier, j);
    }
}
