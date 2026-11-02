package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import com.ironsource.adqualitysdk.sdk.IronSourceAdQuality;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ډ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0398 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0386 f1918;

    public C0398(C0386 c0386) {
        this.f1918 = c0386;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        C0386 c0386 = this.f1918;
        if (c0386.f1884) {
            C0392 c0392 = c0386.f1879.f1357;
            Context context = c0386.f1883;
            C0411 c0411 = new C0411(this);
            synchronized (c0392) {
                if (c0392.f1908.get()) {
                    return;
                }
                C0533.f2218 = AbstractC0953.m2334().mo2342();
                AbstractC0795.f2978 = AbstractC0953.m2334().mo2343();
                if (c0392.f1907) {
                    AbstractC0340.m2053(new C0445(c0411));
                } else {
                    String strDecrypt = StringFog.decrypt("lC2SqqFiYbCsGoeU\n", "1UnD38AOCMQ=\n");
                    AbstractC0250.m2000(strDecrypt, strDecrypt, StringFog.decrypt("VyNushSJW65XI26yFIlW6ghhLcxW0QTgHy4C+2jRF+8Tejq/\n", "eg5DnzmkdoM=\n") + IronSourceAdQuality.getSDKVersion() + StringFog.decrypt("YMiHeMSLJlxtyId4xIsm\n", "QOWqVemmC3E=\n"), true);
                    AbstractC0340.m2053(new C0458(c0392, context));
                    C0449 c0449 = new C0449(c0392, c0411, context);
                    if (c0392.m2075()) {
                        String str = AbstractC0924.f3316;
                        ArrayList arrayList = new ArrayList(Arrays.asList(new C0131(), new C0144(), new C0169()));
                        ArrayList arrayList2 = new ArrayList(AbstractC0924.f3315);
                        if (!arrayList.isEmpty()) {
                            AbstractC0340.m2053(new C0423(c0392, (String) arrayList2.remove(0), context, (AbstractC0316) arrayList.remove(0), arrayList.isEmpty() ? c0449 : new C0438(c0392, context, arrayList, arrayList2, c0449)));
                        }
                    } else {
                        AbstractC0340.m2053(new C0423(c0392, AbstractC0924.f3316, context, new C0136(), c0449));
                    }
                    c0392.f1907 = true;
                }
            }
        }
    }
}
