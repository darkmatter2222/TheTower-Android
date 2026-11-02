package com.google.android.gms.internal.fido;

import com.ironsource.G5;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-fido@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzgf {
    private static final zzgf zza;
    private static final zzgf zzb;
    private static final zzgf zzc;
    private static final zzgf zzd;
    private static final zzgf zze;

    static {
        Character chValueOf = Character.valueOf(G5.U);
        zza = new zzgd("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", chValueOf);
        zzb = new zzgd("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", chValueOf);
        zzc = new zzge("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", chValueOf);
        zzd = new zzge("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", chValueOf);
        zze = new zzgc("base16()", "0123456789ABCDEF");
    }

    zzgf() {
    }

    public static zzgf zzf() {
        return zze;
    }

    abstract void zzb(Appendable appendable, byte[] bArr, int i, int i2) throws IOException;

    abstract int zzc(int i);

    public abstract zzgf zzd();

    public final String zzg(byte[] bArr, int i, int i2) {
        zzbm.zze(0, i2, bArr.length);
        StringBuilder sb = new StringBuilder(zzc(i2));
        try {
            zzb(sb, bArr, 0, i2);
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
