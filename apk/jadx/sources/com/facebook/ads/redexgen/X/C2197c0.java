package com.facebook.ads.redexgen.X;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.c0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2197c0 {
    public float A00;
    public EnumC2298dd A01;
    public Map<String, String> A02;

    public C2197c0(EnumC2298dd enumC2298dd) {
        this(enumC2298dd, 0.0f);
    }

    public C2197c0(EnumC2298dd enumC2298dd, float f) {
        this(enumC2298dd, f, null);
    }

    public C2197c0(@Nullable EnumC2298dd enumC2298dd, float f, Map<String, String> map) {
        this.A01 = enumC2298dd;
        this.A00 = f;
        if (map != null) {
            this.A02 = map;
        } else {
            this.A02 = new HashMap();
        }
    }

    public final float A00() {
        return this.A00;
    }

    public final int A01() {
        return this.A01.A03();
    }

    public final EnumC2298dd A02() {
        return this.A01;
    }

    public final Map<String, String> A03() {
        return this.A02;
    }

    public final boolean A04() {
        return this.A01 == EnumC2298dd.A0J;
    }
}
