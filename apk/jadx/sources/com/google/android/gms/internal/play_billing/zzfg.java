package com.google.android.gms.internal.play_billing;

import java.io.IOException;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzfg implements Iterable, Serializable {
    public static final zzfg zza = new zzfe(zzgm.zza);
    private int zzb = 0;

    static {
        int i = zzet.zza;
    }

    zzfg() {
    }

    static int zzj(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            throw new IndexOutOfBoundsException("Beginning index: " + i + " < 0");
        }
        if (i2 < i) {
            throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + i + ", " + i2);
        }
        throw new IndexOutOfBoundsException("End index: " + i2 + " >= " + i3);
    }

    public static zzfg zzk(byte[] bArr, int i, int i2) {
        try {
            zzj(i, i + i2, bArr.length);
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            return new zzfe(bArr2);
        } catch (zzgs e) {
            throw new AssertionError("Expected no InvalidProtocolBufferException as data UTF8 validity is not checked.", e);
        }
    }

    static /* bridge */ /* synthetic */ boolean zzl(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        int i4 = i + i3;
        zzj(i, i4, bArr.length);
        zzj(i2, i3 + i2, bArr2.length);
        while (i < i4) {
            if (bArr[i] != bArr2[i2]) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfg)) {
            return false;
        }
        zzfg zzfgVar = (zzfg) obj;
        int iZzd = zzd();
        if (iZzd != zzfgVar.zzd()) {
            return false;
        }
        if (iZzd == 0) {
            return true;
        }
        int i = this.zzb;
        int i2 = zzfgVar.zzb;
        if (i == 0 || i2 == 0 || i == i2) {
            return zzh(zzfgVar);
        }
        return false;
    }

    public final int hashCode() {
        int iZzc = this.zzb;
        if (iZzc == 0) {
            int iZzd = zzd();
            iZzc = zzc(iZzd, 0, iZzd);
            if (iZzc == 0) {
                iZzc = 1;
            }
            this.zzb = iZzc;
        }
        return iZzc;
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzey(this);
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(zzd()), zzd() <= 50 ? zzij.zza(zzm()) : zzij.zza(zze(0, 47).zzm()).concat("..."));
    }

    abstract byte zza(int i);

    protected abstract int zzc(int i, int i2, int i3);

    public abstract int zzd();

    public abstract zzfg zze(int i, int i2);

    protected abstract void zzf(byte[] bArr, int i, int i2, int i3);

    abstract void zzg(zzex zzexVar) throws IOException;

    protected abstract boolean zzh(zzfg zzfgVar);

    public final byte[] zzm() {
        int iZzd = zzd();
        if (iZzd == 0) {
            return zzgm.zza;
        }
        byte[] bArr = new byte[iZzd];
        zzf(bArr, 0, 0, iZzd);
        return bArr;
    }
}
