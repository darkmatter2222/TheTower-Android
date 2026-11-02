package com.google.android.gms.internal.play_billing;

import java.io.IOException;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfa extends zzfd {
    private final byte[] zzb;
    private final int zzc;
    private final int zzd;

    zzfa(byte[] bArr, int i, int i2) {
        super(null);
        zzj(i, i + i2, bArr.length);
        this.zzb = bArr;
        this.zzc = i;
        this.zzd = i2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzfg
    final byte zza(int i) {
        return this.zzb[this.zzc + i];
    }

    @Override // com.google.android.gms.internal.play_billing.zzfg
    protected final int zzc(int i, int i2, int i3) {
        return zzgm.zzb(i, this.zzb, this.zzc, i3);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfg
    public final int zzd() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.play_billing.zzfg
    public final zzfg zze(int i, int i2) {
        int iZzj = zzj(i, i2, this.zzd);
        return iZzj == 0 ? zzfg.zza : new zzfa(this.zzb, this.zzc + i, iZzj);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfg
    protected final void zzf(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zzb, this.zzc, bArr, 0, i3);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfg
    final void zzg(zzex zzexVar) throws IOException {
        ((zzfl) zzexVar).zzc(this.zzb, this.zzc, this.zzd);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfg
    protected final boolean zzh(zzfg zzfgVar) {
        boolean z = zzfgVar instanceof zzfe;
        if (!z && !(zzfgVar instanceof zzfa)) {
            return zzfgVar.zzh(this);
        }
        int i = this.zzd;
        if (i > zzfgVar.zzd()) {
            throw new IllegalArgumentException("Length too large: " + i + i);
        }
        if (i > zzfgVar.zzd()) {
            throw new IllegalArgumentException("Ran off end of other: 0, " + i + ", " + zzfgVar.zzd());
        }
        if (z) {
            return zzfg.zzl(this.zzb, this.zzc, ((zzfe) zzfgVar).zzb, 0, i);
        }
        if (zzfgVar instanceof zzfa) {
            zzfa zzfaVar = (zzfa) zzfgVar;
            return zzfg.zzl(this.zzb, this.zzc, zzfaVar.zzb, zzfaVar.zzc, i);
        }
        zzfg zzfgVarZze = zzfgVar.zze(0, i);
        int i2 = this.zzc;
        return zzfgVarZze.equals(zze(i2, i + i2));
    }
}
