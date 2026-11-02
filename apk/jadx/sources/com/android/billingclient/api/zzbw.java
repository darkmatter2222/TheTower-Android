package com.android.billingclient.api;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.internal.play_billing.zzje;
import com.google.android.gms.internal.play_billing.zzjg;
import com.google.android.gms.internal.play_billing.zzji;
import com.google.android.gms.internal.play_billing.zzjk;
import com.google.android.gms.internal.play_billing.zzjl;
import com.google.android.gms.internal.play_billing.zzjn;
import com.google.android.gms.internal.play_billing.zzjp;
import com.google.android.gms.internal.play_billing.zzjs;
import com.google.android.gms.internal.play_billing.zzkz;
import com.google.android.gms.internal.play_billing.zzlb;
import com.google.android.gms.internal.play_billing.zzlf;
import com.google.android.gms.internal.play_billing.zzlg;
import com.google.android.gms.internal.play_billing.zzli;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbw implements ServiceConnection {
    final /* synthetic */ BillingClientImpl zza;
    private final BillingClientStateListener zzb;
    private final com.google.android.gms.internal.play_billing.zzbn zzc;
    private final com.google.android.gms.internal.play_billing.zzbn zzd;
    private final int zze;

    /* synthetic */ zzbw(BillingClientImpl billingClientImpl, BillingClientStateListener billingClientStateListener, int i, zzci zzciVar) {
        Objects.requireNonNull(billingClientImpl);
        this.zza = billingClientImpl;
        this.zzc = com.google.android.gms.internal.play_billing.zzbn.zzc(billingClientImpl.zzM);
        this.zzd = com.google.android.gms.internal.play_billing.zzbn.zzc(billingClientImpl.zzM);
        this.zzb = billingClientStateListener;
        this.zze = i;
    }

    /* JADX WARN: Code duplicated, block: B:149:0x017b A[EDGE_INSN: B:149:0x017b->B:76:0x017b BREAK  A[LOOP:0: B:27:0x00a6->B:69:0x0150], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:0x0107  */
    /* JADX WARN: Code duplicated, block: B:67:0x0135  */
    /* JADX WARN: Instruction removed from duplicated block: B:67:0x0135, please report this as an issue */
    public static /* synthetic */ Object zza(zzbw zzbwVar) {
        Bundle bundle;
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        int i;
        long j;
        long j2;
        BillingClientImpl billingClientImpl = zzbwVar.zza;
        synchronized (billingClientImpl.zza) {
            if (billingClientImpl.zzb != 3) {
                int i2 = 0;
                boolean z = true;
                boolean z2 = billingClientImpl.zzb == 1;
                if (TextUtils.isEmpty(null)) {
                    bundle = null;
                } else {
                    bundle = new Bundle();
                    bundle.putString("accountName", null);
                    com.google.android.gms.internal.play_billing.zzc.zzc(bundle, billingClientImpl.zzc, billingClientImpl.zzd, billingClientImpl.zzL.longValue());
                }
                zzjn zzjnVar = zzjn.REASON_UNSPECIFIED;
                synchronized (billingClientImpl.zza) {
                    zzarVar = billingClientImpl.zzi;
                }
                if (zzarVar != null) {
                    String packageName = zzbwVar.zza.zzg.getPackageName();
                    try {
                        if (zzarVar.zzb(25, packageName, BillingClient.ProductType.INAPP) != 0) {
                            Bundle bundle2 = bundle;
                            boolean z3 = z2;
                            int iZzb = 3;
                            int i3 = 28;
                            while (true) {
                                if (i3 < 3) {
                                    i3 = 0;
                                    break;
                                }
                                try {
                                    com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "trying subs apiVersion: " + i3);
                                    iZzb = bundle2 == null ? zzarVar.zzb(i3, packageName, BillingClient.ProductType.SUBS) : zzarVar.zzc(i3, packageName, BillingClient.ProductType.SUBS, bundle2);
                                    if (iZzb == 0) {
                                        com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "highestLevelSupportedForSubs: " + i3);
                                        break;
                                    }
                                    i3--;
                                } catch (Exception e) {
                                    zzbwVar.zzm(e, z3);
                                    return null;
                                }
                            }
                            BillingClientImpl billingClientImpl2 = zzbwVar.zza;
                            billingClientImpl2.zzl = i3 >= 5;
                            if (i3 < 3) {
                                z = false;
                            }
                            billingClientImpl2.zzk = z;
                            if (i3 < 3) {
                                zzjnVar = zzjn.SUBSCRIPTIONS_NOT_SUPPORTED;
                                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "In-app billing API does not support subscription on this device.");
                            }
                            for (int i4 = 28; i4 >= 3; i4--) {
                                com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "trying inapp apiVersion: " + i4);
                                iZzb = bundle2 == null ? zzarVar.zzb(i4, packageName, BillingClient.ProductType.INAPP) : zzarVar.zzc(i4, packageName, BillingClient.ProductType.INAPP, bundle2);
                                if (iZzb == 0) {
                                    billingClientImpl2.zzm = i4;
                                    com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "mHighestLevelSupportedForInApp: " + billingClientImpl2.zzm);
                                    break;
                                }
                            }
                            BillingClientImpl.zzao(billingClientImpl2, billingClientImpl2.zzm);
                            if (billingClientImpl2.zzm < 3) {
                                zzjnVar = zzjn.ONE_TIME_PRODUCT_NOT_SUPPORTED;
                                com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "In-app billing API version 3 is not supported on this device.");
                            }
                            BillingClientImpl.zzaq(billingClientImpl2, iZzb);
                            if (iZzb == 0) {
                                zzbwVar.zzj(z3, 0);
                                zzbwVar.zzk(zzdc.zzi);
                                return null;
                            }
                            BillingResult billingResult = zzdc.zzb;
                            zzbwVar.zzi(billingResult, zzjnVar, null, z3, 0);
                            zzbwVar.zzk(billingResult);
                            return null;
                        }
                        BillingClientImpl billingClientImpl3 = zzbwVar.zza;
                        long jZzb = zzem.zzb(billingClientImpl3.zzg);
                        long jZzc = zzem.zzc(billingClientImpl3.zzg);
                        double dZza = zzem.zza(billingClientImpl3.zzg);
                        boolean z4 = z2;
                        long jZzd = zzem.zzd(billingClientImpl3.zzg);
                        Exception e2 = null;
                        while (true) {
                            long j3 = i2;
                            if (j3 > jZzb) {
                                i = i2;
                                break;
                            }
                            j = jZzc;
                            try {
                                try {
                                    Boolean boolValueOf = Boolean.valueOf(z4);
                                    Bundle bundle3 = new Bundle();
                                    bundle3.putString("callingPackage", billingClientImpl3.zzg.getPackageName());
                                    j2 = jZzd;
                                    try {
                                        com.google.android.gms.internal.play_billing.zzc.zzc(bundle3, billingClientImpl3.zzc, billingClientImpl3.zzd, billingClientImpl3.zzL.longValue());
                                        if (billingClientImpl3.zzF != null && billingClientImpl3.zzF.isEnabledForOneTimeProducts()) {
                                            bundle3.putBoolean("enablePendingPurchases", true);
                                        }
                                        if (billingClientImpl3.zzF != null) {
                                            try {
                                                if (billingClientImpl3.zzF.isEnabledForPrepaidPlans()) {
                                                    try {
                                                        bundle3.putBoolean("enablePendingPurchaseForSubscriptions", true);
                                                    } catch (Exception e3) {
                                                        e2 = e3;
                                                        i = i2;
                                                        if (j3 == jZzb) {
                                                            zzbwVar.zzl(e2, z4, i);
                                                            return null;
                                                        }
                                                        com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Transient error during initialize(), retrying in " + j + "ms", e2);
                                                        try {
                                                            Thread.sleep(j);
                                                            long j4 = j2;
                                                            i2 = i + 1;
                                                            jZzc = (long) Math.min(j * dZza, j4);
                                                            jZzd = j4;
                                                            zzarVar = zzarVar;
                                                        } catch (InterruptedException e4) {
                                                            Thread.currentThread().interrupt();
                                                            zzbwVar.zzl(e4, z4, i);
                                                            return null;
                                                        }
                                                    }
                                                }
                                            } catch (Exception e5) {
                                                e2 = e5;
                                            }
                                        }
                                        i = i2;
                                        try {
                                            try {
                                                try {
                                                    zzarVar.zzq(25, billingClientImpl3.zzg.getPackageName(), bundle3, new zzcd(billingClientImpl3, zzbwVar, boolValueOf, i, null));
                                                    return null;
                                                } catch (Exception e6) {
                                                    e2 = e6;
                                                    if (j3 == jZzb) {
                                                        zzbwVar.zzl(e2, z4, i);
                                                        return null;
                                                    }
                                                    com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Transient error during initialize(), retrying in " + j + "ms", e2);
                                                    Thread.sleep(j);
                                                    long j5 = j2;
                                                    i2 = i + 1;
                                                    jZzc = (long) Math.min(j * dZza, j5);
                                                    jZzd = j5;
                                                    zzarVar = zzarVar;
                                                }
                                            } catch (SecurityException e7) {
                                                e = e7;
                                                zzbwVar.zzl(e, z4, i);
                                                return null;
                                            }
                                        } catch (Exception e8) {
                                            e2 = e8;
                                            if (j3 == jZzb) {
                                                zzbwVar.zzl(e2, z4, i);
                                                return null;
                                            }
                                            com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Transient error during initialize(), retrying in " + j + "ms", e2);
                                            Thread.sleep(j);
                                            long j6 = j2;
                                            i2 = i + 1;
                                            jZzc = (long) Math.min(j * dZza, j6);
                                            jZzd = j6;
                                            zzarVar = zzarVar;
                                        }
                                    } catch (Exception e9) {
                                        e2 = e9;
                                        i = i2;
                                    }
                                } catch (Exception e10) {
                                    e2 = e10;
                                    i = i2;
                                    j2 = jZzd;
                                }
                            } catch (SecurityException e11) {
                                e = e11;
                                i = i2;
                            }
                            long j7 = j2;
                            i2 = i + 1;
                            jZzc = (long) Math.min(j * dZza, j7);
                            jZzd = j7;
                            zzarVar = zzarVar;
                        }
                        zzbwVar.zzl(e2, z4, i);
                        return null;
                    } catch (Exception e12) {
                        zzbwVar.zzm(e12, z2);
                        return null;
                    }
                }
                BillingClientImpl billingClientImpl4 = zzbwVar.zza;
                billingClientImpl4.zzbj(0);
                int i5 = zzbwVar.zze;
                zzjn zzjnVar2 = zzjn.SERVICE_RESET_TO_NULL;
                BillingResult billingResult2 = zzdc.zzj;
                billingClientImpl4.zzbi(zzjnVar2, billingResult2, i5);
                zzbwVar.zzk(billingResult2);
            }
        }
        return null;
    }

    public static /* synthetic */ void zzb(zzbw zzbwVar) {
        BillingClientImpl billingClientImpl = zzbwVar.zza;
        billingClientImpl.zzbj(0);
        zzjn zzjnVar = zzjn.EXECUTE_ASYNC_TIMEOUT;
        BillingResult billingResult = zzdc.zzk;
        billingClientImpl.zzbi(zzjnVar, billingResult, zzbwVar.zze);
        zzbwVar.zzk(billingResult);
    }

    private final Long zzh(boolean z) {
        try {
            if (z) {
                synchronized (this.zza.zza) {
                    com.google.android.gms.internal.play_billing.zzbn zzbnVar = this.zzc;
                    if (!zzbnVar.zzg()) {
                        return null;
                    }
                    zzbnVar.zzf();
                    return Long.valueOf(zzbnVar.zza(TimeUnit.MILLISECONDS));
                }
            }
            synchronized (this.zza.zza) {
                com.google.android.gms.internal.play_billing.zzbn zzbnVar2 = this.zzd;
                if (!zzbnVar2.zzg()) {
                    return null;
                }
                zzbnVar2.zzf();
                return Long.valueOf(zzbnVar2.zza(TimeUnit.MILLISECONDS));
            }
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Exception getting connection establishment duration.", th);
        }
        com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Exception getting connection establishment duration.", th);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzi(BillingResult billingResult, zzjn zzjnVar, String str, boolean z, int i) {
        try {
            zzjl zzjlVarZza = zzjp.zza();
            zzjlVarZza.zzp(billingResult.getResponseCode());
            zzjlVarZza.zzb(billingResult.getDebugMessage());
            zzjlVarZza.zze(zzjnVar);
            zzjlVarZza.zzc(i);
            if (str != null) {
                zzjlVarZza.zza(str);
            }
            Long lZzh = zzh(z);
            if (!z) {
                zzkz zzkzVarZza = zzlb.zza();
                zzkzVarZza.zza(zzjlVarZza);
                if (lZzh != null) {
                    zzkzVarZza.zzb(lZzh.longValue());
                }
                this.zza.zzh.zzm((zzlb) zzkzVarZza.zzi());
                return;
            }
            zzlg zzlgVarZza = zzli.zza();
            int i2 = this.zze;
            zzlgVarZza.zza(i2 > 0);
            zzlgVarZza.zzb(i2);
            zzlgVarZza.zzd(i);
            if (lZzh != null) {
                zzlgVarZza.zzc(lZzh.longValue());
            }
            BillingClientImpl billingClientImpl = this.zza;
            zzje zzjeVarZza = zzjg.zza();
            zzjeVarZza.zzb(zzjlVarZza);
            zzjeVarZza.zzp(6);
            zzjeVarZza.zze(zzlgVarZza);
            billingClientImpl.zzbf((zzjg) zzjeVarZza.zzi());
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Unable to log.", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzj(boolean z, int i) {
        try {
            Long lZzh = zzh(z);
            if (!z) {
                zzkz zzkzVarZza = zzlb.zza();
                zzjl zzjlVarZza = zzjp.zza();
                zzjlVarZza.zzp(0);
                zzjlVarZza.zzc(i);
                zzkzVarZza.zza(zzjlVarZza);
                if (lZzh != null) {
                    zzkzVarZza.zzb(lZzh.longValue());
                }
                this.zza.zzh.zzm((zzlb) zzkzVarZza.zzi());
                return;
            }
            zzji zzjiVarZza = zzjk.zza();
            zzjiVarZza.zze(6);
            zzlg zzlgVarZza = zzli.zza();
            int i2 = this.zze;
            zzlgVarZza.zza(i2 > 0);
            zzlgVarZza.zzb(i2);
            zzlgVarZza.zzd(i);
            if (lZzh != null) {
                zzlgVarZza.zzc(lZzh.longValue());
            }
            BillingClientImpl billingClientImpl = this.zza;
            zzjiVarZza.zzd(zzlgVarZza);
            billingClientImpl.zzbh((zzjk) zzjiVarZza.zzi());
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Unable to log.", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzk(BillingResult billingResult) {
        BillingClientImpl billingClientImpl = this.zza;
        synchronized (billingClientImpl.zza) {
            if (billingClientImpl.zzb == 3) {
                return;
            }
            try {
                this.zzb.onBillingSetupFinished(billingResult);
            } catch (Throwable th) {
                com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Exception while calling onBillingSetupFinished.", th);
            }
        }
    }

    private final void zzl(Exception exc, boolean z, int i) {
        zzjn zzjnVar;
        com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Exception while invoking initialize AIDL method", exc);
        if (exc instanceof DeadObjectException) {
            zzjnVar = zzjn.INITIALIZE_DEAD_OBJECT_EXCEPTION;
        } else if (exc instanceof RemoteException) {
            zzjnVar = zzjn.INITIALIZE_REMOTE_EXCEPTION;
        } else {
            zzjnVar = exc instanceof SecurityException ? zzjn.INITIALIZE_SECURITY_EXCEPTION : zzjn.INITIALIZE_SERVICE_CALL_EXCEPTION;
        }
        zzjn zzjnVar2 = zzjnVar;
        String strZza = zzcy.zza(exc);
        this.zza.zzbj(0);
        zzi(BillingClientImpl.zzn(exc), zzjnVar2, strZza, z, i);
        zzk(BillingClientImpl.zzn(exc));
    }

    private final void zzm(Exception exc, boolean z) {
        zzjn zzjnVar;
        com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Exception while checking if billing is supported; try to reconnect", exc);
        if (exc instanceof DeadObjectException) {
            zzjnVar = zzjn.IS_BILLING_SUPPORTED_DEAD_OBJECT_EXCEPTION;
        } else if (exc instanceof RemoteException) {
            zzjnVar = zzjn.IS_BILLING_SUPPORTED_REMOTE_EXCEPTION;
        } else {
            zzjnVar = exc instanceof SecurityException ? zzjn.IS_BILLING_SUPPORTED_SECURITY_EXCEPTION : zzjn.IS_BILLING_SUPPORTED_SERVICE_CALL_EXCEPTION;
        }
        zzjn zzjnVar2 = zzjnVar;
        String strZza = zzjnVar2.equals(zzjn.IS_BILLING_SUPPORTED_SERVICE_CALL_EXCEPTION) ? zzcy.zza(exc) : null;
        this.zza.zzbj(0);
        zzi(BillingClientImpl.zzn(exc), zzjnVar2, strZza, z, 0);
        zzk(BillingClientImpl.zzn(exc));
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Billing service died.");
        try {
            BillingClientImpl billingClientImpl = this.zza;
            if (BillingClientImpl.zzau(billingClientImpl)) {
                zzcz zzczVar = billingClientImpl.zzh;
                zzje zzjeVarZza = zzjg.zza();
                zzjeVarZza.zzp(6);
                zzjl zzjlVarZza = zzjp.zza();
                zzjlVarZza.zze(zzjn.BINDING_DIED);
                zzjeVarZza.zzb(zzjlVarZza);
                zzlg zzlgVarZza = zzli.zza();
                int i = this.zze;
                zzlgVarZza.zza(i > 0);
                zzlgVarZza.zzb(i);
                zzjeVarZza.zze(zzlgVarZza);
                zzczVar.zza((zzjg) zzjeVarZza.zzi());
            } else {
                billingClientImpl.zzh.zzi(zzjs.zzb());
            }
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Unable to log.", th);
        }
        BillingClientImpl billingClientImpl2 = this.zza;
        synchronized (billingClientImpl2.zza) {
            if (billingClientImpl2.zzb != 3 && billingClientImpl2.zzb != 0) {
                billingClientImpl2.zzbj(0);
                billingClientImpl2.zzbm();
                try {
                    this.zzb.onBillingServiceDisconnected();
                } catch (Throwable th2) {
                    com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Exception while calling onBillingServiceDisconnected.", th2);
                }
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Billing service connected.");
        BillingClientImpl billingClientImpl = this.zza;
        synchronized (billingClientImpl.zza) {
            if (billingClientImpl.zzb == 3) {
                return;
            }
            billingClientImpl.zzi = com.google.android.gms.internal.play_billing.zzaq.zzu(iBinder);
            if (BillingClientImpl.zzN(new Callable() { // from class: com.android.billingclient.api.zzbu
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    zzbw.zza(this.zza);
                    return null;
                }
            }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzbv
                @Override // java.lang.Runnable
                public final void run() {
                    zzbw.zzb(this.zza);
                }
            }, billingClientImpl.zzaz(), billingClientImpl.zzM()) == null) {
                int i = this.zze;
                BillingResult billingResultZzaC = billingClientImpl.zzaC();
                billingClientImpl.zzbi(zzjn.MISSING_RESULT_FROM_EXECUTE_ASYNC, billingResultZzaC, i);
                zzk(billingResultZzaC);
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Billing service disconnected.");
        try {
            BillingClientImpl billingClientImpl = this.zza;
            if (BillingClientImpl.zzau(billingClientImpl)) {
                zzcz zzczVar = billingClientImpl.zzh;
                zzje zzjeVarZza = zzjg.zza();
                zzjeVarZza.zzp(6);
                zzjl zzjlVarZza = zzjp.zza();
                zzjlVarZza.zze(zzjn.SERVICE_DISCONNECTED);
                zzjeVarZza.zzb(zzjlVarZza);
                zzlg zzlgVarZza = zzli.zza();
                int i = this.zze;
                zzlgVarZza.zza(i > 0);
                zzlgVarZza.zzb(i);
                zzjeVarZza.zze(zzlgVarZza);
                zzczVar.zza((zzjg) zzjeVarZza.zzi());
            } else {
                billingClientImpl.zzh.zzn(zzlf.zzb());
            }
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Unable to log.", th);
        }
        BillingClientImpl billingClientImpl2 = this.zza;
        synchronized (billingClientImpl2.zza) {
            com.google.android.gms.internal.play_billing.zzbn zzbnVar = this.zzd;
            zzbnVar.zzd();
            zzbnVar.zze();
            if (billingClientImpl2.zzb == 3) {
                return;
            }
            billingClientImpl2.zzbj(0);
            try {
                this.zzb.onBillingServiceDisconnected();
            } catch (Throwable th2) {
                com.google.android.gms.internal.play_billing.zzc.zzp("BillingClient", "Exception while calling onBillingServiceDisconnected.", th2);
            }
        }
    }

    public final void zzf() {
        synchronized (this.zza.zza) {
            com.google.android.gms.internal.play_billing.zzbn zzbnVar = this.zzc;
            zzbnVar.zzd();
            zzbnVar.zze();
        }
    }

    final boolean zzg() {
        return this.zze > 0;
    }
}
