package com.google.android.gms.internal.play_billing;

import com.ironsource.mediationsdk.logger.IronSourceError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzim {
    private static final zzim zza = new zzim(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    private zzim() {
        this(0, new int[8], new Object[8], true);
    }

    private zzim(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zze = -1;
        this.zzb = i;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z;
    }

    public static zzim zzc() {
        return zza;
    }

    static zzim zze(zzim zzimVar, zzim zzimVar2) {
        int i = zzimVar.zzb + zzimVar2.zzb;
        int[] iArrCopyOf = Arrays.copyOf(zzimVar.zzc, i);
        System.arraycopy(zzimVar2.zzc, 0, iArrCopyOf, zzimVar.zzb, zzimVar2.zzb);
        Object[] objArrCopyOf = Arrays.copyOf(zzimVar.zzd, i);
        System.arraycopy(zzimVar2.zzd, 0, objArrCopyOf, zzimVar.zzb, zzimVar2.zzb);
        return new zzim(i, iArrCopyOf, objArrCopyOf, true);
    }

    static zzim zzf() {
        return new zzim(0, new int[8], new Object[8], true);
    }

    private final void zzm(int i) {
        int[] iArr = this.zzc;
        if (i > iArr.length) {
            int i2 = this.zzb;
            int i3 = i2 + (i2 / 2);
            if (i3 >= i) {
                i = i3;
            }
            if (i < 8) {
                i = 8;
            }
            this.zzc = Arrays.copyOf(iArr, i);
            this.zzd = Arrays.copyOf(this.zzd, i);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzim)) {
            return false;
        }
        zzim zzimVar = (zzim) obj;
        int i = this.zzb;
        if (i == zzimVar.zzb) {
            int[] iArr = this.zzc;
            int[] iArr2 = zzimVar.zzc;
            for (int i2 = 0; i2 < i; i2++) {
                if (iArr[i2] == iArr2[i2]) {
                }
            }
            Object[] objArr = this.zzd;
            Object[] objArr2 = zzimVar.zzd;
            int i3 = this.zzb;
            for (int i4 = 0; i4 < i3; i4++) {
                if (objArr[i4].equals(objArr2[i4])) {
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzb;
        int i2 = i + IronSourceError.ERROR_NON_EXISTENT_INSTANCE;
        int[] iArr = this.zzc;
        int iHashCode = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        int i5 = ((i2 * 31) + i3) * 31;
        Object[] objArr = this.zzd;
        int i6 = this.zzb;
        for (int i7 = 0; i7 < i6; i7++) {
            iHashCode = (iHashCode * 31) + objArr[i7].hashCode();
        }
        return i5 + iHashCode;
    }

    public final int zza() {
        int iZzy;
        int iZzz;
        int iZzy2;
        int i = this.zze;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzb; i3++) {
            int i4 = this.zzc[i3];
            int i5 = i4 >>> 3;
            int i6 = i4 & 7;
            if (i6 != 0) {
                if (i6 == 1) {
                    ((Long) this.zzd[i3]).longValue();
                    iZzy2 = zzfo.zzy(i5 << 3) + 8;
                } else if (i6 == 2) {
                    int i7 = i5 << 3;
                    zzfg zzfgVar = (zzfg) this.zzd[i3];
                    int iZzy3 = zzfo.zzy(i7);
                    int iZzd = zzfgVar.zzd();
                    iZzy2 = iZzy3 + zzfo.zzy(iZzd) + iZzd;
                } else if (i6 == 3) {
                    int iZzy4 = zzfo.zzy(i5 << 3);
                    iZzy = iZzy4 + iZzy4;
                    iZzz = ((zzim) this.zzd[i3]).zza();
                } else {
                    if (i6 != 5) {
                        throw new IllegalStateException(new zzgr("Protocol message tag had invalid wire type."));
                    }
                    ((Integer) this.zzd[i3]).intValue();
                    iZzy2 = zzfo.zzy(i5 << 3) + 4;
                }
                i2 += iZzy2;
            } else {
                int i8 = i5 << 3;
                long jLongValue = ((Long) this.zzd[i3]).longValue();
                iZzy = zzfo.zzy(i8);
                iZzz = zzfo.zzz(jLongValue);
            }
            iZzy2 = iZzy + iZzz;
            i2 += iZzy2;
        }
        this.zze = i2;
        return i2;
    }

    public final int zzb() {
        int i = this.zze;
        if (i != -1) {
            return i;
        }
        int iZzy = 0;
        for (int i2 = 0; i2 < this.zzb; i2++) {
            int i3 = this.zzc[i2] >>> 3;
            zzfg zzfgVar = (zzfg) this.zzd[i2];
            int iZzy2 = zzfo.zzy(8);
            int iZzy3 = zzfo.zzy(16) + zzfo.zzy(i3);
            int iZzy4 = zzfo.zzy(24);
            int iZzd = zzfgVar.zzd();
            iZzy += iZzy2 + iZzy2 + iZzy3 + iZzy4 + zzfo.zzy(iZzd) + iZzd;
        }
        this.zze = iZzy;
        return iZzy;
    }

    final zzim zzd(zzim zzimVar) {
        if (zzimVar.equals(zza)) {
            return this;
        }
        zzg();
        int i = this.zzb + zzimVar.zzb;
        zzm(i);
        System.arraycopy(zzimVar.zzc, 0, this.zzc, this.zzb, zzimVar.zzb);
        System.arraycopy(zzimVar.zzd, 0, this.zzd, this.zzb, zzimVar.zzb);
        this.zzb = i;
        return this;
    }

    final void zzg() {
        if (!this.zzf) {
            throw new UnsupportedOperationException();
        }
    }

    public final void zzh() {
        if (this.zzf) {
            this.zzf = false;
        }
    }

    final void zzi(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.zzb; i2++) {
            zzho.zzb(sb, i, String.valueOf(this.zzc[i2] >>> 3), this.zzd[i2]);
        }
    }

    final void zzj(int i, Object obj) {
        zzg();
        zzm(this.zzb + 1);
        int[] iArr = this.zzc;
        int i2 = this.zzb;
        iArr[i2] = i;
        this.zzd[i2] = obj;
        this.zzb = i2 + 1;
    }

    final void zzk(zzjd zzjdVar) throws IOException {
        for (int i = 0; i < this.zzb; i++) {
            zzjdVar.zzx(this.zzc[i] >>> 3, this.zzd[i]);
        }
    }

    public final void zzl(zzjd zzjdVar) throws IOException {
        if (this.zzb != 0) {
            for (int i = 0; i < this.zzb; i++) {
                int i2 = this.zzc[i];
                Object obj = this.zzd[i];
                int i3 = i2 & 7;
                int i4 = i2 >>> 3;
                if (i3 == 0) {
                    zzjdVar.zzt(i4, ((Long) obj).longValue());
                } else if (i3 == 1) {
                    zzjdVar.zzm(i4, ((Long) obj).longValue());
                } else if (i3 == 2) {
                    zzjdVar.zzd(i4, (zzfg) obj);
                } else if (i3 == 3) {
                    zzjdVar.zzG(i4);
                    ((zzim) obj).zzl(zzjdVar);
                    zzjdVar.zzh(i4);
                } else {
                    if (i3 != 5) {
                        throw new RuntimeException(new zzgr("Protocol message tag had invalid wire type."));
                    }
                    zzjdVar.zzk(i4, ((Integer) obj).intValue());
                }
            }
        }
    }
}
