package com.google.android.play.core.hsdp.service;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.tapjoy.TapjoyConstants;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.play:hsdp@@2.0.1 */
/* JADX INFO: loaded from: classes3.dex */
final class zzat implements HsdpDeepLinkService {
    final zzax zza;
    private final Context zzb;
    private final com.google.android.gms.internal.playcore_hsdp.zzg zzc;
    private final com.google.android.gms.internal.playcore_hsdp.zzg zzd;
    private final boolean zze;
    private final boolean zzf;
    private final boolean zzg;
    private Application.ActivityLifecycleCallbacks zzh;

    public zzat(Context context, com.google.android.gms.internal.playcore_hsdp.zzg zzgVar, com.google.android.gms.internal.playcore_hsdp.zzg zzgVar2, boolean z, boolean z2, boolean z3) {
        boolean z4 = false;
        if (z3 && (context instanceof Activity)) {
            z4 = true;
        }
        zzax zzaxVar = context instanceof Activity ? new zzax((Activity) context) : null;
        this.zzh = null;
        this.zzb = context;
        this.zzc = zzgVar;
        this.zzd = zzgVar2;
        this.zze = z;
        this.zzf = z2;
        this.zzg = z4;
        this.zza = zzaxVar;
    }

    private static void zzc(String str, HsdpDeepLinkService.HsdpDeepLinkServiceListener hsdpDeepLinkServiceListener, Map map, zze zzeVar, Activity activity) {
        zzeVar.zzb(str, zza.zzc(activity), zza.zzb(activity), hsdpDeepLinkServiceListener, map);
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService
    public final void detach() {
        try {
            try {
                if (this.zzf) {
                    ((zzr) this.zzd.zza()).zza();
                } else {
                    ((zze) this.zzc.zza()).zza();
                }
            } catch (RuntimeException e) {
                Log.w("HsdpDeepLinkServiceImpl", "Failed to detach HsdpDeepLinkService", e);
            }
        } finally {
            zza();
        }
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService
    public final void dismiss(String str) {
        ((zzr) this.zzd.zza()).zzb(str);
        zza();
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService
    public final void endSession(String str) {
        ((zzr) this.zzd.zza()).zzc(str);
        zza();
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService
    public final void open(String str, String str2, HsdpDeepLinkService.HsdpDeepLinkServiceListener hsdpDeepLinkServiceListener) throws PackageManager.NameNotFoundException {
        open(str, str2, hsdpDeepLinkServiceListener, null, false);
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService
    public final void open(String str, String str2, HsdpDeepLinkService.HsdpDeepLinkServiceListener hsdpDeepLinkServiceListener, Map<String, String> map) throws PackageManager.NameNotFoundException {
        open(str, str2, hsdpDeepLinkServiceListener, map, false);
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService
    public final void open(String str, String str2, HsdpDeepLinkService.HsdpDeepLinkServiceListener hsdpDeepLinkServiceListener, Map<String, String> map, boolean z) throws PackageManager.NameNotFoundException {
        Context context = this.zzb;
        Intent intentZzb = zzq.zzb(str, str2, context.getPackageName(), map);
        if (!this.zzf) {
            Activity activity = (Activity) context;
            if (this.zza == null) {
                throw new IllegalStateException("hsdpLoadingPanel cannot be null when using activity-based HSDP.");
            }
            intentZzb.addFlags(536870912);
            intentZzb.addFlags(262144);
            if (activity.getPackageManager().resolveActivity(intentZzb, 65536) != null) {
                zzb();
                Log.i("HsdpDeepLinkServiceImpl", "HSDP Activity found.");
                activity.startActivityForResult(intentZzb, 0);
                hsdpDeepLinkServiceListener.onDeepLinkStarted();
                zzc(str, hsdpDeepLinkServiceListener, map, (zze) this.zzc.zza(), activity);
                return;
            }
            if (!this.zze) {
                activity.startActivityForResult(zzq.zza(str, str2, map), 0);
                return;
            } else {
                Log.i("HsdpDeepLinkServiceImpl", "HSDP Activity not found. Ignoring error and still showing HPOA affordance.");
                zzc(str, hsdpDeepLinkServiceListener, map, (zze) this.zzc.zza(), activity);
                return;
            }
        }
        Uri data = intentZzb.getData();
        if (data == null) {
            Bundle bundle = new Bundle();
            bundle.putString("errorMessage", "Deeplink URL is null.");
            hsdpDeepLinkServiceListener.onError(bundle);
            return;
        }
        String string = data.toString();
        if (context instanceof Activity) {
            com.google.android.gms.internal.playcore_hsdp.zzg zzgVar = this.zzd;
            Activity activity2 = (Activity) context;
            if (!((zzr) zzgVar.zza()).zzf()) {
                zzb();
            }
            ((zzr) zzgVar.zza()).zze(str, string, activity2.getWindow().getDecorView().getWindowToken(), zza.zzc(activity2), zza.zzb(activity2), z, !this.zzg ? new zzan(this, hsdpDeepLinkServiceListener, activity2, str, str2, map) : new zzar(this, hsdpDeepLinkServiceListener, activity2, str, str2, map));
            return;
        }
        Intent intent = new Intent(context, (Class<?>) HsdpShimActivity.class);
        intent.putExtra("target_package_name", str);
        intent.putExtra(TapjoyConstants.TJC_REFERRER, str2);
        intent.putExtra("auto_trigger", z);
        intent.putExtra("deeplink_url", string);
        if (map != null) {
            Bundle bundle2 = new Bundle();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                bundle2.putString(entry.getKey(), entry.getValue());
            }
            intent.putExtra("extra_query_params_bundle", bundle2);
        }
        intent.addFlags(262144);
        intent.addFlags(268435456);
        Log.i("HsdpDeepLinkServiceImpl", "Starting HSDP Shim Activity.");
        context.startActivity(intent);
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService
    public final void prewarm(List<HsdpPrewarmRequest> list, HsdpDeepLinkService.HsdpPrewarmListener hsdpPrewarmListener) {
        ((zzr) this.zzd.zza()).zzd(list, hsdpPrewarmListener);
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService
    public final void stopAffordance(String str, HsdpDeepLinkService.AffordanceListener affordanceListener) {
        ((zze) this.zzc.zza()).zzc(str, affordanceListener);
    }

    final void zza() {
        if (this.zzg) {
            Context context = this.zzb;
            zzax zzaxVar = this.zza;
            Activity activity = (Activity) context;
            if (zzaxVar == null) {
                throw new IllegalStateException("hsdpLoadingPanel cannot be null when loading panel is enabled.");
            }
            zzaxVar.zzb();
            if (this.zzh != null) {
                activity.getApplication().unregisterActivityLifecycleCallbacks(this.zzh);
                this.zzh = null;
            }
        }
    }

    final void zzb() throws PackageManager.NameNotFoundException {
        if (this.zzg) {
            Context context = this.zzb;
            zzax zzaxVar = this.zza;
            Activity activity = (Activity) context;
            if (zzaxVar == null) {
                throw new IllegalStateException("hsdpLoadingPanel cannot be null when enabling loading panel.");
            }
            if (zzaxVar.zza == null) {
                if (this.zzh != null) {
                    activity.getApplication().unregisterActivityLifecycleCallbacks(this.zzh);
                }
                this.zzh = new zzal(this, activity);
                activity.getApplication().registerActivityLifecycleCallbacks(this.zzh);
                zzaxVar.zzc();
            }
        }
    }
}
