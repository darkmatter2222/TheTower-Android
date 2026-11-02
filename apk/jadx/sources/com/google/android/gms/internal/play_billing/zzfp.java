package com.google.android.gms.internal.play_billing;

import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfp implements zzjd {
    private final zzfo zza;

    private zzfp(zzfo zzfoVar) {
        this.zza = zzfoVar;
        zzfoVar.zza = this;
    }

    public static zzfp zza(zzfo zzfoVar) {
        Object obj = zzfoVar.zza;
        return obj != null ? (zzfp) obj : new zzfp(zzfoVar);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzA(int i, long j) throws IOException {
        this.zza.zzj(i, j);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzB(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzha)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzj(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzfo zzfoVar = this.zza;
            zzfoVar.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).longValue();
                i3 += 8;
            }
            zzfoVar.zzu(i3);
            while (i2 < list.size()) {
                zzfoVar.zzk(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        zzha zzhaVar = (zzha) list;
        if (!z) {
            while (i2 < zzhaVar.size()) {
                this.zza.zzj(i, zzhaVar.zze(i2));
                i2++;
            }
            return;
        }
        zzfo zzfoVar2 = this.zza;
        zzfoVar2.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzhaVar.size(); i6++) {
            zzhaVar.zze(i6);
            i5 += 8;
        }
        zzfoVar2.zzu(i5);
        while (i2 < zzhaVar.size()) {
            zzfoVar2.zzk(zzhaVar.zze(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzC(int i, int i2) throws IOException {
        this.zza.zzt(i, (i2 >> 31) ^ (i2 + i2));
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzD(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzgh)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzfo zzfoVar = this.zza;
                    int iIntValue = ((Integer) list.get(i2)).intValue();
                    zzfoVar.zzt(i, (iIntValue >> 31) ^ (iIntValue + iIntValue));
                    i2++;
                }
                return;
            }
            zzfo zzfoVar2 = this.zza;
            zzfoVar2.zzs(i, 2);
            int iZzy = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                int iIntValue2 = ((Integer) list.get(i3)).intValue();
                iZzy += zzfo.zzy((iIntValue2 >> 31) ^ (iIntValue2 + iIntValue2));
            }
            zzfoVar2.zzu(iZzy);
            while (i2 < list.size()) {
                int iIntValue3 = ((Integer) list.get(i2)).intValue();
                zzfoVar2.zzu((iIntValue3 >> 31) ^ (iIntValue3 + iIntValue3));
                i2++;
            }
            return;
        }
        zzgh zzghVar = (zzgh) list;
        if (!z) {
            while (i2 < zzghVar.size()) {
                zzfo zzfoVar3 = this.zza;
                int iZze = zzghVar.zze(i2);
                zzfoVar3.zzt(i, (iZze >> 31) ^ (iZze + iZze));
                i2++;
            }
            return;
        }
        zzfo zzfoVar4 = this.zza;
        zzfoVar4.zzs(i, 2);
        int iZzy2 = 0;
        for (int i4 = 0; i4 < zzghVar.size(); i4++) {
            int iZze2 = zzghVar.zze(i4);
            iZzy2 += zzfo.zzy((iZze2 >> 31) ^ (iZze2 + iZze2));
        }
        zzfoVar4.zzu(iZzy2);
        while (i2 < zzghVar.size()) {
            int iZze3 = zzghVar.zze(i2);
            zzfoVar4.zzu((iZze3 >> 31) ^ (iZze3 + iZze3));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzE(int i, long j) throws IOException {
        this.zza.zzv(i, (j >> 63) ^ (j + j));
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzF(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzha)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzfo zzfoVar = this.zza;
                    long jLongValue = ((Long) list.get(i2)).longValue();
                    zzfoVar.zzv(i, (jLongValue >> 63) ^ (jLongValue + jLongValue));
                    i2++;
                }
                return;
            }
            zzfo zzfoVar2 = this.zza;
            zzfoVar2.zzs(i, 2);
            int iZzz = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                long jLongValue2 = ((Long) list.get(i3)).longValue();
                iZzz += zzfo.zzz((jLongValue2 >> 63) ^ (jLongValue2 + jLongValue2));
            }
            zzfoVar2.zzu(iZzz);
            while (i2 < list.size()) {
                long jLongValue3 = ((Long) list.get(i2)).longValue();
                zzfoVar2.zzw((jLongValue3 >> 63) ^ (jLongValue3 + jLongValue3));
                i2++;
            }
            return;
        }
        zzha zzhaVar = (zzha) list;
        if (!z) {
            while (i2 < zzhaVar.size()) {
                zzfo zzfoVar3 = this.zza;
                long jZze = zzhaVar.zze(i2);
                zzfoVar3.zzv(i, (jZze >> 63) ^ (jZze + jZze));
                i2++;
            }
            return;
        }
        zzfo zzfoVar4 = this.zza;
        zzfoVar4.zzs(i, 2);
        int iZzz2 = 0;
        for (int i4 = 0; i4 < zzhaVar.size(); i4++) {
            long jZze2 = zzhaVar.zze(i4);
            iZzz2 += zzfo.zzz((jZze2 >> 63) ^ (jZze2 + jZze2));
        }
        zzfoVar4.zzu(iZzz2);
        while (i2 < zzhaVar.size()) {
            long jZze3 = zzhaVar.zze(i2);
            zzfoVar4.zzw((jZze3 >> 63) ^ (jZze3 + jZze3));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    @Deprecated
    public final void zzG(int i) throws IOException {
        this.zza.zzs(i, 3);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzH(int i, String str) throws IOException {
        this.zza.zzq(i, str);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzI(int i, List list) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzgu)) {
            while (i2 < list.size()) {
                this.zza.zzq(i, (String) list.get(i2));
                i2++;
            }
            return;
        }
        zzgu zzguVar = (zzgu) list;
        while (i2 < list.size()) {
            Object objZza = zzguVar.zza();
            if (objZza instanceof String) {
                this.zza.zzq(i, (String) objZza);
            } else {
                this.zza.zzf(i, (zzfg) objZza);
            }
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzJ(int i, int i2) throws IOException {
        this.zza.zzt(i, i2);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzK(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzgh)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzt(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzfo zzfoVar = this.zza;
            zzfoVar.zzs(i, 2);
            int iZzy = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzy += zzfo.zzy(((Integer) list.get(i3)).intValue());
            }
            zzfoVar.zzu(iZzy);
            while (i2 < list.size()) {
                zzfoVar.zzu(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        zzgh zzghVar = (zzgh) list;
        if (!z) {
            while (i2 < zzghVar.size()) {
                this.zza.zzt(i, zzghVar.zze(i2));
                i2++;
            }
            return;
        }
        zzfo zzfoVar2 = this.zza;
        zzfoVar2.zzs(i, 2);
        int iZzy2 = 0;
        for (int i4 = 0; i4 < zzghVar.size(); i4++) {
            iZzy2 += zzfo.zzy(zzghVar.zze(i4));
        }
        zzfoVar2.zzu(iZzy2);
        while (i2 < zzghVar.size()) {
            zzfoVar2.zzu(zzghVar.zze(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzL(int i, long j) throws IOException {
        this.zza.zzv(i, j);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzM(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzha)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzv(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzfo zzfoVar = this.zza;
            zzfoVar.zzs(i, 2);
            int iZzz = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzz += zzfo.zzz(((Long) list.get(i3)).longValue());
            }
            zzfoVar.zzu(iZzz);
            while (i2 < list.size()) {
                zzfoVar.zzw(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        zzha zzhaVar = (zzha) list;
        if (!z) {
            while (i2 < zzhaVar.size()) {
                this.zza.zzv(i, zzhaVar.zze(i2));
                i2++;
            }
            return;
        }
        zzfo zzfoVar2 = this.zza;
        zzfoVar2.zzs(i, 2);
        int iZzz2 = 0;
        for (int i4 = 0; i4 < zzhaVar.size(); i4++) {
            iZzz2 += zzfo.zzz(zzhaVar.zze(i4));
        }
        zzfoVar2.zzu(iZzz2);
        while (i2 < zzhaVar.size()) {
            zzfoVar2.zzw(zzhaVar.zze(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzb(int i, boolean z) throws IOException {
        this.zza.zzd(i, z);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzc(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzew)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzd(i, ((Boolean) list.get(i2)).booleanValue());
                    i2++;
                }
                return;
            }
            zzfo zzfoVar = this.zza;
            zzfoVar.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Boolean) list.get(i4)).booleanValue();
                i3++;
            }
            zzfoVar.zzu(i3);
            while (i2 < list.size()) {
                zzfoVar.zzb(((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0);
                i2++;
            }
            return;
        }
        zzew zzewVar = (zzew) list;
        if (!z) {
            while (i2 < zzewVar.size()) {
                this.zza.zzd(i, zzewVar.zzf(i2));
                i2++;
            }
            return;
        }
        zzfo zzfoVar2 = this.zza;
        zzfoVar2.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzewVar.size(); i6++) {
            zzewVar.zzf(i6);
            i5++;
        }
        zzfoVar2.zzu(i5);
        while (i2 < zzewVar.size()) {
            zzfoVar2.zzb(zzewVar.zzf(i2) ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzd(int i, zzfg zzfgVar) throws IOException {
        this.zza.zzf(i, zzfgVar);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zze(int i, List list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zza.zzf(i, (zzfg) list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzf(int i, double d) throws IOException {
        this.zza.zzj(i, Double.doubleToRawLongBits(d));
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzg(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzfq)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzj(i, Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                    i2++;
                }
                return;
            }
            zzfo zzfoVar = this.zza;
            zzfoVar.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Double) list.get(i4)).doubleValue();
                i3 += 8;
            }
            zzfoVar.zzu(i3);
            while (i2 < list.size()) {
                zzfoVar.zzk(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                i2++;
            }
            return;
        }
        zzfq zzfqVar = (zzfq) list;
        if (!z) {
            while (i2 < zzfqVar.size()) {
                this.zza.zzj(i, Double.doubleToRawLongBits(zzfqVar.zze(i2)));
                i2++;
            }
            return;
        }
        zzfo zzfoVar2 = this.zza;
        zzfoVar2.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzfqVar.size(); i6++) {
            zzfqVar.zze(i6);
            i5 += 8;
        }
        zzfoVar2.zzu(i5);
        while (i2 < zzfqVar.size()) {
            zzfoVar2.zzk(Double.doubleToRawLongBits(zzfqVar.zze(i2)));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    @Deprecated
    public final void zzh(int i) throws IOException {
        this.zza.zzs(i, 4);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzi(int i, int i2) throws IOException {
        this.zza.zzl(i, i2);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzj(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzgh)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzl(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzfo zzfoVar = this.zza;
            zzfoVar.zzs(i, 2);
            int iZzz = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzz += zzfo.zzz(((Integer) list.get(i3)).intValue());
            }
            zzfoVar.zzu(iZzz);
            while (i2 < list.size()) {
                zzfoVar.zzm(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        zzgh zzghVar = (zzgh) list;
        if (!z) {
            while (i2 < zzghVar.size()) {
                this.zza.zzl(i, zzghVar.zze(i2));
                i2++;
            }
            return;
        }
        zzfo zzfoVar2 = this.zza;
        zzfoVar2.zzs(i, 2);
        int iZzz2 = 0;
        for (int i4 = 0; i4 < zzghVar.size(); i4++) {
            iZzz2 += zzfo.zzz(zzghVar.zze(i4));
        }
        zzfoVar2.zzu(iZzz2);
        while (i2 < zzghVar.size()) {
            zzfoVar2.zzm(zzghVar.zze(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzk(int i, int i2) throws IOException {
        this.zza.zzh(i, i2);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzl(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzgh)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzh(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzfo zzfoVar = this.zza;
            zzfoVar.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).intValue();
                i3 += 4;
            }
            zzfoVar.zzu(i3);
            while (i2 < list.size()) {
                zzfoVar.zzi(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        zzgh zzghVar = (zzgh) list;
        if (!z) {
            while (i2 < zzghVar.size()) {
                this.zza.zzh(i, zzghVar.zze(i2));
                i2++;
            }
            return;
        }
        zzfo zzfoVar2 = this.zza;
        zzfoVar2.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzghVar.size(); i6++) {
            zzghVar.zze(i6);
            i5 += 4;
        }
        zzfoVar2.zzu(i5);
        while (i2 < zzghVar.size()) {
            zzfoVar2.zzi(zzghVar.zze(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzm(int i, long j) throws IOException {
        this.zza.zzj(i, j);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzn(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzha)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzj(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzfo zzfoVar = this.zza;
            zzfoVar.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).longValue();
                i3 += 8;
            }
            zzfoVar.zzu(i3);
            while (i2 < list.size()) {
                zzfoVar.zzk(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        zzha zzhaVar = (zzha) list;
        if (!z) {
            while (i2 < zzhaVar.size()) {
                this.zza.zzj(i, zzhaVar.zze(i2));
                i2++;
            }
            return;
        }
        zzfo zzfoVar2 = this.zza;
        zzfoVar2.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzhaVar.size(); i6++) {
            zzhaVar.zze(i6);
            i5 += 8;
        }
        zzfoVar2.zzu(i5);
        while (i2 < zzhaVar.size()) {
            zzfoVar2.zzk(zzhaVar.zze(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzo(int i, float f) throws IOException {
        this.zza.zzh(i, Float.floatToRawIntBits(f));
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzp(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzga)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzh(i, Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                    i2++;
                }
                return;
            }
            zzfo zzfoVar = this.zza;
            zzfoVar.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Float) list.get(i4)).floatValue();
                i3 += 4;
            }
            zzfoVar.zzu(i3);
            while (i2 < list.size()) {
                zzfoVar.zzi(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                i2++;
            }
            return;
        }
        zzga zzgaVar = (zzga) list;
        if (!z) {
            while (i2 < zzgaVar.size()) {
                this.zza.zzh(i, Float.floatToRawIntBits(zzgaVar.zze(i2)));
                i2++;
            }
            return;
        }
        zzfo zzfoVar2 = this.zza;
        zzfoVar2.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzgaVar.size(); i6++) {
            zzgaVar.zze(i6);
            i5 += 4;
        }
        zzfoVar2.zzu(i5);
        while (i2 < zzgaVar.size()) {
            zzfoVar2.zzi(Float.floatToRawIntBits(zzgaVar.zze(i2)));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzq(int i, Object obj, zzhw zzhwVar) throws IOException {
        zzfo zzfoVar = this.zza;
        zzfoVar.zzs(i, 3);
        zzhwVar.zzi((zzer) obj, this);
        zzfoVar.zzs(i, 4);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzr(int i, int i2) throws IOException {
        this.zza.zzl(i, i2);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzs(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzgh)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzl(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzfo zzfoVar = this.zza;
            zzfoVar.zzs(i, 2);
            int iZzz = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzz += zzfo.zzz(((Integer) list.get(i3)).intValue());
            }
            zzfoVar.zzu(iZzz);
            while (i2 < list.size()) {
                zzfoVar.zzm(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        zzgh zzghVar = (zzgh) list;
        if (!z) {
            while (i2 < zzghVar.size()) {
                this.zza.zzl(i, zzghVar.zze(i2));
                i2++;
            }
            return;
        }
        zzfo zzfoVar2 = this.zza;
        zzfoVar2.zzs(i, 2);
        int iZzz2 = 0;
        for (int i4 = 0; i4 < zzghVar.size(); i4++) {
            iZzz2 += zzfo.zzz(zzghVar.zze(i4));
        }
        zzfoVar2.zzu(iZzz2);
        while (i2 < zzghVar.size()) {
            zzfoVar2.zzm(zzghVar.zze(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzt(int i, long j) throws IOException {
        this.zza.zzv(i, j);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzu(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzha)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzv(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzfo zzfoVar = this.zza;
            zzfoVar.zzs(i, 2);
            int iZzz = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzz += zzfo.zzz(((Long) list.get(i3)).longValue());
            }
            zzfoVar.zzu(iZzz);
            while (i2 < list.size()) {
                zzfoVar.zzw(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        zzha zzhaVar = (zzha) list;
        if (!z) {
            while (i2 < zzhaVar.size()) {
                this.zza.zzv(i, zzhaVar.zze(i2));
                i2++;
            }
            return;
        }
        zzfo zzfoVar2 = this.zza;
        zzfoVar2.zzs(i, 2);
        int iZzz2 = 0;
        for (int i4 = 0; i4 < zzhaVar.size(); i4++) {
            iZzz2 += zzfo.zzz(zzhaVar.zze(i4));
        }
        zzfoVar2.zzu(iZzz2);
        while (i2 < zzhaVar.size()) {
            zzfoVar2.zzw(zzhaVar.zze(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzv(int i, zzhe zzheVar, Map map) throws IOException {
        for (Map.Entry entry : map.entrySet()) {
            zzfo zzfoVar = this.zza;
            zzfoVar.zzs(i, 2);
            zzfoVar.zzu(zzhf.zzb(zzheVar, entry.getKey(), entry.getValue()));
            zzhf.zze(zzfoVar, zzheVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzw(int i, Object obj, zzhw zzhwVar) throws IOException {
        zzfo zzfoVar = this.zza;
        zzer zzerVar = (zzer) obj;
        zzfoVar.zzs(i, 2);
        zzfoVar.zzu(zzerVar.zzi(zzhwVar));
        zzhwVar.zzi(zzerVar, this);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzx(int i, Object obj) throws IOException {
        if (obj instanceof zzfg) {
            this.zza.zzp(i, (zzfg) obj);
        } else {
            this.zza.zzo(i, (zzhm) obj);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzy(int i, int i2) throws IOException {
        this.zza.zzh(i, i2);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjd
    public final void zzz(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzgh)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzh(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzfo zzfoVar = this.zza;
            zzfoVar.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).intValue();
                i3 += 4;
            }
            zzfoVar.zzu(i3);
            while (i2 < list.size()) {
                zzfoVar.zzi(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        zzgh zzghVar = (zzgh) list;
        if (!z) {
            while (i2 < zzghVar.size()) {
                this.zza.zzh(i, zzghVar.zze(i2));
                i2++;
            }
            return;
        }
        zzfo zzfoVar2 = this.zza;
        zzfoVar2.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzghVar.size(); i6++) {
            zzghVar.zze(i6);
            i5 += 4;
        }
        zzfoVar2.zzu(i5);
        while (i2 < zzghVar.size()) {
            zzfoVar2.zzi(zzghVar.zze(i2));
            i2++;
        }
    }
}
