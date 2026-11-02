package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ȉ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0159 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final ArrayList f894;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String f895;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Class f896;

    public C0159(Object obj, String str, ArrayList arrayList) {
        if (obj instanceof Class) {
            this.f896 = (Class) obj;
        } else {
            this.f896 = obj.getClass();
        }
        this.f895 = str;
        this.f894 = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0159.class != obj.getClass()) {
            return false;
        }
        C0159 c0159 = (C0159) obj;
        if (this.f896.equals(c0159.f896) && this.f895.equals(c0159.f895)) {
            return this.f894.equals(c0159.f894);
        }
        return false;
    }

    public final int hashCode() {
        return this.f894.hashCode() + ((this.f895.hashCode() + (this.f896.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(StringFog.decrypt("2Sx031NYWxLyIG7eSFVwGe8=\n", "lEkAtzw8H3c=\n"));
        sb.append(StringFog.decrypt("BjLT/PMTmZ0HHMLlqw==\n", "a32xlpZw7d4=\n")).append(this.f896);
        sb.append(StringFog.decrypt("9EMEHipZNJC8LQg+KhB7\n", "2GNpU08tXP8=\n")).append(this.f895).append('\'');
        sb.append(StringFog.decrypt("90Q44V67EU26FybFX+E=\n", "22RVoCzcUiE=\n")).append(this.f894);
        sb.append(AbstractJsonLexerKt.END_OBJ);
        return sb.toString();
    }
}
