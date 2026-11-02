package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ܚ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0433 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0423 f1983;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f1984;

    public C0433(C0423 c0423, String str) {
        this.f1983 = c0423;
        this.f1984 = str;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        if (this.f1983.f1961.f1908.get()) {
            return;
        }
        AbstractC0250.m1997(StringFog.decrypt("KO+GDiExCTAZzYkOJTUYLQ==\n", "a4DoYERSfV8=\n"), StringFog.decrypt("eXXmTVm9L7xKcuFeEL8su15+7E1frmM=\n", "MBuPOTDcQ9U=\n") + this.f1984);
        try {
            C0423 c0423 = this.f1983;
            c0423.f1961.m2080(c0423.f1964, c0423.f1965, this.f1984, c0423.f1963, c0423.f1962);
        } catch (Throwable th) {
            C0303 c0303 = this.f1983.f1961.f1899;
            if (c0303 != null) {
                AbstractC0340.m2053(new C0345(c0303, this.f1984, EnumC0375.f1829));
            }
            HashMap mapM2066 = C0392.m2066(this.f1983.f1961);
            String str = this.f1983.f1965;
            Throwable cause = th;
            while (cause.getCause() != null) {
                cause = cause.getCause();
            }
            mapM2066.put(str, cause.toString());
            AbstractC1071.m2436(StringFog.decrypt("8ODlDhhlsi3BwuoOHGGjMA==\n", "s4+LYH0GxkI=\n"), StringFog.decrypt("6VtnAV8yZkrJSGEHQ3UlW8NHewtOZmpKjA==\n", "rCkVbi0SBTg=\n") + this.f1984, th, true, true, true);
        }
    }
}
