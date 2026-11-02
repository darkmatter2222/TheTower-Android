package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ڐ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0405 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0197 f1927;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0116 f1928;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ boolean f1929;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ String f1930;

    public C0405(C0197 c0197, String str, boolean z, C0116 c0116) {
        this.f1927 = c0197;
        this.f1930 = str;
        this.f1929 = z;
        this.f1928 = c0116;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2085(Object obj, Method method, Object[] objArr) {
        if (method != null) {
            try {
                String str = this.f1930 + StringFog.decrypt("Dg==\n", "IO9Te7m1vM0=\n") + method.getName();
                ArrayList arrayListM1964 = C0197.m1964(this.f1927, objArr != null ? Arrays.asList(objArr) : new ArrayList(), new Object[]{(InterfaceC0513) obj});
                ArrayList arrayList = new ArrayList();
                if (this.f1929) {
                    arrayList.add(arrayListM1964);
                    arrayListM1964 = arrayList;
                }
                C0943 c0943 = this.f1928.f651;
                C0116.m1900(c0943.f3360, str, true, false, arrayListM1964);
                C0116 c0116 = c0943.f3360;
                C1001 c1001 = new C1001(c0943, str, false, arrayListM1964);
                c0116.getClass();
                try {
                    AbstractC0340.m2057(c1001);
                } catch (Throwable unused) {
                }
                C0116 c0117 = c0943.f3360;
                C1001 c1002 = new C1001(c0943, str, true, arrayListM1964);
                c0117.getClass();
                try {
                    AbstractC0340.m2055(new C0700(c1002));
                } catch (Throwable unused2) {
                }
            } catch (Throwable th) {
                AbstractC1071.m2435(this.f1928.m1903(), AbstractC0897.m2299("BtGuOeE3ArpU\n", "Jr3HSpVSbN8=\n", new StringBuilder().append(StringFog.decrypt("zMYIeFJ5zkb/2xF+Tj6H\n", "ibR6FyBZpyg=\n")).append(method.getName()).append(StringFog.decrypt("7Y/dGEZQlL2ijJg=\n", "zeK4bC4/8J0=\n")).append(this.f1930)), th, false);
            }
        }
    }
}
