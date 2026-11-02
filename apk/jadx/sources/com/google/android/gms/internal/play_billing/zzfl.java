package com.google.android.gms.internal.play_billing;

import com.google.android.gms.nearby.uwb.RangingPosition;
import java.io.IOException;
import java.util.Locale;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfl extends zzfo {
    private final byte[] zzc;
    private final int zzd;
    private int zze;

    zzfl(byte[] bArr, int i, int i2) {
        super(null);
        int length = bArr.length;
        if (((length - i2) | i2) < 0) {
            throw new IllegalArgumentException(String.format(Locale.US, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i2)));
        }
        this.zzc = bArr;
        this.zze = 0;
        this.zzd = i2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzfo
    public final int zza() {
        return this.zzd - this.zze;
    }

    @Override // com.google.android.gms.internal.play_billing.zzfo
    public final void zzb(byte b) throws IOException {
        IndexOutOfBoundsException indexOutOfBoundsException;
        int i = this.zze;
        try {
            int i2 = i + 1;
            try {
                this.zzc[i] = b;
                this.zze = i2;
            } catch (IndexOutOfBoundsException e) {
                indexOutOfBoundsException = e;
                i = i2;
                throw new zzfm(i, this.zzd, 1, indexOutOfBoundsException);
            }
        } catch (IndexOutOfBoundsException e2) {
            indexOutOfBoundsException = e2;
        }
    }

    public final void zzc(byte[] bArr, int i, int i2) throws IOException {
        try {
            System.arraycopy(bArr, i, this.zzc, this.zze, i2);
            this.zze += i2;
        } catch (IndexOutOfBoundsException e) {
            throw new zzfm(this.zze, this.zzd, i2, e);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzfo
    public final void zzd(int i, boolean z) throws IOException {
        zzu(i << 3);
        zzb(z ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfo
    public final void zze(byte[] bArr, int i, int i2) throws IOException {
        zzu(i2);
        zzc(bArr, 0, i2);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfo
    public final void zzf(int i, zzfg zzfgVar) throws IOException {
        zzu((i << 3) | 2);
        zzg(zzfgVar);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfo
    public final void zzg(zzfg zzfgVar) throws IOException {
        zzu(zzfgVar.zzd());
        zzfgVar.zzg(this);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfo
    public final void zzh(int i, int i2) throws IOException {
        zzu((i << 3) | 5);
        zzi(i2);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfo
    public final void zzi(int i) throws IOException {
        int i2 = this.zze;
        try {
            byte[] bArr = this.zzc;
            bArr[i2] = (byte) i;
            bArr[i2 + 1] = (byte) (i >> 8);
            bArr[i2 + 2] = (byte) (i >> 16);
            bArr[i2 + 3] = (byte) (i >> 24);
            this.zze = i2 + 4;
        } catch (IndexOutOfBoundsException e) {
            throw new zzfm(i2, this.zzd, 4, e);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzfo
    public final void zzj(int i, long j) throws IOException {
        zzu((i << 3) | 1);
        zzk(j);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfo
    public final void zzk(long j) throws IOException {
        int i = this.zze;
        try {
            byte[] bArr = this.zzc;
            bArr[i] = (byte) j;
            bArr[i + 1] = (byte) (j >> 8);
            bArr[i + 2] = (byte) (j >> 16);
            bArr[i + 3] = (byte) (j >> 24);
            bArr[i + 4] = (byte) (j >> 32);
            bArr[i + 5] = (byte) (j >> 40);
            bArr[i + 6] = (byte) (j >> 48);
            bArr[i + 7] = (byte) (j >> 56);
            this.zze = i + 8;
        } catch (IndexOutOfBoundsException e) {
            throw new zzfm(i, this.zzd, 8, e);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzfo
    public final void zzl(int i, int i2) throws IOException {
        zzu(i << 3);
        zzm(i2);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfo
    public final void zzm(int i) throws IOException {
        if (i >= 0) {
            zzu(i);
        } else {
            zzw(i);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzfo
    public final void zzn(zzhm zzhmVar) throws IOException {
        zzu(zzhmVar.zzn());
        zzhmVar.zzD(this);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfo
    public final void zzo(int i, zzhm zzhmVar) throws IOException {
        zzu(11);
        zzt(2, i);
        zzu(26);
        zzn(zzhmVar);
        zzu(12);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfo
    public final void zzp(int i, zzfg zzfgVar) throws IOException {
        zzu(11);
        zzt(2, i);
        zzf(3, zzfgVar);
        zzu(12);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfo
    public final void zzq(int i, String str) throws IOException {
        zzu((i << 3) | 2);
        zzr(str);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfo
    public final void zzr(String str) throws IOException {
        int i = this.zze;
        try {
            int iZzy = zzy(str.length() * 3);
            int iZzy2 = zzy(str.length());
            if (iZzy2 != iZzy) {
                int i2 = zzix.zza;
                zzu(zziu.zzb(str));
                byte[] bArr = this.zzc;
                int i3 = this.zze;
                this.zze = zzix.zza(str, bArr, i3, bArr.length - i3);
                return;
            }
            int i4 = i + iZzy2;
            this.zze = i4;
            byte[] bArr2 = this.zzc;
            int iZza = zzix.zza(str, bArr2, i4, bArr2.length - i4);
            this.zze = i;
            zzu((iZza - i) - iZzy2);
            this.zze = iZza;
        } catch (IndexOutOfBoundsException e) {
            throw new zzfm(e);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzfo
    public final void zzs(int i, int i2) throws IOException {
        zzu((i << 3) | i2);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfo
    public final void zzt(int i, int i2) throws IOException {
        zzu(i << 3);
        zzu(i2);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfo
    public final void zzu(int i) throws IOException {
        int i2;
        IndexOutOfBoundsException indexOutOfBoundsException;
        int i3 = this.zze;
        while ((i & RangingPosition.RSSI_UNKNOWN) != 0) {
            try {
                i2 = i3 + 1;
                try {
                    this.zzc[i3] = (byte) (i | 128);
                    i >>>= 7;
                    i3 = i2;
                } catch (IndexOutOfBoundsException e) {
                    indexOutOfBoundsException = e;
                    i3 = i2;
                    throw new zzfm(i3, this.zzd, 1, indexOutOfBoundsException);
                }
            } catch (IndexOutOfBoundsException e2) {
                indexOutOfBoundsException = e2;
                throw new zzfm(i3, this.zzd, 1, indexOutOfBoundsException);
            }
        }
        i2 = i3 + 1;
        this.zzc[i3] = (byte) i;
        this.zze = i2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzfo
    public final void zzv(int i, long j) throws IOException {
        zzu(i << 3);
        zzw(j);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfo
    public final void zzw(long j) throws IOException {
        int i;
        IndexOutOfBoundsException indexOutOfBoundsException;
        int i2 = this.zze;
        if (!zzfo.zzc || this.zzd - i2 < 10) {
            int i3 = i2;
            while ((j & (-128)) != 0) {
                try {
                    int i4 = i3 + 1;
                    try {
                        this.zzc[i3] = (byte) (((int) j) | 128);
                        j >>>= 7;
                        i3 = i4;
                    } catch (IndexOutOfBoundsException e) {
                        indexOutOfBoundsException = e;
                        i3 = i4;
                        throw new zzfm(i3, this.zzd, 1, indexOutOfBoundsException);
                    }
                } catch (IndexOutOfBoundsException e2) {
                    indexOutOfBoundsException = e2;
                }
            }
            i = i3 + 1;
            try {
                this.zzc[i3] = (byte) j;
            } catch (IndexOutOfBoundsException e3) {
                indexOutOfBoundsException = e3;
                i3 = i;
                throw new zzfm(i3, this.zzd, 1, indexOutOfBoundsException);
            }
        } else {
            while ((j & (-128)) != 0) {
                zzis.zzn(this.zzc, i2, (byte) (((int) j) | 128));
                j >>>= 7;
                i2++;
            }
            i = i2 + 1;
            zzis.zzn(this.zzc, i2, (byte) j);
        }
        this.zze = i;
    }
}
