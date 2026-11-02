package com.google.android.recaptcha.internal;

import kotlinx.coroutines.CoroutineScope;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* JADX INFO: loaded from: classes3.dex */
final class zzin extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzja zzb;
    final /* synthetic */ String zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzin(zzja zzjaVar, String str, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzjaVar;
        this.zzc = str;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzin(this.zzb, this.zzc, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzin) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002f, code lost:
    
        if (r4.zzb.zzF(r4.zzc, r4) == r0) goto L13;
     */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        /*
            r4 = this;
            java.lang.Object r0 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r4.zza
            r2 = 1
            p005kotlin.ResultKt.throwOnFailure(r5)
            if (r1 == 0) goto Lf
            if (r1 == r2) goto L1c
            goto L32
        Lf:
            com.google.android.recaptcha.internal.zzja r5 = r4.zzb
            r1 = r4
            kotlin.coroutines.Continuation r1 = (p005kotlin.coroutines.Continuation) r1
            r4.zza = r2
            java.lang.Object r5 = r5.zzw(r1)
            if (r5 == r0) goto L35
        L1c:
            android.webkit.WebView r5 = (android.webkit.WebView) r5
            r5.clearCache(r2)
            com.google.android.recaptcha.internal.zzja r5 = r4.zzb
            java.lang.String r1 = r4.zzc
            r2 = r4
            kotlin.coroutines.Continuation r2 = (p005kotlin.coroutines.Continuation) r2
            r3 = 2
            r4.zza = r3
            java.lang.Object r5 = com.google.android.recaptcha.internal.zzja.zzu(r5, r1, r2)
            if (r5 != r0) goto L32
            goto L35
        L32:
            kotlin.Unit r5 = p005kotlin.Unit.INSTANCE
            return r5
        L35:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzin.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
