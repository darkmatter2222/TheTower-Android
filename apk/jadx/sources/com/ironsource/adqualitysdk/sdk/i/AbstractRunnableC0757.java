package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵕ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractRunnableC0757 implements Runnable {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final String f2786 = StringFog.decrypt("3C9n9nW4hRfmA1X1f7g=\n", "iG00lxPd12I=\n");

    @Override // java.lang.Runnable
    public final void run() {
        try {
            mo1856();
        } catch (Throwable th) {
            try {
                mo2130(th);
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: renamed from: ﾒ */
    public abstract void mo1856();

    /* JADX INFO: renamed from: ﾒ */
    public void mo2130(Throwable th) {
        String str = f2786;
        try {
            AbstractC1071.m2434(str, StringFog.decrypt("Chosgao2NkxvCzKPq2V/\n", "T2he7tgWXyI=\n") + getClass().getName(), AbstractC0897.m2299("Ww==\n", "ci4owSjkFIc=\n", new StringBuilder().append(StringFog.decrypt("5bwoQRUv\n", "ptBJMmYHSDg=\n")).append(getClass().getName())), th, null, null, false, false, false);
        } catch (Throwable unused) {
        }
        AbstractC0250.m1990(str, StringFog.decrypt("CqZiwBs8GiNvt3zOGm9T\n", "T9QQr2kcc00=\n") + getClass().getName());
        AbstractC0250.m1999(str, str, StringFog.decrypt("a44ouomts0A=\n", "L+tc2+DBwHo=\n"), th, null, false);
    }
}
