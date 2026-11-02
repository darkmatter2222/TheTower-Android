package com.applovin.impl;

import android.text.TextUtils;
import com.applovin.mediation.MaxAdFormat;

/* JADX INFO: loaded from: classes2.dex */
public class x3 {
    private a a;
    private String b;

    public enum a {
        AD_UNIT_ID,
        AD_FORMAT,
        AD
    }

    protected x3(a aVar, String str) {
        this.a = aVar;
        this.b = str;
    }

    public static x3 a(c3 c3Var) {
        String strT = c3Var.T();
        MaxAdFormat format = c3Var.getFormat();
        if (TextUtils.isEmpty(strT) || format == null) {
            return null;
        }
        return new u3(new n3(strT, format));
    }

    public static x3 a(MaxAdFormat maxAdFormat) {
        String label = maxAdFormat.getLabel();
        if (TextUtils.isEmpty(label)) {
            return null;
        }
        return new x3(a.AD_FORMAT, label);
    }

    public static x3 a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return new x3(a.AD_UNIT_ID, str);
    }

    public a a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }
}
