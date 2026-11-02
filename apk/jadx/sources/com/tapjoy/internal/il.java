package com.tapjoy.internal;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes5.dex */
public final class il {
    public float a;
    public int b;

    public static il a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            il ilVar = new il();
            int length = str.length() - 1;
            char cCharAt = str.charAt(length);
            if (cCharAt == 'w') {
                ilVar.a = Float.valueOf(str.substring(0, length)).floatValue();
                ilVar.b = 1;
                return ilVar;
            }
            if (cCharAt == 'h') {
                ilVar.a = Float.valueOf(str.substring(0, length)).floatValue();
                ilVar.b = 2;
                return ilVar;
            }
            ilVar.a = Float.valueOf(str).floatValue();
            ilVar.b = 0;
            return ilVar;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public final float a(float f, float f2) {
        int i = this.b;
        if (i == 1) {
            return (this.a * f) / 100.0f;
        }
        return i == 2 ? (this.a * f2) / 100.0f : this.a;
    }
}
