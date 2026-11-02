package com.google.android.recaptcha.internal;

import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzez extends Lambda implements Function0 {
    public static final zzez zza = new zzez();

    public zzez() {
        super(0);
    }

    @Override // p005kotlin.jvm.functions.Function0
    public final Object invoke() throws zzbd {
        int i = zzav.zza;
        Object objZzb = zzau.zza().zzb("com.google.android.recaptcha.internal.zzex".hashCode());
        if (objZzb != null) {
            return (zzex) objZzb;
        }
        throw new zzbd(zzbb.zzb, zzba.zzax, null);
    }
}
