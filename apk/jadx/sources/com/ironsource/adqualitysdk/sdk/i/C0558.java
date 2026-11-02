package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒑ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0558 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final /* synthetic */ C0392 f2294;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ C0575 f2295;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ List f2296;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ String f2297;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ Context f2298;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f2299;

    public C0558(C0392 c0392, String str, Context context, String str2, List list, C0575 c0575) {
        this.f2294 = c0392;
        this.f2299 = str;
        this.f2298 = context;
        this.f2297 = str2;
        this.f2296 = list;
        this.f2295 = c0575;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        AbstractC0250.m1997(StringFog.decrypt("utkxaYguh7SL+z5pjCqWqQ==\n", "+bZfB+1N89s=\n"), StringFog.decrypt("+jDcETeLn5nJN9sCfomcnt071hExmNM=\n", "s161ZV7q8/A=\n") + this.f2299);
        try {
            C0392 c0392 = this.f2294;
            Context context = this.f2298;
            String str = this.f2297;
            String str2 = this.f2299;
            List list = this.f2296;
            C0575 c0575 = this.f2295;
            c0392.getClass();
            C0543 c0543 = new C0543(new AtomicBoolean(false), c0575);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                c0392.m2080(context, str, str2, (AbstractC0316) it.next(), c0543);
            }
        } catch (Throwable th) {
            C0303 c0303 = this.f2294.f1899;
            if (c0303 != null) {
                AbstractC0340.m2053(new C0345(c0303, this.f2299, EnumC0375.f1829));
            }
            HashMap mapM2066 = C0392.m2066(this.f2294);
            String str3 = this.f2297;
            Throwable cause = th;
            while (cause.getCause() != null) {
                cause = cause.getCause();
            }
            mapM2066.put(str3, cause.toString());
            AbstractC1071.m2436(StringFog.decrypt("DwgQA1AwsKM+Kh8DVDShvg==\n", "TGd+bTVTxMw=\n"), StringFog.decrypt("U5Z6UAepyN1zhXxWG+6LzHmKZloW/cTdNg==\n", "FuQIP3WJq68=\n") + this.f2299, th, true, true, false);
        }
    }
}
