package com.applovin.impl;

import android.text.SpannedString;

/* JADX INFO: loaded from: classes2.dex */
public class a5 extends v2 {
    public a5(String str) {
        super(v2.c.SECTION);
        this.c = new SpannedString(str);
    }

    public String toString() {
        return "SectionListItemViewModel{text=" + ((Object) this.c) + "}";
    }
}
