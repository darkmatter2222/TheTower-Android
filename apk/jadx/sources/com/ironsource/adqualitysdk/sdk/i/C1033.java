package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﻧ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1033 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final List f3648;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final boolean f3649;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final boolean f3650;

    public C1033(boolean z, boolean z2, ArrayList arrayList) {
        this.f3650 = z;
        this.f3649 = z2;
        this.f3648 = Collections.unmodifiableList(new ArrayList(arrayList));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1033.class != obj.getClass()) {
            return false;
        }
        C1033 c1033 = (C1033) obj;
        if (this.f3650 == c1033.f3650 && this.f3649 == c1033.f3649) {
            return this.f3648.equals(c1033.f3648);
        }
        return false;
    }

    public final int hashCode() {
        return this.f3648.hashCode() + ((((this.f3650 ? 1 : 0) * 31) + (this.f3649 ? 1 : 0)) * 31);
    }

    public final String toString() {
        return StringFog.decrypt("FyHA/3qEZnQmOsbkULN3YjAi2/BXkkB+KjrK7wM=\n", "RU6viz7hEhE=\n") + this.f3650 + StringFog.decrypt("aZv4luwoV+Qkz/6XlA==\n", "RbuR5alFIog=\n") + this.f3649 + StringFog.decrypt("j8cGxOHycz7Q2g==\n", "o+d1rYacElI=\n") + this.f3648 + AbstractJsonLexerKt.END_OBJ;
    }
}
