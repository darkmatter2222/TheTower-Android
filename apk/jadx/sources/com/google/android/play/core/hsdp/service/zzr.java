package com.google.android.play.core.hsdp.service;

import android.os.IBinder;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.play:hsdp@@2.0.1 */
/* JADX INFO: loaded from: classes3.dex */
interface zzr {
    void zza();

    void zzb(String str);

    void zzc(String str);

    void zzd(List list, HsdpDeepLinkService.HsdpPrewarmListener hsdpPrewarmListener);

    void zze(String str, String str2, IBinder iBinder, int i, int i2, boolean z, HsdpDeepLinkService.HsdpDeepLinkServiceListener hsdpDeepLinkServiceListener);

    boolean zzf();

    boolean zzg(String str);
}
