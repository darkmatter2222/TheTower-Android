package com.google.android.gms.internal.play_billing;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfy {
    private static final zzfy zzd = new zzfy(true);
    final zzid zza = new zzhy();
    boolean zzb;
    boolean zzc;

    private zzfy() {
    }

    private zzfy(boolean z) {
        zzg();
        zzg();
    }

    static int zza(zzjb zzjbVar, int i, Object obj) {
        int iZzy = zzfo.zzy(i << 3);
        if (zzjbVar == zzjb.GROUP) {
            iZzy += iZzy;
        }
        return iZzy + zzb(zzjbVar, obj);
    }

    static int zzb(zzjb zzjbVar, Object obj) {
        int iZzb;
        int iZzy;
        zzjb zzjbVar2 = zzjb.DOUBLE;
        zzjc zzjcVar = zzjc.INT;
        switch (zzjbVar) {
            case DOUBLE:
                ((Double) obj).doubleValue();
                int i = zzfo.zzb;
                return 8;
            case FLOAT:
                ((Float) obj).floatValue();
                int i2 = zzfo.zzb;
                return 4;
            case INT64:
                return zzfo.zzz(((Long) obj).longValue());
            case UINT64:
                return zzfo.zzz(((Long) obj).longValue());
            case INT32:
                return zzfo.zzz(((Integer) obj).intValue());
            case FIXED64:
                ((Long) obj).longValue();
                int i3 = zzfo.zzb;
                return 8;
            case FIXED32:
                ((Integer) obj).intValue();
                int i4 = zzfo.zzb;
                return 4;
            case BOOL:
                ((Boolean) obj).booleanValue();
                int i5 = zzfo.zzb;
                return 1;
            case STRING:
                if (!(obj instanceof zzfg)) {
                    int i6 = zzfo.zzb;
                    int i7 = zzix.zza;
                    iZzb = zziu.zzb((String) obj);
                    iZzy = zzfo.zzy(iZzb);
                } else {
                    int i8 = zzfo.zzb;
                    iZzb = ((zzfg) obj).zzd();
                    iZzy = zzfo.zzy(iZzb);
                }
                break;
            case GROUP:
                return ((zzhm) obj).zzn();
            case MESSAGE:
                return obj instanceof zzgq ? ((zzgq) obj).zzc() : zzfo.zzx((zzhm) obj);
            case BYTES:
                if (!(obj instanceof zzfg)) {
                    int i9 = zzfo.zzb;
                    iZzb = ((byte[]) obj).length;
                    iZzy = zzfo.zzy(iZzb);
                } else {
                    int i10 = zzfo.zzb;
                    iZzb = ((zzfg) obj).zzd();
                    iZzy = zzfo.zzy(iZzb);
                }
                break;
            case UINT32:
                return zzfo.zzy(((Integer) obj).intValue());
            case ENUM:
                return obj instanceof zzgi ? zzfo.zzz(((zzgi) obj).zza()) : zzfo.zzz(((Integer) obj).intValue());
            case SFIXED32:
                ((Integer) obj).intValue();
                int i11 = zzfo.zzb;
                return 4;
            case SFIXED64:
                ((Long) obj).longValue();
                int i12 = zzfo.zzb;
                return 8;
            case SINT32:
                int iIntValue = ((Integer) obj).intValue();
                return zzfo.zzy((iIntValue >> 31) ^ (iIntValue + iIntValue));
            case SINT64:
                long jLongValue = ((Long) obj).longValue();
                return zzfo.zzz((jLongValue >> 63) ^ (jLongValue + jLongValue));
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
        return iZzy + iZzb;
    }

    public static int zzc(zzfx zzfxVar, Object obj) {
        zzjb zzjbVarZzb = zzfxVar.zzb();
        int iZza = zzfxVar.zza();
        if (!zzfxVar.zze()) {
            return zza(zzjbVarZzb, iZza, obj);
        }
        List list = (List) obj;
        int size = list.size();
        int i = 0;
        if (!zzfxVar.zzd()) {
            int iZza2 = 0;
            while (i < size) {
                iZza2 += zza(zzjbVarZzb, iZza, list.get(i));
                i++;
            }
            return iZza2;
        }
        if (list.isEmpty()) {
            return 0;
        }
        int iZzb = 0;
        while (i < size) {
            iZzb += zzb(zzjbVarZzb, list.get(i));
            i++;
        }
        return zzfo.zzy(iZza << 3) + iZzb + zzfo.zzy(iZzb);
    }

    public static zzfy zze() {
        return zzd;
    }

    static void zzi(zzfo zzfoVar, zzjb zzjbVar, int i, Object obj) throws IOException {
        if (zzjbVar == zzjb.GROUP) {
            zzfoVar.zzs(i, 3);
            ((zzhm) obj).zzD(zzfoVar);
            zzfoVar.zzs(i, 4);
            return;
        }
        zzfoVar.zzs(i, zzjbVar.zza());
        zzjc zzjcVar = zzjc.INT;
        switch (zzjbVar) {
            case DOUBLE:
                zzfoVar.zzk(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                break;
            case FLOAT:
                zzfoVar.zzi(Float.floatToRawIntBits(((Float) obj).floatValue()));
                break;
            case INT64:
                zzfoVar.zzw(((Long) obj).longValue());
                break;
            case UINT64:
                zzfoVar.zzw(((Long) obj).longValue());
                break;
            case INT32:
                zzfoVar.zzm(((Integer) obj).intValue());
                break;
            case FIXED64:
                zzfoVar.zzk(((Long) obj).longValue());
                break;
            case FIXED32:
                zzfoVar.zzi(((Integer) obj).intValue());
                break;
            case BOOL:
                zzfoVar.zzb(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                break;
            case STRING:
                if (!(obj instanceof zzfg)) {
                    zzfoVar.zzr((String) obj);
                } else {
                    zzfoVar.zzg((zzfg) obj);
                }
                break;
            case GROUP:
                ((zzhm) obj).zzD(zzfoVar);
                break;
            case MESSAGE:
                zzfoVar.zzn((zzhm) obj);
                break;
            case BYTES:
                if (!(obj instanceof zzfg)) {
                    byte[] bArr = (byte[]) obj;
                    zzfoVar.zze(bArr, 0, bArr.length);
                } else {
                    zzfoVar.zzg((zzfg) obj);
                }
                break;
            case UINT32:
                zzfoVar.zzu(((Integer) obj).intValue());
                break;
            case ENUM:
                if (!(obj instanceof zzgi)) {
                    zzfoVar.zzm(((Integer) obj).intValue());
                } else {
                    zzfoVar.zzm(((zzgi) obj).zza());
                }
                break;
            case SFIXED32:
                zzfoVar.zzi(((Integer) obj).intValue());
                break;
            case SFIXED64:
                zzfoVar.zzk(((Long) obj).longValue());
                break;
            case SINT32:
                int iIntValue = ((Integer) obj).intValue();
                zzfoVar.zzu((iIntValue >> 31) ^ (iIntValue + iIntValue));
                break;
            case SINT64:
                long jLongValue = ((Long) obj).longValue();
                zzfoVar.zzw((jLongValue >> 63) ^ (jLongValue + jLongValue));
                break;
        }
    }

    private static boolean zzk(Map.Entry entry) {
        zzfx zzfxVar = (zzfx) entry.getKey();
        if (zzfxVar.zzc() != zzjc.MESSAGE) {
            return true;
        }
        if (!zzfxVar.zze()) {
            return zzl(entry.getValue());
        }
        List list = (List) entry.getValue();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!zzl(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    private static boolean zzl(Object obj) {
        if (obj instanceof zzhn) {
            return ((zzhn) obj).zzo();
        }
        if (obj instanceof zzgq) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    private static final int zzm(Map.Entry entry) {
        zzfx zzfxVar = (zzfx) entry.getKey();
        Object value = entry.getValue();
        if (zzfxVar.zzc() != zzjc.MESSAGE || zzfxVar.zze() || zzfxVar.zzd()) {
            return zzc(zzfxVar, value);
        }
        if (value instanceof zzgq) {
            return ((zzgq) value).zza(((zzfx) entry.getKey()).zza());
        }
        int iZza = ((zzfx) entry.getKey()).zza();
        int iZzy = zzfo.zzy(8);
        return iZzy + iZzy + zzfo.zzy(16) + zzfo.zzy(iZza) + zzfo.zzy(24) + zzfo.zzx((zzhm) value);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:32:? A[RETURN, SYNTHETIC] */
    private static final void zzn(zzfx zzfxVar, Object obj) {
        boolean z;
        zzfxVar.zzb();
        obj.getClass();
        zzjb zzjbVar = zzjb.DOUBLE;
        zzjc zzjcVar = zzjc.INT;
        switch (r0.zzb()) {
            case INT:
                z = obj instanceof Integer;
                if (z) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzfxVar.zza()), zzfxVar.zzb().zzb(), obj.getClass().getName()));
            case LONG:
                z = obj instanceof Long;
                if (z) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzfxVar.zza()), zzfxVar.zzb().zzb(), obj.getClass().getName()));
            case FLOAT:
                z = obj instanceof Float;
                if (z) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzfxVar.zza()), zzfxVar.zzb().zzb(), obj.getClass().getName()));
            case DOUBLE:
                z = obj instanceof Double;
                if (z) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzfxVar.zza()), zzfxVar.zzb().zzb(), obj.getClass().getName()));
            case BOOLEAN:
                z = obj instanceof Boolean;
                if (z) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzfxVar.zza()), zzfxVar.zzb().zzb(), obj.getClass().getName()));
            case STRING:
                z = obj instanceof String;
                if (z) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzfxVar.zza()), zzfxVar.zzb().zzb(), obj.getClass().getName()));
            case BYTE_STRING:
                if ((obj instanceof zzfg) || (obj instanceof byte[])) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzfxVar.zza()), zzfxVar.zzb().zzb(), obj.getClass().getName()));
            case ENUM:
                if ((obj instanceof Integer) || (obj instanceof zzgi)) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzfxVar.zza()), zzfxVar.zzb().zzb(), obj.getClass().getName()));
            case MESSAGE:
                if ((obj instanceof zzhm) || (obj instanceof zzgq)) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzfxVar.zza()), zzfxVar.zzb().zzb(), obj.getClass().getName()));
            default:
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzfxVar.zza()), zzfxVar.zzb().zzb(), obj.getClass().getName()));
        }
    }

    public final /* bridge */ /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzfy zzfyVar = new zzfy();
        zzid zzidVar = this.zza;
        int iZzc = zzidVar.zzc();
        for (int i = 0; i < iZzc; i++) {
            Map.Entry entryZzg = zzidVar.zzg(i);
            zzfyVar.zzh((zzfx) ((zzhz) entryZzg).zza(), entryZzg.getValue());
        }
        for (Map.Entry entry : zzidVar.zzd()) {
            zzfyVar.zzh((zzfx) entry.getKey(), entry.getValue());
        }
        zzfyVar.zzc = this.zzc;
        return zzfyVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzfy) {
            return this.zza.equals(((zzfy) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final int zzd() {
        zzid zzidVar = this.zza;
        int iZzc = zzidVar.zzc();
        int iZzm = 0;
        for (int i = 0; i < iZzc; i++) {
            iZzm += zzm(zzidVar.zzg(i));
        }
        Iterator it = zzidVar.zzd().iterator();
        while (it.hasNext()) {
            iZzm += zzm((Map.Entry) it.next());
        }
        return iZzm;
    }

    public final Iterator zzf() {
        zzid zzidVar = this.zza;
        if (zzidVar.isEmpty()) {
            return Collections.emptyIterator();
        }
        return this.zzc ? new zzgo(zzidVar.entrySet().iterator()) : zzidVar.entrySet().iterator();
    }

    public final void zzg() {
        if (this.zzb) {
            return;
        }
        zzid zzidVar = this.zza;
        int iZzc = zzidVar.zzc();
        for (int i = 0; i < iZzc; i++) {
            Object value = zzidVar.zzg(i).getValue();
            if (value instanceof zzgg) {
                ((zzgg) value).zzz();
            }
        }
        Iterator it = zzidVar.zzd().iterator();
        while (it.hasNext()) {
            Object value2 = ((Map.Entry) it.next()).getValue();
            if (value2 instanceof zzgg) {
                ((zzgg) value2).zzz();
            }
        }
        zzidVar.zza();
        this.zzb = true;
    }

    public final void zzh(zzfx zzfxVar, Object obj) {
        if (!zzfxVar.zze()) {
            zzn(zzfxVar, obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            List list = (List) obj;
            int size = list.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                Object obj2 = list.get(i);
                zzn(zzfxVar, obj2);
                arrayList.add(obj2);
            }
            obj = arrayList;
        }
        if (obj instanceof zzgq) {
            this.zzc = true;
        }
        this.zza.put(zzfxVar, obj);
    }

    public final boolean zzj() {
        zzid zzidVar = this.zza;
        int iZzc = zzidVar.zzc();
        for (int i = 0; i < iZzc; i++) {
            if (!zzk(zzidVar.zzg(i))) {
                return false;
            }
        }
        Iterator it = zzidVar.zzd().iterator();
        while (it.hasNext()) {
            if (!zzk((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }
}
