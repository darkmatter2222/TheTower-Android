package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ךּ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0928 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0886 f3324;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f3325;

    public C0928(C0886 c0886, String str) {
        this.f3324 = c0886;
        this.f3325 = str;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        C0412 c0412 = this.f3324.f3167;
        boolean zIsEmpty = TextUtils.isEmpty(this.f3325);
        if (zIsEmpty) {
            C0841 c0841 = c0412.f1942.f1941.f1918.f1879.f1353;
            String strDecrypt = StringFog.decrypt("hqwwGC6Tz7qTtAIaZZs=\n", "4MBRfwD1psg=\n");
            String strDecrypt2 = StringFog.decrypt("/fAYIWE=\n", "m5F0UgTP5BI=\n");
            c0841.getClass();
            C0841.m2289().post(new C0870(c0841, strDecrypt, strDecrypt2));
        }
        AbstractC0340.m2054(new C0425(c0412, zIsEmpty));
    }
}
