package com.google.android.gms.internal.play_billing;

import com.google.common.base.Ascii;
import java.io.IOException;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzev {
    public static final /* synthetic */ int zza = 0;
    private static volatile int zzb = 100;

    static int zza(byte[] bArr, int i, zzeu zzeuVar) throws zzgs {
        int iZzi = zzi(bArr, i, zzeuVar);
        int i2 = zzeuVar.zza;
        if (i2 < 0) {
            throw new zzgs("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        if (i2 > bArr.length - iZzi) {
            throw new zzgs("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        if (i2 == 0) {
            zzeuVar.zzc = zzfg.zza;
            return iZzi;
        }
        zzeuVar.zzc = zzfg.zzk(bArr, iZzi, i2);
        return iZzi + i2;
    }

    static int zzb(byte[] bArr, int i) {
        int i2 = bArr[i] & 255;
        int i3 = bArr[i + 1] & 255;
        int i4 = bArr[i + 2] & 255;
        return ((bArr[i + 3] & 255) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }

    static int zzc(zzhw zzhwVar, byte[] bArr, int i, int i2, int i3, zzeu zzeuVar) throws IOException {
        Object objZze = zzhwVar.zze();
        int iZzm = zzm(objZze, zzhwVar, bArr, i, i2, i3, zzeuVar);
        zzhwVar.zzf(objZze);
        zzeuVar.zzc = objZze;
        return iZzm;
    }

    static int zzd(zzhw zzhwVar, byte[] bArr, int i, int i2, zzeu zzeuVar) throws IOException {
        Object objZze = zzhwVar.zze();
        int iZzn = zzn(objZze, zzhwVar, bArr, i, i2, zzeuVar);
        zzhwVar.zzf(objZze);
        zzeuVar.zzc = objZze;
        return iZzn;
    }

    static int zze(zzhw zzhwVar, int i, byte[] bArr, int i2, int i3, zzgl zzglVar, zzeu zzeuVar) throws IOException {
        int iZzd = zzd(zzhwVar, bArr, i2, i3, zzeuVar);
        zzglVar.add(zzeuVar.zzc);
        while (iZzd < i3) {
            int iZzi = zzi(bArr, iZzd, zzeuVar);
            if (i != zzeuVar.zza) {
                break;
            }
            iZzd = zzd(zzhwVar, bArr, iZzi, i3, zzeuVar);
            zzglVar.add(zzeuVar.zzc);
        }
        return iZzd;
    }

    static int zzf(byte[] bArr, int i, zzgl zzglVar, zzeu zzeuVar) throws IOException {
        zzgh zzghVar = (zzgh) zzglVar;
        int iZzi = zzi(bArr, i, zzeuVar);
        int i2 = zzeuVar.zza;
        if (i2 < 0) {
            throw new zzgs("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        if (i2 > bArr.length - iZzi) {
            throw new zzgs("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        int i3 = i2 + iZzi;
        while (iZzi < i3) {
            iZzi = zzi(bArr, iZzi, zzeuVar);
            zzghVar.zzh(zzeuVar.zza);
        }
        if (iZzi == i3) {
            return iZzi;
        }
        throw new zzgs("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    static int zzg(byte[] bArr, int i, zzeu zzeuVar) throws zzgs {
        int i2;
        int iZzi = zzi(bArr, i, zzeuVar);
        int i3 = zzeuVar.zza;
        if (i3 < 0) {
            throw new zzgs("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        if (i3 == 0) {
            zzeuVar.zzc = "";
            return iZzi;
        }
        int i4 = zzix.zza;
        int length = bArr.length;
        if ((((length - iZzi) - i3) | iZzi | i3) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(iZzi), Integer.valueOf(i3)));
        }
        int i5 = iZzi + i3;
        char[] cArr = new char[i3];
        int i6 = 0;
        while (iZzi < i5) {
            byte b = bArr[iZzi];
            if (!zzit.zzd(b)) {
                break;
            }
            iZzi++;
            cArr[i6] = (char) b;
            i6++;
        }
        int i7 = i6;
        while (iZzi < i5) {
            int i8 = iZzi + 1;
            byte b2 = bArr[iZzi];
            if (zzit.zzd(b2)) {
                cArr[i7] = (char) b2;
                i7++;
                iZzi = i8;
                while (iZzi < i5) {
                    byte b3 = bArr[iZzi];
                    if (!zzit.zzd(b3)) {
                        break;
                    }
                    iZzi++;
                    cArr[i7] = (char) b3;
                    i7++;
                }
            } else {
                if (b2 < -32) {
                    if (i8 >= i5) {
                        throw new zzgs("Protocol message had invalid UTF-8.");
                    }
                    i2 = i7 + 1;
                    iZzi += 2;
                    zzit.zzc(b2, bArr[i8], cArr, i7);
                } else if (b2 < -16) {
                    if (i8 >= i5 - 1) {
                        throw new zzgs("Protocol message had invalid UTF-8.");
                    }
                    i2 = i7 + 1;
                    int i9 = iZzi + 2;
                    iZzi += 3;
                    zzit.zzb(b2, bArr[i8], bArr[i9], cArr, i7);
                } else {
                    if (i8 >= i5 - 2) {
                        throw new zzgs("Protocol message had invalid UTF-8.");
                    }
                    byte b4 = bArr[i8];
                    int i10 = iZzi + 3;
                    byte b5 = bArr[iZzi + 2];
                    iZzi += 4;
                    zzit.zza(b2, b4, b5, bArr[i10], cArr, i7);
                    i7 += 2;
                }
                i7 = i2;
            }
        }
        zzeuVar.zzc = new String(cArr, 0, i7);
        return i5;
    }

    static int zzh(int i, byte[] bArr, int i2, int i3, zzim zzimVar, zzeu zzeuVar) throws zzgs {
        if ((i >>> 3) == 0) {
            throw new zzgs("Protocol message contained an invalid tag (zero).");
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int iZzl = zzl(bArr, i2, zzeuVar);
            zzimVar.zzj(i, Long.valueOf(zzeuVar.zzb));
            return iZzl;
        }
        if (i4 == 1) {
            zzimVar.zzj(i, Long.valueOf(zzp(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int iZzi = zzi(bArr, i2, zzeuVar);
            int i5 = zzeuVar.zza;
            if (i5 < 0) {
                throw new zzgs("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
            if (i5 > bArr.length - iZzi) {
                throw new zzgs("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            if (i5 == 0) {
                zzimVar.zzj(i, zzfg.zza);
            } else {
                zzimVar.zzj(i, zzfg.zzk(bArr, iZzi, i5));
            }
            return iZzi + i5;
        }
        if (i4 != 3) {
            if (i4 != 5) {
                throw new zzgs("Protocol message contained an invalid tag (zero).");
            }
            zzimVar.zzj(i, Integer.valueOf(zzb(bArr, i2)));
            return i2 + 4;
        }
        int i6 = (i & (-8)) | 4;
        zzim zzimVarZzf = zzim.zzf();
        int i7 = zzeuVar.zze + 1;
        zzeuVar.zze = i7;
        zzq(i7);
        int i8 = 0;
        while (i2 < i3) {
            int iZzi2 = zzi(bArr, i2, zzeuVar);
            int i9 = zzeuVar.zza;
            if (i9 == i6) {
                i8 = i9;
                i2 = iZzi2;
                break;
            }
            i2 = zzh(i9, bArr, iZzi2, i3, zzimVarZzf, zzeuVar);
            i8 = i9;
        }
        zzeuVar.zze--;
        if (i2 > i3 || i8 != i6) {
            throw new zzgs("Failed to parse the message.");
        }
        zzimVar.zzj(i, zzimVarZzf);
        return i2;
    }

    static int zzi(byte[] bArr, int i, zzeu zzeuVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return zzj(b, bArr, i2, zzeuVar);
        }
        zzeuVar.zza = b;
        return i2;
    }

    static int zzj(int i, byte[] bArr, int i2, zzeu zzeuVar) {
        byte b = bArr[i2];
        int i3 = i2 + 1;
        int i4 = i & 127;
        if (b >= 0) {
            zzeuVar.zza = i4 | (b << 7);
            return i3;
        }
        int i5 = i4 | ((b & 127) << 7);
        int i6 = i2 + 2;
        byte b2 = bArr[i3];
        if (b2 >= 0) {
            zzeuVar.zza = i5 | (b2 << Ascii.SO);
            return i6;
        }
        int i7 = i5 | ((b2 & 127) << 14);
        int i8 = i2 + 3;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zzeuVar.zza = i7 | (b3 << Ascii.NAK);
            return i8;
        }
        int i9 = i7 | ((b3 & 127) << 21);
        int i10 = i2 + 4;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zzeuVar.zza = i9 | (b4 << Ascii.FS);
            return i10;
        }
        int i11 = i9 | ((b4 & 127) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                zzeuVar.zza = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    static int zzk(int i, byte[] bArr, int i2, int i3, zzgl zzglVar, zzeu zzeuVar) {
        zzgh zzghVar = (zzgh) zzglVar;
        int iZzi = zzi(bArr, i2, zzeuVar);
        zzghVar.zzh(zzeuVar.zza);
        while (iZzi < i3) {
            int iZzi2 = zzi(bArr, iZzi, zzeuVar);
            if (i != zzeuVar.zza) {
                break;
            }
            iZzi = zzi(bArr, iZzi2, zzeuVar);
            zzghVar.zzh(zzeuVar.zza);
        }
        return iZzi;
    }

    static int zzl(byte[] bArr, int i, zzeu zzeuVar) {
        long j = bArr[i];
        int i2 = i + 1;
        if (j >= 0) {
            zzeuVar.zzb = j;
            return i2;
        }
        int i3 = i + 2;
        byte b = bArr[i2];
        long j2 = (j & 127) | (((long) (b & 127)) << 7);
        int i4 = 7;
        while (b < 0) {
            int i5 = i3 + 1;
            byte b2 = bArr[i3];
            i4 += 7;
            j2 |= ((long) (b2 & 127)) << i4;
            b = b2;
            i3 = i5;
        }
        zzeuVar.zzb = j2;
        return i3;
    }

    static int zzm(Object obj, zzhw zzhwVar, byte[] bArr, int i, int i2, int i3, zzeu zzeuVar) throws IOException {
        int i4 = zzeuVar.zze + 1;
        zzeuVar.zze = i4;
        zzq(i4);
        int iZzc = ((zzhp) zzhwVar).zzc(obj, bArr, i, i2, i3, zzeuVar);
        zzeuVar.zze--;
        zzeuVar.zzc = obj;
        return iZzc;
    }

    static int zzn(Object obj, zzhw zzhwVar, byte[] bArr, int i, int i2, zzeu zzeuVar) throws IOException {
        int iZzj = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iZzj = zzj(i3, bArr, iZzj, zzeuVar);
            i3 = zzeuVar.zza;
        }
        int i4 = iZzj;
        if (i3 < 0 || i3 > i2 - i4) {
            throw new zzgs("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        int i5 = zzeuVar.zze + 1;
        zzeuVar.zze = i5;
        zzq(i5);
        int i6 = i4 + i3;
        zzhwVar.zzh(obj, bArr, i4, i6, zzeuVar);
        zzeuVar.zze--;
        zzeuVar.zzc = obj;
        return i6;
    }

    static int zzo(int i, byte[] bArr, int i2, int i3, zzeu zzeuVar) throws zzgs {
        if ((i >>> 3) == 0) {
            throw new zzgs("Protocol message contained an invalid tag (zero).");
        }
        int i4 = i & 7;
        if (i4 == 0) {
            return zzl(bArr, i2, zzeuVar);
        }
        if (i4 == 1) {
            return i2 + 8;
        }
        if (i4 == 2) {
            return zzi(bArr, i2, zzeuVar) + zzeuVar.zza;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                return i2 + 4;
            }
            throw new zzgs("Protocol message contained an invalid tag (zero).");
        }
        int i5 = (i & (-8)) | 4;
        int i6 = zzeuVar.zze + 1;
        zzeuVar.zze = i6;
        zzq(i6);
        int i7 = 0;
        while (i2 < i3) {
            i2 = zzi(bArr, i2, zzeuVar);
            i7 = zzeuVar.zza;
            if (i7 == i5) {
                break;
            }
            i2 = zzo(i7, bArr, i2, i3, zzeuVar);
        }
        zzeuVar.zze--;
        if (i2 > i3 || i7 != i5) {
            throw new zzgs("Failed to parse the message.");
        }
        return i2;
    }

    static long zzp(byte[] bArr, int i) {
        return (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48) | ((((long) bArr[i + 7]) & 255) << 56);
    }

    private static void zzq(int i) throws zzgs {
        if (i >= zzb) {
            throw new zzgs("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
    }
}
