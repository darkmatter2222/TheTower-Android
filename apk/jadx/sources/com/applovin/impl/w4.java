package com.applovin.impl;

import android.content.Context;
import android.text.SpannedString;

/* JADX INFO: loaded from: classes2.dex */
public class w4 extends v2 {
    private final q0.a n;
    private final Context o;
    private final boolean p;

    public w4(q0.a aVar, boolean z, Context context) {
        super(v2.c.RIGHT_DETAIL);
        this.n = aVar;
        this.o = context;
        this.c = new SpannedString(aVar.a());
        this.p = z;
    }

    @Override // com.applovin.impl.v2
    public SpannedString f() {
        return new SpannedString(this.n.a(this.o));
    }

    @Override // com.applovin.impl.v2
    public boolean o() {
        return false;
    }

    @Override // com.applovin.impl.v2
    public boolean p() {
        Boolean boolB = this.n.b(this.o);
        if (boolB != null) {
            return boolB.equals(Boolean.valueOf(this.p));
        }
        return false;
    }
}
