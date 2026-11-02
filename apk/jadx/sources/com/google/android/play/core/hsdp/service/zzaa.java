package com.google.android.play.core.hsdp.service;

import android.os.Bundle;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.play:hsdp@@2.0.1 */
/* JADX INFO: loaded from: classes3.dex */
final class zzaa extends zzag {
    final /* synthetic */ HsdpDeepLinkService.HsdpPrewarmListener zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzaa(zzai zzaiVar, HsdpDeepLinkService.HsdpPrewarmListener hsdpPrewarmListener) {
        super(zzaiVar, null);
        this.zza = hsdpPrewarmListener;
        Objects.requireNonNull(zzaiVar);
    }

    @Override // com.google.android.play.core.hsdp.service.zzag
    final void zzd() {
        this.zza.onCompleted(new Bundle());
    }

    @Override // com.google.android.play.core.hsdp.service.zzag
    final void zze(int i, String str) {
        Bundle bundle = new Bundle();
        bundle.putInt("errorCode", i);
        bundle.putString("errorMessage", str);
        this.zza.onError(bundle);
    }
}
