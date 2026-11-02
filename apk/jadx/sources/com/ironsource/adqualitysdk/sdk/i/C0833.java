package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.Iterator;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ἷ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0833 implements InterfaceC0455 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0832 f3094;

    public C0833(C0832 c0832) {
        this.f3094 = c0832;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0455
    /* JADX INFO: renamed from: ﾒ */
    public final void mo2104(C0639 c0639) {
        C0661 c0661 = c0639.f2517;
        int i = c0661.f2541;
        String str = c0661.f2540;
        if (i < 200 || i > 299) {
            if (i == 403) {
                synchronized (this.f3094.f3090) {
                    Iterator it = this.f3094.f3090.f2629.iterator();
                    while (it.hasNext()) {
                        AbstractC0340.m2053(new C0875((C0500) it.next()));
                    }
                }
            } else {
                AbstractC0250.m1997(StringFog.decrypt("+koPR1+WjEPI\n", "uyRuKybi5SA=\n"), StringFog.decrypt("mvion8N7i8Out7Kf2WfC2rv4q52XZIvZobe2n9l3p9us+bHUl1SN2enloInHfIzerK3l\n", "yZfF+rcT4q0=\n") + i + " " + str);
            }
            AbstractC0340.m2053(new C0864(this, c0639, i, str));
            return;
        }
        String strDecrypt = StringFog.decrypt("y5rV4NsQgF75\n", "ivS0jKJk6T0=\n");
        AbstractC0250.m1998(strDecrypt, strDecrypt, StringFog.decrypt("/limEjQkO6HaVLdBJiQ6scpHvVwmYWiy1kXyQTBqLJHPUrxGdA==\n", "uTfSMlUESNQ=\n"), this.f3094.f3093, true);
        for (C0687 c0687 : this.f3094.f3092) {
            C0999 c0999 = this.f3094.f3090.f2635;
            C1068 c1068 = c0687.f2614;
            c0999.getClass();
            C0841.m2289().post(new C1003(c0999, c1068));
        }
        AbstractC0340.m2053(new C0869(this, c0639));
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0455
    /* JADX INFO: renamed from: ﾒ */
    public final void mo2105(C0639 c0639, String str) {
        AbstractC0340.m2053(new C0861(this, c0639, str));
    }
}
