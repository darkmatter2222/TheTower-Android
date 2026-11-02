package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.content.Intent;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ί, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0836 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0835 f3100;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ Context f3101;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Intent f3102;

    public C0836(C0835 c0835, Intent intent, Context context) {
        this.f3100 = c0835;
        this.f3102 = intent;
        this.f3101 = context;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        try {
            if (this.f3102.getAction().equals(StringFog.decrypt("IECSRWrqFakvS4IZZuwf6W9tuXlLxjLTCHi/Y1zcMs8AYLFy\n", "QS72NwWDcYc=\n"))) {
                String str = C0835.f3096;
                AbstractC0250.m1997(str, StringFog.decrypt("JXgMJrZPpvkIchY/vF65sB10DCj5XqW4BXod\n", "ax14Udk9zdk=\n"));
                if (this.f3102.getBooleanExtra(StringFog.decrypt("0YhTxv7RU/nLjmbA5MY=\n", "v+cQqZC/Npo=\n"), false)) {
                    AbstractC0250.m1997(str, StringFog.decrypt("tDdvCtkVtI+OMCoW2UawwJI0KhvTXKnKgytjDtVGvg==\n", "4F8KeLwyx68=\n"));
                    AbstractC0340.m2053(new C0852(this));
                } else if (C0835.m2286(this.f3100, this.f3101)) {
                    AbstractC0340.m2053(new C0839(this));
                } else {
                    AbstractC0340.m2053(new C0838(this));
                }
            }
        } catch (Exception e) {
            AbstractC1071.m2435(C0835.f3096, StringFog.decrypt("ggYorb3V7bTnGzSQqpbhs7ER\n", "x3Raws/1hNo=\n"), (Throwable) e, false);
        }
    }
}
