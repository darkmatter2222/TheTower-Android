package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class Uc {
    public static final AtomicLong A07 = new AtomicLong();
    public final long A00;
    public final long A01;
    public final long A02;
    public final long A03;
    public final Uri A04;
    public final NX A05;
    public final Map<String, List<String>> A06;

    public Uc(long j, NX nx, long j2) {
        this(j, nx, nx != null ? nx.A06 : null, Collections.emptyMap(), j2, 0L, 0L);
    }

    public Uc(long j, NX nx, Uri uri, Map<String, List<String>> map, long j2, long j3, long j4) {
        this.A03 = j;
        this.A05 = nx;
        this.A04 = uri;
        this.A06 = map;
        this.A01 = j2;
        this.A02 = j3;
        this.A00 = j4;
    }

    public static long A00() {
        return A07.getAndIncrement();
    }
}
