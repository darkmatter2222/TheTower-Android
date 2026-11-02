package com.google.android.gms.internal.play_billing;

import java.io.IOException;
import java.util.List;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzhx {
    public static final /* synthetic */ int zza = 0;
    private static final zzil zzb;

    static {
        int i = zzet.zza;
        zzb = new zzin();
    }

    public static void zzA(int i, List list, zzjd zzjdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zzD(i, list, z);
    }

    public static void zzB(int i, List list, zzjd zzjdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zzF(i, list, z);
    }

    public static void zzC(int i, List list, zzjd zzjdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zzK(i, list, z);
    }

    public static void zzD(int i, List list, zzjd zzjdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zzM(i, list, z);
    }

    static boolean zzE(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    @Deprecated
    static int zza(int i, zzhm zzhmVar, zzhw zzhwVar) {
        int iZzy = zzfo.zzy(i << 3);
        return iZzy + iZzy + ((zzer) zzhmVar).zzi(zzhwVar);
    }

    static int zzb(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzgh)) {
            int iZzz = 0;
            while (i < size) {
                iZzz += zzfo.zzz(((Integer) list.get(i)).intValue());
                i++;
            }
            return iZzz;
        }
        zzgh zzghVar = (zzgh) list;
        int iZzz2 = 0;
        while (i < size) {
            iZzz2 += zzfo.zzz(zzghVar.zze(i));
            i++;
        }
        return iZzz2;
    }

    static int zzc(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzfo.zzy(i << 3) + 4);
    }

    static int zzd(List list) {
        return list.size() * 4;
    }

    static int zze(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzfo.zzy(i << 3) + 8);
    }

    static int zzf(List list) {
        return list.size() * 8;
    }

    static int zzg(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzgh)) {
            int iZzz = 0;
            while (i < size) {
                iZzz += zzfo.zzz(((Integer) list.get(i)).intValue());
                i++;
            }
            return iZzz;
        }
        zzgh zzghVar = (zzgh) list;
        int iZzz2 = 0;
        while (i < size) {
            iZzz2 += zzfo.zzz(zzghVar.zze(i));
            i++;
        }
        return iZzz2;
    }

    static int zzh(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzha)) {
            int iZzz = 0;
            while (i < size) {
                iZzz += zzfo.zzz(((Long) list.get(i)).longValue());
                i++;
            }
            return iZzz;
        }
        zzha zzhaVar = (zzha) list;
        int iZzz2 = 0;
        while (i < size) {
            iZzz2 += zzfo.zzz(zzhaVar.zze(i));
            i++;
        }
        return iZzz2;
    }

    static int zzi(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzgh)) {
            int iZzy = 0;
            while (i < size) {
                int iIntValue = ((Integer) list.get(i)).intValue();
                iZzy += zzfo.zzy((iIntValue >> 31) ^ (iIntValue + iIntValue));
                i++;
            }
            return iZzy;
        }
        zzgh zzghVar = (zzgh) list;
        int iZzy2 = 0;
        while (i < size) {
            int iZze = zzghVar.zze(i);
            iZzy2 += zzfo.zzy((iZze >> 31) ^ (iZze + iZze));
            i++;
        }
        return iZzy2;
    }

    static int zzj(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzha)) {
            int iZzz = 0;
            while (i < size) {
                long jLongValue = ((Long) list.get(i)).longValue();
                iZzz += zzfo.zzz((jLongValue >> 63) ^ (jLongValue + jLongValue));
                i++;
            }
            return iZzz;
        }
        zzha zzhaVar = (zzha) list;
        int iZzz2 = 0;
        while (i < size) {
            long jZze = zzhaVar.zze(i);
            iZzz2 += zzfo.zzz((jZze >> 63) ^ (jZze + jZze));
            i++;
        }
        return iZzz2;
    }

    static int zzk(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzgh)) {
            int iZzy = 0;
            while (i < size) {
                iZzy += zzfo.zzy(((Integer) list.get(i)).intValue());
                i++;
            }
            return iZzy;
        }
        zzgh zzghVar = (zzgh) list;
        int iZzy2 = 0;
        while (i < size) {
            iZzy2 += zzfo.zzy(zzghVar.zze(i));
            i++;
        }
        return iZzy2;
    }

    static int zzl(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzha)) {
            int iZzz = 0;
            while (i < size) {
                iZzz += zzfo.zzz(((Long) list.get(i)).longValue());
                i++;
            }
            return iZzz;
        }
        zzha zzhaVar = (zzha) list;
        int iZzz2 = 0;
        while (i < size) {
            iZzz2 += zzfo.zzz(zzhaVar.zze(i));
            i++;
        }
        return iZzz2;
    }

    public static zzil zzm() {
        return zzb;
    }

    static Object zzn(Object obj, int i, int i2, Object obj2, zzil zzilVar) {
        if (obj2 == null) {
            obj2 = zzilVar.zza(obj);
        }
        ((zzim) obj2).zzj(i << 3, Long.valueOf(i2));
        return obj2;
    }

    static void zzo(zzfu zzfuVar, Object obj, Object obj2) {
        if (((zzgd) obj2).zzb.zza.isEmpty()) {
            return;
        }
        throw null;
    }

    static void zzp(zzil zzilVar, Object obj, Object obj2) {
        zzgg zzggVar = (zzgg) obj;
        zzim zzimVarZze = zzggVar.zzc;
        zzim zzimVar = ((zzgg) obj2).zzc;
        if (!zzim.zzc().equals(zzimVar)) {
            if (zzim.zzc().equals(zzimVarZze)) {
                zzimVarZze = zzim.zze(zzimVarZze, zzimVar);
            } else {
                zzimVarZze.zzd(zzimVar);
            }
        }
        zzggVar.zzc = zzimVarZze;
    }

    public static void zzq(int i, List list, zzjd zzjdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zzc(i, list, z);
    }

    public static void zzr(int i, List list, zzjd zzjdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zzg(i, list, z);
    }

    public static void zzs(int i, List list, zzjd zzjdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zzj(i, list, z);
    }

    public static void zzt(int i, List list, zzjd zzjdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zzl(i, list, z);
    }

    public static void zzu(int i, List list, zzjd zzjdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zzn(i, list, z);
    }

    public static void zzv(int i, List list, zzjd zzjdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zzp(i, list, z);
    }

    public static void zzw(int i, List list, zzjd zzjdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zzs(i, list, z);
    }

    public static void zzx(int i, List list, zzjd zzjdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zzu(i, list, z);
    }

    public static void zzy(int i, List list, zzjd zzjdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zzz(i, list, z);
    }

    public static void zzz(int i, List list, zzjd zzjdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zzB(i, list, z);
    }
}
