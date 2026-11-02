package com.google.android.gms.internal.play_billing;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzhp<T> implements zzhw<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzis.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzhm zzg;
    private final boolean zzh;
    private final int[] zzi;
    private final int zzj;
    private final int zzk;
    private final zzil zzl;
    private final zzfu zzm;

    private zzhp(int[] iArr, Object[] objArr, int i, int i2, zzhm zzhmVar, boolean z, int[] iArr2, int i3, int i4, zzhr zzhrVar, zzgv zzgvVar, zzil zzilVar, zzfu zzfuVar, zzhh zzhhVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        boolean z2 = false;
        if (zzfuVar != null && (zzhmVar instanceof zzgd)) {
            z2 = true;
        }
        this.zzh = z2;
        this.zzi = iArr2;
        this.zzj = i3;
        this.zzk = i4;
        this.zzl = zzilVar;
        this.zzm = zzfuVar;
        this.zzg = zzhmVar;
    }

    private final void zzA(Object obj, Object obj2, int i) {
        if (zzH(obj2, i)) {
            int iZzq = zzq(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = iZzq;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
            }
            zzhw zzhwVarZzt = zzt(i);
            if (!zzH(obj, i)) {
                if (zzK(object)) {
                    Object objZze = zzhwVarZzt.zze();
                    zzhwVarZzt.zzg(objZze, object);
                    unsafe.putObject(obj, j, objZze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzC(obj, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzK(object2)) {
                Object objZze2 = zzhwVarZzt.zze();
                zzhwVarZzt.zzg(objZze2, object2);
                unsafe.putObject(obj, j, objZze2);
                object2 = objZze2;
            }
            zzhwVarZzt.zzg(object2, object);
        }
    }

    private final void zzB(Object obj, Object obj2, int i) {
        int[] iArr = this.zzc;
        int i2 = iArr[i];
        if (zzM(obj2, i2, i)) {
            int iZzq = zzq(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = iZzq;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + iArr[i] + " is present but null: " + obj2.toString());
            }
            zzhw zzhwVarZzt = zzt(i);
            if (!zzM(obj, i2, i)) {
                if (zzK(object)) {
                    Object objZze = zzhwVarZzt.zze();
                    zzhwVarZzt.zzg(objZze, object);
                    unsafe.putObject(obj, j, objZze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzD(obj, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzK(object2)) {
                Object objZze2 = zzhwVarZzt.zze();
                zzhwVarZzt.zzg(objZze2, object2);
                unsafe.putObject(obj, j, objZze2);
                object2 = objZze2;
            }
            zzhwVarZzt.zzg(object2, object);
        }
    }

    private final void zzC(Object obj, int i) {
        int iZzn = zzn(i);
        long j = 1048575 & iZzn;
        if (j == 1048575) {
            return;
        }
        zzis.zzq(obj, j, (1 << (iZzn >>> 20)) | zzis.zzc(obj, j));
    }

    private final void zzD(Object obj, int i, int i2) {
        zzis.zzq(obj, zzn(i2) & 1048575, i);
    }

    private final void zzE(Object obj, int i, Object obj2) {
        zzb.putObject(obj, zzq(i) & 1048575, obj2);
        zzC(obj, i);
    }

    private final void zzF(Object obj, int i, int i2, Object obj2) {
        zzb.putObject(obj, zzq(i2) & 1048575, obj2);
        zzD(obj, i, i2);
    }

    private final boolean zzG(Object obj, Object obj2, int i) {
        return zzH(obj, i) == zzH(obj2, i);
    }

    private final boolean zzH(Object obj, int i) {
        int iZzn = zzn(i);
        long j = iZzn & 1048575;
        if (j != 1048575) {
            return (zzis.zzc(obj, j) & (1 << (iZzn >>> 20))) != 0;
        }
        int iZzq = zzq(i);
        long j2 = iZzq & 1048575;
        switch (zzp(iZzq)) {
            case 0:
                return Double.doubleToRawLongBits(zzis.zza(obj, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzis.zzb(obj, j2)) != 0;
            case 2:
                return zzis.zzd(obj, j2) != 0;
            case 3:
                return zzis.zzd(obj, j2) != 0;
            case 4:
                return zzis.zzc(obj, j2) != 0;
            case 5:
                return zzis.zzd(obj, j2) != 0;
            case 6:
                return zzis.zzc(obj, j2) != 0;
            case 7:
                return zzis.zzw(obj, j2);
            case 8:
                Object objZzf = zzis.zzf(obj, j2);
                if (objZzf instanceof String) {
                    return !((String) objZzf).isEmpty();
                }
                if (objZzf instanceof zzfg) {
                    return !zzfg.zza.equals(objZzf);
                }
                return zzN();
            case 9:
                return zzis.zzf(obj, j2) != null;
            case 10:
                return !zzfg.zza.equals(zzis.zzf(obj, j2));
            case 11:
                return zzis.zzc(obj, j2) != 0;
            case 12:
                return zzis.zzc(obj, j2) != 0;
            case 13:
                return zzis.zzc(obj, j2) != 0;
            case 14:
                return zzis.zzd(obj, j2) != 0;
            case 15:
                return zzis.zzc(obj, j2) != 0;
            case 16:
                return zzis.zzd(obj, j2) != 0;
            case 17:
                return zzis.zzf(obj, j2) != null;
            default:
                return zzN();
        }
    }

    private final boolean zzI(Object obj, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return zzH(obj, i);
        }
        return (i3 & i4) != 0;
    }

    private static boolean zzJ(Object obj, int i, zzhw zzhwVar) {
        return zzhwVar.zzk(zzis.zzf(obj, i & 1048575));
    }

    private static boolean zzK(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzgg) {
            return ((zzgg) obj).zzF();
        }
        return true;
    }

    private final boolean zzL(Object obj, Object obj2, int i) {
        long jZzn = zzn(i) & 1048575;
        return zzis.zzc(obj, jZzn) == zzis.zzc(obj2, jZzn);
    }

    private final boolean zzM(Object obj, int i, int i2) {
        return zzis.zzc(obj, (long) (zzn(i2) & 1048575)) == i;
    }

    private boolean zzN() {
        throw new IllegalArgumentException();
    }

    private static final int zzO(byte[] bArr, int i, int i2, zzjb zzjbVar, Class cls, zzeu zzeuVar) throws IOException {
        zzjb zzjbVar2 = zzjb.DOUBLE;
        switch (zzjbVar) {
            case DOUBLE:
                int i3 = i + 8;
                zzeuVar.zzc = Double.valueOf(Double.longBitsToDouble(zzev.zzp(bArr, i)));
                return i3;
            case FLOAT:
                int i4 = i + 4;
                zzeuVar.zzc = Float.valueOf(Float.intBitsToFloat(zzev.zzb(bArr, i)));
                return i4;
            case INT64:
            case UINT64:
                int iZzl = zzev.zzl(bArr, i, zzeuVar);
                zzeuVar.zzc = Long.valueOf(zzeuVar.zzb);
                return iZzl;
            case INT32:
            case UINT32:
            case ENUM:
                int iZzi = zzev.zzi(bArr, i, zzeuVar);
                zzeuVar.zzc = Integer.valueOf(zzeuVar.zza);
                return iZzi;
            case FIXED64:
            case SFIXED64:
                int i5 = i + 8;
                zzeuVar.zzc = Long.valueOf(zzev.zzp(bArr, i));
                return i5;
            case FIXED32:
            case SFIXED32:
                int i6 = i + 4;
                zzeuVar.zzc = Integer.valueOf(zzev.zzb(bArr, i));
                return i6;
            case BOOL:
                int iZzl2 = zzev.zzl(bArr, i, zzeuVar);
                zzeuVar.zzc = Boolean.valueOf(zzeuVar.zzb != 0);
                return iZzl2;
            case STRING:
                return zzev.zzg(bArr, i, zzeuVar);
            case GROUP:
            default:
                throw new RuntimeException("unsupported field type.");
            case MESSAGE:
                return zzev.zzd(zzht.zza().zzb(cls), bArr, i, i2, zzeuVar);
            case BYTES:
                return zzev.zza(bArr, i, zzeuVar);
            case SINT32:
                int iZzi2 = zzev.zzi(bArr, i, zzeuVar);
                zzeuVar.zzc = Integer.valueOf(zzfk.zzb(zzeuVar.zza));
                return iZzi2;
            case SINT64:
                int iZzl3 = zzev.zzl(bArr, i, zzeuVar);
                zzeuVar.zzc = Long.valueOf(zzfk.zzc(zzeuVar.zzb));
                return iZzl3;
        }
    }

    private static final void zzP(int i, Object obj, zzjd zzjdVar) throws IOException {
        if (obj instanceof String) {
            zzjdVar.zzH(i, (String) obj);
        } else {
            zzjdVar.zzd(i, (zzfg) obj);
        }
    }

    static zzim zzd(Object obj) {
        zzgg zzggVar = (zzgg) obj;
        zzim zzimVar = zzggVar.zzc;
        if (zzimVar != zzim.zzc()) {
            return zzimVar;
        }
        zzim zzimVarZzf = zzim.zzf();
        zzggVar.zzc = zzimVarZzf;
        return zzimVarZzf;
    }

    /* JADX WARN: Code duplicated, block: B:125:0x0260  */
    /* JADX WARN: Code duplicated, block: B:126:0x0263  */
    /* JADX WARN: Code duplicated, block: B:129:0x0283  */
    /* JADX WARN: Code duplicated, block: B:130:0x0286  */
    /* JADX WARN: Code duplicated, block: B:169:0x0342  */
    /* JADX WARN: Code duplicated, block: B:187:0x03ae  */
    /* JADX WARN: Code duplicated, block: B:188:0x03b1  */
    /* JADX WARN: Code duplicated, block: B:191:0x03b6  */
    /* JADX WARN: Code duplicated, block: B:192:0x03b9  */
    /* JADX WARN: Code duplicated, block: B:194:0x03bc  */
    /* JADX WARN: Code duplicated, block: B:195:0x03bf  */
    static zzhp zzl(Class cls, zzhj zzhjVar, zzhr zzhrVar, zzgv zzgvVar, zzil zzilVar, zzfu zzfuVar, zzhh zzhhVar) {
        int i;
        int iCharAt;
        int i2;
        int i3;
        int i4;
        int[] iArr;
        int i5;
        int i6;
        int i7;
        int i8;
        char cCharAt;
        int i9;
        int i10;
        char cCharAt2;
        int i11;
        char cCharAt3;
        int i12;
        char cCharAt4;
        int i13;
        char cCharAt5;
        int i14;
        char cCharAt6;
        int i15;
        char cCharAt7;
        int i16;
        int i17;
        int i18;
        int i19;
        int iObjectFieldOffset;
        int i20;
        char c;
        int i21;
        int i22;
        int i23;
        int i24;
        Field fieldZzy;
        int iObjectFieldOffset2;
        int i25;
        char cCharAt8;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        int i34;
        Object obj;
        Field fieldZzy2;
        int i35;
        Object obj2;
        Field fieldZzy3;
        int i36;
        char cCharAt9;
        int i37;
        char cCharAt10;
        int i38;
        char cCharAt11;
        int i39;
        char cCharAt12;
        if (!(zzhjVar instanceof zzhv)) {
            throw null;
        }
        zzhv zzhvVar = (zzhv) zzhjVar;
        String strZzd = zzhvVar.zzd();
        int length = strZzd.length();
        char c2 = 55296;
        if (strZzd.charAt(0) >= 55296) {
            int i40 = 1;
            while (true) {
                i = i40 + 1;
                if (strZzd.charAt(i40) < 55296) {
                    break;
                }
                i40 = i;
            }
        } else {
            i = 1;
        }
        int i41 = i + 1;
        int iCharAt2 = strZzd.charAt(i);
        if (iCharAt2 >= 55296) {
            int i42 = iCharAt2 & 8191;
            int i43 = 13;
            while (true) {
                i39 = i41 + 1;
                cCharAt12 = strZzd.charAt(i41);
                if (cCharAt12 < 55296) {
                    break;
                }
                i42 |= (cCharAt12 & 8191) << i43;
                i43 += 13;
                i41 = i39;
            }
            iCharAt2 = i42 | (cCharAt12 << i43);
            i41 = i39;
        }
        if (iCharAt2 == 0) {
            i6 = 0;
            i4 = 0;
            iCharAt = 0;
            i5 = 0;
            i3 = 0;
            i7 = 0;
            iArr = zza;
            i2 = 0;
        } else {
            int i44 = i41 + 1;
            int iCharAt3 = strZzd.charAt(i41);
            if (iCharAt3 >= 55296) {
                int i45 = iCharAt3 & 8191;
                int i46 = 13;
                while (true) {
                    i15 = i44 + 1;
                    cCharAt7 = strZzd.charAt(i44);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i45 |= (cCharAt7 & 8191) << i46;
                    i46 += 13;
                    i44 = i15;
                }
                iCharAt3 = i45 | (cCharAt7 << i46);
                i44 = i15;
            }
            int i47 = i44 + 1;
            int iCharAt4 = strZzd.charAt(i44);
            if (iCharAt4 >= 55296) {
                int i48 = iCharAt4 & 8191;
                int i49 = 13;
                while (true) {
                    i14 = i47 + 1;
                    cCharAt6 = strZzd.charAt(i47);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i48 |= (cCharAt6 & 8191) << i49;
                    i49 += 13;
                    i47 = i14;
                }
                iCharAt4 = i48 | (cCharAt6 << i49);
                i47 = i14;
            }
            int i50 = i47 + 1;
            int iCharAt5 = strZzd.charAt(i47);
            if (iCharAt5 >= 55296) {
                int i51 = iCharAt5 & 8191;
                int i52 = 13;
                while (true) {
                    i13 = i50 + 1;
                    cCharAt5 = strZzd.charAt(i50);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i51 |= (cCharAt5 & 8191) << i52;
                    i52 += 13;
                    i50 = i13;
                }
                iCharAt5 = i51 | (cCharAt5 << i52);
                i50 = i13;
            }
            int i53 = i50 + 1;
            int iCharAt6 = strZzd.charAt(i50);
            if (iCharAt6 >= 55296) {
                int i54 = iCharAt6 & 8191;
                int i55 = 13;
                while (true) {
                    i12 = i53 + 1;
                    cCharAt4 = strZzd.charAt(i53);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i54 |= (cCharAt4 & 8191) << i55;
                    i55 += 13;
                    i53 = i12;
                }
                iCharAt6 = i54 | (cCharAt4 << i55);
                i53 = i12;
            }
            int i56 = i53 + 1;
            iCharAt = strZzd.charAt(i53);
            if (iCharAt >= 55296) {
                int i57 = iCharAt & 8191;
                int i58 = 13;
                while (true) {
                    i11 = i56 + 1;
                    cCharAt3 = strZzd.charAt(i56);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i57 |= (cCharAt3 & 8191) << i58;
                    i58 += 13;
                    i56 = i11;
                }
                iCharAt = i57 | (cCharAt3 << i58);
                i56 = i11;
            }
            int i59 = i56 + 1;
            int iCharAt7 = strZzd.charAt(i56);
            if (iCharAt7 >= 55296) {
                int i60 = iCharAt7 & 8191;
                int i61 = 13;
                while (true) {
                    i10 = i59 + 1;
                    cCharAt2 = strZzd.charAt(i59);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i60 |= (cCharAt2 & 8191) << i61;
                    i61 += 13;
                    i59 = i10;
                }
                iCharAt7 = i60 | (cCharAt2 << i61);
                i59 = i10;
            }
            int i62 = i59 + 1;
            if (strZzd.charAt(i59) >= 55296) {
                while (true) {
                    i9 = i62 + 1;
                    if (strZzd.charAt(i62) < 55296) {
                        break;
                    }
                    i62 = i9;
                }
                i62 = i9;
            }
            int i63 = i62 + 1;
            int iCharAt8 = strZzd.charAt(i62);
            if (iCharAt8 >= 55296) {
                int i64 = iCharAt8 & 8191;
                int i65 = 13;
                while (true) {
                    i8 = i63 + 1;
                    cCharAt = strZzd.charAt(i63);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i64 |= (cCharAt & 8191) << i65;
                    i65 += 13;
                    i63 = i8;
                }
                iCharAt8 = i64 | (cCharAt << i65);
                i63 = i8;
            }
            int i66 = iCharAt3 + iCharAt3 + iCharAt4;
            int[] iArr2 = new int[iCharAt8 + iCharAt7 + iCharAt3];
            i2 = iCharAt3;
            i41 = i63;
            i3 = iCharAt6;
            i4 = i66;
            iArr = iArr2;
            int i67 = iCharAt7;
            i5 = iCharAt5;
            i6 = i67;
            i7 = iCharAt8;
        }
        Unsafe unsafe = zzb;
        Object[] objArrZze = zzhvVar.zze();
        Class<?> cls2 = zzhvVar.zza().getClass();
        int i68 = i7 + i6;
        int i69 = iCharAt + iCharAt;
        int[] iArr3 = new int[iCharAt * 3];
        Object[] objArr = new Object[i69];
        int i70 = i7;
        int i71 = i68;
        int i72 = 0;
        int i73 = 0;
        while (i41 < length) {
            int i74 = i41 + 1;
            int iCharAt9 = strZzd.charAt(i41);
            if (iCharAt9 >= c2) {
                int i75 = iCharAt9 & 8191;
                int i76 = i74;
                int i77 = 13;
                while (true) {
                    i38 = i76 + 1;
                    cCharAt11 = strZzd.charAt(i76);
                    if (cCharAt11 < c2) {
                        break;
                    }
                    i75 |= (cCharAt11 & 8191) << i77;
                    i77 += 13;
                    i76 = i38;
                }
                iCharAt9 = i75 | (cCharAt11 << i77);
                i16 = i38;
            } else {
                i16 = i74;
            }
            int i78 = i16 + 1;
            int iCharAt10 = strZzd.charAt(i16);
            if (iCharAt10 >= c2) {
                int i79 = iCharAt10 & 8191;
                int i80 = i78;
                int i81 = 13;
                while (true) {
                    i37 = i80 + 1;
                    cCharAt10 = strZzd.charAt(i80);
                    if (cCharAt10 < c2) {
                        break;
                    }
                    i79 |= (cCharAt10 & 8191) << i81;
                    i81 += 13;
                    i80 = i37;
                }
                iCharAt10 = i79 | (cCharAt10 << i81);
                i17 = i37;
            } else {
                i17 = i78;
            }
            if ((iCharAt10 & 1024) != 0) {
                iArr[i72] = i73;
                i72++;
            }
            int i82 = iCharAt10 & 255;
            zzhv zzhvVar2 = zzhvVar;
            int i83 = iCharAt10 & 2048;
            if (i82 >= 51) {
                int i84 = i17 + 1;
                int iCharAt11 = strZzd.charAt(i17);
                char c3 = 55296;
                if (iCharAt11 >= 55296) {
                    int i85 = iCharAt11 & 8191;
                    int i86 = i84;
                    int i87 = 13;
                    while (true) {
                        i36 = i86 + 1;
                        cCharAt9 = strZzd.charAt(i86);
                        if (cCharAt9 < c3) {
                            break;
                        }
                        i85 |= (cCharAt9 & 8191) << i87;
                        i87 += 13;
                        i86 = i36;
                        c3 = 55296;
                    }
                    iCharAt11 = i85 | (cCharAt9 << i87);
                    i31 = i36;
                } else {
                    i31 = i84;
                }
                i21 = i31;
                int i88 = i82 - 51;
                i18 = length;
                if (i88 == 9 || i88 == 17) {
                    i32 = i4 + 1;
                    int i89 = i73 / 3;
                    objArr[i89 + i89 + 1] = objArrZze[i4];
                } else {
                    if (i88 != 12) {
                        i33 = i83;
                    } else if (zzhvVar2.zzc() == 1 || i83 != 0) {
                        i32 = i4 + 1;
                        int i90 = i73 / 3;
                        objArr[i90 + i90 + 1] = objArrZze[i4];
                    } else {
                        i33 = 0;
                    }
                    i34 = iCharAt11 + iCharAt11;
                    obj = objArrZze[i34];
                    i83 = i33;
                    if (obj instanceof Field) {
                        fieldZzy2 = (Field) obj;
                    } else {
                        fieldZzy2 = zzy(cls2, (String) obj);
                        objArrZze[i34] = fieldZzy2;
                        iArr[i71] = i73;
                        i71++;
                    }
                    int i91 = i2;
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldZzy2);
                    i35 = i34 + 1;
                    obj2 = objArrZze[i35];
                    i19 = i91;
                    if (obj2 instanceof Field) {
                        fieldZzy3 = (Field) obj2;
                    } else {
                        fieldZzy3 = zzy(cls2, (String) obj2);
                        objArrZze[i35] = fieldZzy3;
                    }
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzy3);
                    strZzd = strZzd;
                    i23 = iObjectFieldOffset3;
                    i24 = 0;
                    c = 55296;
                }
                i4 = i32;
                i33 = i83;
                i34 = iCharAt11 + iCharAt11;
                obj = objArrZze[i34];
                i83 = i33;
                if (obj instanceof Field) {
                    fieldZzy2 = (Field) obj;
                } else {
                    fieldZzy2 = zzy(cls2, (String) obj);
                    objArrZze[i34] = fieldZzy2;
                    iArr[i71] = i73;
                    i71++;
                }
                int i92 = i2;
                int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldZzy2);
                i35 = i34 + 1;
                obj2 = objArrZze[i35];
                i19 = i92;
                if (obj2 instanceof Field) {
                    fieldZzy3 = (Field) obj2;
                } else {
                    fieldZzy3 = zzy(cls2, (String) obj2);
                    objArrZze[i35] = fieldZzy3;
                }
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzy3);
                strZzd = strZzd;
                i23 = iObjectFieldOffset4;
                i24 = 0;
                c = 55296;
            } else {
                i18 = length;
                i19 = i2;
                int i93 = i4 + 1;
                Field fieldZzy4 = zzy(cls2, (String) objArrZze[i4]);
                if (i82 == 9 || i82 == 17) {
                    int i94 = i73 / 3;
                    objArr[i94 + i94 + 1] = fieldZzy4.getType();
                } else {
                    if (i82 != 27) {
                        if (i82 == 49) {
                            i4 += 2;
                            i26 = 1;
                        } else if (i82 == 12 || i82 == 30 || i82 == 44) {
                            if (zzhvVar2.zzc() == 1 || i83 != 0) {
                                i4 += 2;
                                int i95 = i73 / 3;
                                objArr[i95 + i95 + 1] = objArrZze[i93];
                            } else {
                                i4 = i93;
                                i83 = 0;
                            }
                        } else if (i82 == 50) {
                            int i96 = i4 + 2;
                            int i97 = i70 + 1;
                            iArr[i70] = i73;
                            int i98 = i73 / 3;
                            int i99 = i98 + i98;
                            objArr[i99] = objArrZze[i93];
                            if (i83 != 0) {
                                objArr[i99 + 1] = objArrZze[i96];
                                i4 += 3;
                                i70 = i97;
                            } else {
                                i4 = i96;
                                i70 = i97;
                                i83 = 0;
                            }
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzy4);
                        i20 = 1048575;
                        if ((iCharAt10 & 4096) != 0 || i82 > 17) {
                            c = 55296;
                            i21 = i17;
                            i22 = i83;
                            i23 = iObjectFieldOffset;
                            i24 = 0;
                        } else {
                            int i100 = i17 + 1;
                            int iCharAt12 = strZzd.charAt(i17);
                            if (iCharAt12 >= 55296) {
                                int i101 = iCharAt12 & 8191;
                                int i102 = 13;
                                while (true) {
                                    i25 = i100 + 1;
                                    cCharAt8 = strZzd.charAt(i100);
                                    if (cCharAt8 < 55296) {
                                        break;
                                    }
                                    i101 |= (cCharAt8 & 8191) << i102;
                                    i102 += 13;
                                    i100 = i25;
                                }
                                iCharAt12 = i101 | (cCharAt8 << i102);
                                i100 = i25;
                            }
                            int i103 = i19 + i19 + (iCharAt12 / 32);
                            Object obj3 = objArrZze[i103];
                            int i104 = i100;
                            if (obj3 instanceof Field) {
                                fieldZzy = (Field) obj3;
                            } else {
                                fieldZzy = zzy(cls2, (String) obj3);
                                objArrZze[i103] = fieldZzy;
                            }
                            iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzy);
                            i23 = iObjectFieldOffset;
                            i21 = i104;
                            c = 55296;
                            i24 = iCharAt12 % 32;
                        }
                        int i105 = i73 + 1;
                        iArr3[i73] = iCharAt9;
                        int i106 = i73 + 2;
                        i27 = i22;
                        if ((iCharAt10 & 512) != 0) {
                            i28 = 536870912;
                        } else {
                            i28 = 0;
                        }
                        if ((iCharAt10 & 256) != 0) {
                            i29 = 268435456;
                        } else {
                            i29 = 0;
                        }
                        if (i27 != 0) {
                            i30 = Integer.MIN_VALUE;
                        } else {
                            i30 = 0;
                        }
                        iArr3[i105] = i28 | i29 | i30 | (i82 << 20) | i23;
                        i73 += 3;
                        iArr3[i106] = (i24 << 20) | i20;
                        strZzd = strZzd;
                        c2 = c;
                        zzhvVar = zzhvVar2;
                        i41 = i21;
                        length = i18;
                        i2 = i19;
                    } else {
                        i26 = 1;
                        i4 += 2;
                    }
                    int i107 = i73 / 3;
                    objArr[i107 + i107 + i26] = objArrZze[i93];
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzy4);
                    i20 = 1048575;
                    if ((iCharAt10 & 4096) != 0) {
                    }
                    c = 55296;
                    i21 = i17;
                    i22 = i83;
                    i23 = iObjectFieldOffset;
                    i24 = 0;
                    int i108 = i73 + 1;
                    iArr3[i73] = iCharAt9;
                    int i109 = i73 + 2;
                    i27 = i22;
                    if ((iCharAt10 & 512) != 0) {
                        i28 = 536870912;
                    } else {
                        i28 = 0;
                    }
                    if ((iCharAt10 & 256) != 0) {
                        i29 = 268435456;
                    } else {
                        i29 = 0;
                    }
                    if (i27 != 0) {
                        i30 = Integer.MIN_VALUE;
                    } else {
                        i30 = 0;
                    }
                    iArr3[i108] = i28 | i29 | i30 | (i82 << 20) | i23;
                    i73 += 3;
                    iArr3[i109] = (i24 << 20) | i20;
                    strZzd = strZzd;
                    c2 = c;
                    zzhvVar = zzhvVar2;
                    i41 = i21;
                    length = i18;
                    i2 = i19;
                }
                i4 = i93;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzy4);
                i20 = 1048575;
                if ((iCharAt10 & 4096) != 0) {
                }
                c = 55296;
                i21 = i17;
                i22 = i83;
                i23 = iObjectFieldOffset;
                i24 = 0;
                int i1010 = i73 + 1;
                iArr3[i73] = iCharAt9;
                int i1011 = i73 + 2;
                i27 = i22;
                if ((iCharAt10 & 512) != 0) {
                    i28 = 536870912;
                } else {
                    i28 = 0;
                }
                if ((iCharAt10 & 256) != 0) {
                    i29 = 268435456;
                } else {
                    i29 = 0;
                }
                if (i27 != 0) {
                    i30 = Integer.MIN_VALUE;
                } else {
                    i30 = 0;
                }
                iArr3[i1010] = i28 | i29 | i30 | (i82 << 20) | i23;
                i73 += 3;
                iArr3[i1011] = (i24 << 20) | i20;
                strZzd = strZzd;
                c2 = c;
                zzhvVar = zzhvVar2;
                i41 = i21;
                length = i18;
                i2 = i19;
            }
            i20 = iObjectFieldOffset2;
            i22 = i83;
            int i1012 = i73 + 1;
            iArr3[i73] = iCharAt9;
            int i1013 = i73 + 2;
            i27 = i22;
            if ((iCharAt10 & 512) != 0) {
                i28 = 536870912;
            } else {
                i28 = 0;
            }
            if ((iCharAt10 & 256) != 0) {
                i29 = 268435456;
            } else {
                i29 = 0;
            }
            if (i27 != 0) {
                i30 = Integer.MIN_VALUE;
            } else {
                i30 = 0;
            }
            iArr3[i1012] = i28 | i29 | i30 | (i82 << 20) | i23;
            i73 += 3;
            iArr3[i1013] = (i24 << 20) | i20;
            strZzd = strZzd;
            c2 = c;
            zzhvVar = zzhvVar2;
            i41 = i21;
            length = i18;
            i2 = i19;
        }
        return new zzhp(iArr3, objArr, i5, i3, zzhvVar.zza(), false, iArr, i7, i68, zzhrVar, zzgvVar, zzilVar, zzfuVar, zzhhVar);
    }

    private static int zzm(Object obj, long j) {
        return ((Integer) zzis.zzf(obj, j)).intValue();
    }

    private final int zzn(int i) {
        return this.zzc[i + 2];
    }

    private final int zzo(int i, int i2) {
        int[] iArr = this.zzc;
        int length = (iArr.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = iArr[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    private static int zzp(int i) {
        return (i >>> 20) & 255;
    }

    private final int zzq(int i) {
        return this.zzc[i + 1];
    }

    private static long zzr(Object obj, long j) {
        return ((Long) zzis.zzf(obj, j)).longValue();
    }

    private final zzgj zzs(int i) {
        int i2 = i / 3;
        return (zzgj) this.zzd[i2 + i2 + 1];
    }

    private final zzhw zzt(int i) {
        Object[] objArr = this.zzd;
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzhw zzhwVar = (zzhw) objArr[i3];
        if (zzhwVar != null) {
            return zzhwVar;
        }
        zzhw zzhwVarZzb = zzht.zza().zzb((Class) objArr[i3 + 1]);
        objArr[i3] = zzhwVarZzb;
        return zzhwVarZzb;
    }

    private final Object zzu(Object obj, int i, Object obj2, zzil zzilVar, Object obj3) {
        zzgj zzgjVarZzs;
        int i2 = this.zzc[i];
        Object objZzf = zzis.zzf(obj, zzq(i) & 1048575);
        if (objZzf == null || (zzgjVarZzs = zzs(i)) == null) {
            return obj2;
        }
        zzhe zzheVarZzc = ((zzhf) zzv(i)).zzc();
        Iterator it = ((zzhg) objZzf).entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (!zzgjVarZzs.zza(((Integer) entry.getValue()).intValue())) {
                if (obj2 == null) {
                    obj2 = zzilVar.zza(obj3);
                }
                int iZzb = zzhf.zzb(zzheVarZzc, entry.getKey(), entry.getValue());
                zzfg zzfgVar = zzfg.zza;
                byte[] bArr = new byte[iZzb];
                int i3 = zzfo.zzb;
                zzfl zzflVar = new zzfl(bArr, 0, iZzb);
                try {
                    zzhf.zze(zzflVar, zzheVarZzc, entry.getKey(), entry.getValue());
                    ((zzim) obj2).zzj((i2 << 3) | 2, zzfc.zza(zzflVar, bArr));
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return obj2;
    }

    private final Object zzv(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    private final Object zzw(Object obj, int i) {
        zzhw zzhwVarZzt = zzt(i);
        int iZzq = zzq(i) & 1048575;
        if (!zzH(obj, i)) {
            return zzhwVarZzt.zze();
        }
        Object object = zzb.getObject(obj, iZzq);
        if (zzK(object)) {
            return object;
        }
        Object objZze = zzhwVarZzt.zze();
        if (object != null) {
            zzhwVarZzt.zzg(objZze, object);
        }
        return objZze;
    }

    private final Object zzx(Object obj, int i, int i2) {
        zzhw zzhwVarZzt = zzt(i2);
        if (!zzM(obj, i, i2)) {
            return zzhwVarZzt.zze();
        }
        Object object = zzb.getObject(obj, zzq(i2) & 1048575);
        if (zzK(object)) {
            return object;
        }
        Object objZze = zzhwVarZzt.zze();
        if (object != null) {
            zzhwVarZzt.zzg(objZze, object);
        }
        return objZze;
    }

    private static Field zzy(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields), e);
        }
    }

    private static void zzz(Object obj) {
        if (!zzK(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(String.valueOf(obj))));
        }
    }

    /* JADX WARN: Code duplicated, block: B:140:0x03a0  */
    /* JADX WARN: Code duplicated, block: B:206:0x055f  */
    @Override // com.google.android.gms.internal.play_billing.zzhw
    public final int zza(Object obj) {
        int i;
        int iZzy;
        int iZzy2;
        int iZzz;
        int iZzy3;
        int iZzy4;
        int iZzy5;
        int iZzb;
        int iZzy6;
        int iZzy7;
        int iZzi;
        int iZzy8;
        int iZza;
        int iZzh;
        int size;
        int iZzl;
        int iZzy9;
        int iZzb2;
        int iZzy10;
        int iZzb3;
        int iZzy11;
        int iZzy12;
        int iZzy13;
        int iZzz2;
        int iZzf;
        int iZzy14;
        int iZzy15;
        int iZza2;
        int iZzy16;
        int iZzy17;
        zzhp<T> zzhpVar = this;
        Unsafe unsafe = zzb;
        int i2 = 0;
        int i3 = 0;
        int iZzy18 = 0;
        int i4 = 1048575;
        while (true) {
            int[] iArr = zzhpVar.zzc;
            if (i2 >= iArr.length) {
                int iZza3 = iZzy18 + ((zzgg) obj).zzc.zza();
                if (!zzhpVar.zzh) {
                    return iZza3;
                }
                zzid zzidVar = ((zzgd) obj).zzb.zza;
                int iZzc = zzidVar.zzc();
                int iZzc2 = 0;
                for (int i5 = 0; i5 < iZzc; i5++) {
                    Map.Entry entryZzg = zzidVar.zzg(i5);
                    iZzc2 += zzfy.zzc((zzfx) ((zzhz) entryZzg).zza(), entryZzg.getValue());
                }
                for (Map.Entry entry : zzidVar.zzd()) {
                    iZzc2 += zzfy.zzc((zzfx) entry.getKey(), entry.getValue());
                }
                return iZza3 + iZzc2;
            }
            int iZzq = zzhpVar.zzq(i2);
            int iZzp = zzp(iZzq);
            int i6 = iArr[i2];
            int i7 = iArr[i2 + 2];
            int i8 = i7 & 1048575;
            if (iZzp <= 17) {
                if (i8 != i4) {
                    i3 = i8 == 1048575 ? 0 : unsafe.getInt(obj, i8);
                    i4 = i8;
                }
                i = 1 << (i7 >>> 20);
            } else {
                i = 0;
            }
            int i9 = iZzq & 1048575;
            if (iZzp >= zzfz.DOUBLE_LIST_PACKED.zza()) {
                zzfz.SINT64_LIST_PACKED.zza();
            }
            long j = i9;
            switch (iZzp) {
                case 0:
                    if (zzhpVar.zzI(obj, i2, i4, i3, i)) {
                        iZzy18 += zzfo.zzy(i6 << 3) + 8;
                    }
                    break;
                case 1:
                    if (zzhpVar.zzI(obj, i2, i4, i3, i)) {
                        iZzy = zzfo.zzy(i6 << 3);
                        iZzy4 = iZzy + 4;
                        iZzy18 += iZzy4;
                    }
                    zzhpVar = this;
                    break;
                case 2:
                    if (zzhpVar.zzI(obj, i2, i4, i3, i)) {
                        long j2 = unsafe.getLong(obj, j);
                        iZzy2 = zzfo.zzy(i6 << 3);
                        iZzz = zzfo.zzz(j2);
                        iZzy4 = iZzy2 + iZzz;
                        iZzy18 += iZzy4;
                    }
                    zzhpVar = this;
                    break;
                case 3:
                    if (zzhpVar.zzI(obj, i2, i4, i3, i)) {
                        long j3 = unsafe.getLong(obj, j);
                        iZzy2 = zzfo.zzy(i6 << 3);
                        iZzz = zzfo.zzz(j3);
                        iZzy4 = iZzy2 + iZzz;
                        iZzy18 += iZzy4;
                    }
                    zzhpVar = this;
                    break;
                case 4:
                    if (zzhpVar.zzI(obj, i2, i4, i3, i)) {
                        long j4 = unsafe.getInt(obj, j);
                        iZzy2 = zzfo.zzy(i6 << 3);
                        iZzz = zzfo.zzz(j4);
                        iZzy4 = iZzy2 + iZzz;
                        iZzy18 += iZzy4;
                    }
                    zzhpVar = this;
                    break;
                case 5:
                    if (zzhpVar.zzI(obj, i2, i4, i3, i)) {
                        iZzy3 = zzfo.zzy(i6 << 3);
                        iZzy4 = iZzy3 + 8;
                        iZzy18 += iZzy4;
                    }
                    zzhpVar = this;
                    break;
                case 6:
                    if (zzhpVar.zzI(obj, i2, i4, i3, i)) {
                        iZzy = zzfo.zzy(i6 << 3);
                        iZzy4 = iZzy + 4;
                        iZzy18 += iZzy4;
                    }
                    zzhpVar = this;
                    break;
                case 7:
                    if (zzhpVar.zzI(obj, i2, i4, i3, i)) {
                        iZzy4 = zzfo.zzy(i6 << 3) + 1;
                        iZzy18 += iZzy4;
                    }
                    zzhpVar = this;
                    break;
                case 8:
                    if (zzhpVar.zzI(obj, i2, i4, i3, i)) {
                        int i10 = i6 << 3;
                        Object object = unsafe.getObject(obj, j);
                        if (object instanceof zzfg) {
                            iZzy5 = zzfo.zzy(i10);
                            iZzb = ((zzfg) object).zzd();
                            iZzy6 = zzfo.zzy(iZzb);
                        } else {
                            iZzy5 = zzfo.zzy(i10);
                            int i11 = zzix.zza;
                            iZzb = zziu.zzb((String) object);
                            iZzy6 = zzfo.zzy(iZzb);
                        }
                        iZzy4 = iZzy5 + iZzy6 + iZzb;
                        iZzy18 += iZzy4;
                    }
                    zzhpVar = this;
                    break;
                case 9:
                    if (zzhpVar.zzI(obj, i2, i4, i3, i)) {
                        int i12 = i6 << 3;
                        Object object2 = unsafe.getObject(obj, j);
                        zzhw zzhwVarZzt = zzhpVar.zzt(i2);
                        int i13 = zzhx.zza;
                        iZzy7 = zzfo.zzy(i12);
                        iZzi = ((zzer) object2).zzi(zzhwVarZzt);
                        iZzy8 = zzfo.zzy(iZzi);
                        iZza = iZzy7 + iZzy8 + iZzi;
                        iZzy18 += iZza;
                    }
                    break;
                case 10:
                    if (zzhpVar.zzI(obj, i2, i4, i3, i)) {
                        zzfg zzfgVar = (zzfg) unsafe.getObject(obj, j);
                        iZzy5 = zzfo.zzy(i6 << 3);
                        iZzb = zzfgVar.zzd();
                        iZzy6 = zzfo.zzy(iZzb);
                        iZzy4 = iZzy5 + iZzy6 + iZzb;
                        iZzy18 += iZzy4;
                    }
                    zzhpVar = this;
                    break;
                case 11:
                    if (zzhpVar.zzI(obj, i2, i4, i3, i)) {
                        int i14 = unsafe.getInt(obj, j);
                        iZzy2 = zzfo.zzy(i6 << 3);
                        iZzz = zzfo.zzy(i14);
                        iZzy4 = iZzy2 + iZzz;
                        iZzy18 += iZzy4;
                    }
                    zzhpVar = this;
                    break;
                case 12:
                    if (zzhpVar.zzI(obj, i2, i4, i3, i)) {
                        long j5 = unsafe.getInt(obj, j);
                        iZzy2 = zzfo.zzy(i6 << 3);
                        iZzz = zzfo.zzz(j5);
                        iZzy4 = iZzy2 + iZzz;
                        iZzy18 += iZzy4;
                    }
                    zzhpVar = this;
                    break;
                case 13:
                    if (zzhpVar.zzI(obj, i2, i4, i3, i)) {
                        iZzy = zzfo.zzy(i6 << 3);
                        iZzy4 = iZzy + 4;
                        iZzy18 += iZzy4;
                    }
                    zzhpVar = this;
                    break;
                case 14:
                    if (zzhpVar.zzI(obj, i2, i4, i3, i)) {
                        iZzy3 = zzfo.zzy(i6 << 3);
                        iZzy4 = iZzy3 + 8;
                        iZzy18 += iZzy4;
                    }
                    zzhpVar = this;
                    break;
                case 15:
                    if (zzhpVar.zzI(obj, i2, i4, i3, i)) {
                        int i15 = unsafe.getInt(obj, j);
                        iZzy2 = zzfo.zzy(i6 << 3);
                        iZzz = zzfo.zzy((i15 >> 31) ^ (i15 + i15));
                        iZzy4 = iZzy2 + iZzz;
                        iZzy18 += iZzy4;
                    }
                    zzhpVar = this;
                    break;
                case 16:
                    if (zzhpVar.zzI(obj, i2, i4, i3, i)) {
                        long j6 = unsafe.getLong(obj, j);
                        iZzy2 = zzfo.zzy(i6 << 3);
                        iZzz = zzfo.zzz((j6 >> 63) ^ (j6 + j6));
                        iZzy4 = iZzy2 + iZzz;
                        iZzy18 += iZzy4;
                    }
                    zzhpVar = this;
                    break;
                case 17:
                    if (zzhpVar.zzI(obj, i2, i4, i3, i)) {
                        iZza = zzhx.zza(i6, (zzhm) unsafe.getObject(obj, j), zzhpVar.zzt(i2));
                        iZzy18 += iZza;
                    }
                    break;
                case 18:
                    iZza = zzhx.zze(i6, (List) unsafe.getObject(obj, j), false);
                    iZzy18 += iZza;
                    break;
                case 19:
                    iZza = zzhx.zzc(i6, (List) unsafe.getObject(obj, j), false);
                    iZzy18 += iZza;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(obj, j);
                    int i16 = zzhx.zza;
                    if (list.size() == 0) {
                        iZzh = 0;
                    } else {
                        iZzh = zzhx.zzh(list) + (list.size() * zzfo.zzy(i6 << 3));
                    }
                    iZzy18 += iZzh;
                    break;
                case 21:
                    List list2 = (List) unsafe.getObject(obj, j);
                    int i17 = zzhx.zza;
                    size = list2.size();
                    if (size == 0) {
                        iZza = 0;
                    } else {
                        iZzl = zzhx.zzl(list2);
                        iZzy9 = zzfo.zzy(i6 << 3);
                        iZzz2 = size * iZzy9;
                        iZza = iZzl + iZzz2;
                    }
                    iZzy18 += iZza;
                    break;
                case 22:
                    List list3 = (List) unsafe.getObject(obj, j);
                    int i18 = zzhx.zza;
                    size = list3.size();
                    if (size == 0) {
                        iZza = 0;
                    } else {
                        iZzl = zzhx.zzg(list3);
                        iZzy9 = zzfo.zzy(i6 << 3);
                        iZzz2 = size * iZzy9;
                        iZza = iZzl + iZzz2;
                    }
                    iZzy18 += iZza;
                    break;
                case 23:
                    iZza = zzhx.zze(i6, (List) unsafe.getObject(obj, j), false);
                    iZzy18 += iZza;
                    break;
                case 24:
                    iZza = zzhx.zzc(i6, (List) unsafe.getObject(obj, j), false);
                    iZzy18 += iZza;
                    break;
                case 25:
                    List list4 = (List) unsafe.getObject(obj, j);
                    int i19 = zzhx.zza;
                    int size2 = list4.size();
                    if (size2 == 0) {
                        iZza = 0;
                    } else {
                        iZza = size2 * (zzfo.zzy(i6 << 3) + 1);
                    }
                    iZzy18 += iZza;
                    break;
                case 26:
                    List list5 = (List) unsafe.getObject(obj, j);
                    int i20 = zzhx.zza;
                    int size3 = list5.size();
                    if (size3 == 0) {
                        iZzh = 0;
                    } else {
                        iZzh = zzfo.zzy(i6 << 3) * size3;
                        if (list5 instanceof zzgu) {
                            zzgu zzguVar = (zzgu) list5;
                            for (int i21 = 0; i21 < size3; i21++) {
                                Object objZza = zzguVar.zza();
                                if (objZza instanceof zzfg) {
                                    iZzb3 = ((zzfg) objZza).zzd();
                                    iZzy11 = zzfo.zzy(iZzb3);
                                } else {
                                    int i22 = zzix.zza;
                                    iZzb3 = zziu.zzb((String) objZza);
                                    iZzy11 = zzfo.zzy(iZzb3);
                                }
                                iZzh += iZzy11 + iZzb3;
                            }
                        } else {
                            for (int i23 = 0; i23 < size3; i23++) {
                                Object obj2 = list5.get(i23);
                                if (obj2 instanceof zzfg) {
                                    iZzb2 = ((zzfg) obj2).zzd();
                                    iZzy10 = zzfo.zzy(iZzb2);
                                } else {
                                    int i24 = zzix.zza;
                                    iZzb2 = zziu.zzb((String) obj2);
                                    iZzy10 = zzfo.zzy(iZzb2);
                                }
                                iZzh += iZzy10 + iZzb2;
                            }
                        }
                    }
                    iZzy18 += iZzh;
                    break;
                case 27:
                    List list6 = (List) unsafe.getObject(obj, j);
                    zzhw zzhwVarZzt2 = zzhpVar.zzt(i2);
                    int i25 = zzhx.zza;
                    int size4 = list6.size();
                    if (size4 == 0) {
                        iZzy12 = 0;
                    } else {
                        iZzy12 = zzfo.zzy(i6 << 3) * size4;
                        for (int i26 = 0; i26 < size4; i26++) {
                            int iZzi2 = ((zzer) list6.get(i26)).zzi(zzhwVarZzt2);
                            iZzy12 += zzfo.zzy(iZzi2) + iZzi2;
                        }
                    }
                    iZzy18 += iZzy12;
                    break;
                case 28:
                    List list7 = (List) unsafe.getObject(obj, j);
                    int i27 = zzhx.zza;
                    int size5 = list7.size();
                    if (size5 == 0) {
                        iZzy13 = 0;
                    } else {
                        iZzy13 = size5 * zzfo.zzy(i6 << 3);
                        for (int i28 = 0; i28 < list7.size(); i28++) {
                            int iZzd = ((zzfg) list7.get(i28)).zzd();
                            iZzy13 += zzfo.zzy(iZzd) + iZzd;
                        }
                    }
                    iZzy18 += iZzy13;
                    break;
                case 29:
                    List list8 = (List) unsafe.getObject(obj, j);
                    int i29 = zzhx.zza;
                    size = list8.size();
                    if (size == 0) {
                        iZza = 0;
                    } else {
                        iZzl = zzhx.zzk(list8);
                        iZzy9 = zzfo.zzy(i6 << 3);
                        iZzz2 = size * iZzy9;
                        iZza = iZzl + iZzz2;
                    }
                    iZzy18 += iZza;
                    break;
                case 30:
                    List list9 = (List) unsafe.getObject(obj, j);
                    int i30 = zzhx.zza;
                    size = list9.size();
                    if (size == 0) {
                        iZza = 0;
                    } else {
                        iZzl = zzhx.zzb(list9);
                        iZzy9 = zzfo.zzy(i6 << 3);
                        iZzz2 = size * iZzy9;
                        iZza = iZzl + iZzz2;
                    }
                    iZzy18 += iZza;
                    break;
                case 31:
                    iZza = zzhx.zzc(i6, (List) unsafe.getObject(obj, j), false);
                    iZzy18 += iZza;
                    break;
                case 32:
                    iZza = zzhx.zze(i6, (List) unsafe.getObject(obj, j), false);
                    iZzy18 += iZza;
                    break;
                case 33:
                    List list10 = (List) unsafe.getObject(obj, j);
                    int i31 = zzhx.zza;
                    size = list10.size();
                    if (size == 0) {
                        iZza = 0;
                    } else {
                        iZzl = zzhx.zzi(list10);
                        iZzy9 = zzfo.zzy(i6 << 3);
                        iZzz2 = size * iZzy9;
                        iZza = iZzl + iZzz2;
                    }
                    iZzy18 += iZza;
                    break;
                case 34:
                    List list11 = (List) unsafe.getObject(obj, j);
                    int i32 = zzhx.zza;
                    size = list11.size();
                    if (size == 0) {
                        iZza = 0;
                    } else {
                        iZzl = zzhx.zzj(list11);
                        iZzy9 = zzfo.zzy(i6 << 3);
                        iZzz2 = size * iZzy9;
                        iZza = iZzl + iZzz2;
                    }
                    iZzy18 += iZza;
                    break;
                case 35:
                    iZzf = zzhx.zzf((List) unsafe.getObject(obj, j));
                    if (iZzf > 0) {
                        iZzy14 = zzfo.zzy(i6 << 3);
                        iZzy15 = zzfo.zzy(iZzf);
                        iZzy13 = iZzy14 + iZzy15 + iZzf;
                        iZzy18 += iZzy13;
                    }
                    break;
                case 36:
                    iZzf = zzhx.zzd((List) unsafe.getObject(obj, j));
                    if (iZzf > 0) {
                        iZzy14 = zzfo.zzy(i6 << 3);
                        iZzy15 = zzfo.zzy(iZzf);
                        iZzy13 = iZzy14 + iZzy15 + iZzf;
                        iZzy18 += iZzy13;
                    }
                    break;
                case 37:
                    iZzf = zzhx.zzh((List) unsafe.getObject(obj, j));
                    if (iZzf > 0) {
                        iZzy14 = zzfo.zzy(i6 << 3);
                        iZzy15 = zzfo.zzy(iZzf);
                        iZzy13 = iZzy14 + iZzy15 + iZzf;
                        iZzy18 += iZzy13;
                    }
                    break;
                case 38:
                    iZzf = zzhx.zzl((List) unsafe.getObject(obj, j));
                    if (iZzf > 0) {
                        iZzy14 = zzfo.zzy(i6 << 3);
                        iZzy15 = zzfo.zzy(iZzf);
                        iZzy13 = iZzy14 + iZzy15 + iZzf;
                        iZzy18 += iZzy13;
                    }
                    break;
                case 39:
                    iZzf = zzhx.zzg((List) unsafe.getObject(obj, j));
                    if (iZzf > 0) {
                        iZzy14 = zzfo.zzy(i6 << 3);
                        iZzy15 = zzfo.zzy(iZzf);
                        iZzy13 = iZzy14 + iZzy15 + iZzf;
                        iZzy18 += iZzy13;
                    }
                    break;
                case 40:
                    iZzf = zzhx.zzf((List) unsafe.getObject(obj, j));
                    if (iZzf > 0) {
                        iZzy14 = zzfo.zzy(i6 << 3);
                        iZzy15 = zzfo.zzy(iZzf);
                        iZzy13 = iZzy14 + iZzy15 + iZzf;
                        iZzy18 += iZzy13;
                    }
                    break;
                case 41:
                    iZzf = zzhx.zzd((List) unsafe.getObject(obj, j));
                    if (iZzf > 0) {
                        iZzy14 = zzfo.zzy(i6 << 3);
                        iZzy15 = zzfo.zzy(iZzf);
                        iZzy13 = iZzy14 + iZzy15 + iZzf;
                        iZzy18 += iZzy13;
                    }
                    break;
                case 42:
                    List list12 = (List) unsafe.getObject(obj, j);
                    int i33 = zzhx.zza;
                    iZzf = list12.size();
                    if (iZzf > 0) {
                        iZzy14 = zzfo.zzy(i6 << 3);
                        iZzy15 = zzfo.zzy(iZzf);
                        iZzy13 = iZzy14 + iZzy15 + iZzf;
                        iZzy18 += iZzy13;
                    }
                    break;
                case 43:
                    iZzf = zzhx.zzk((List) unsafe.getObject(obj, j));
                    if (iZzf > 0) {
                        iZzy14 = zzfo.zzy(i6 << 3);
                        iZzy15 = zzfo.zzy(iZzf);
                        iZzy13 = iZzy14 + iZzy15 + iZzf;
                        iZzy18 += iZzy13;
                    }
                    break;
                case 44:
                    iZzf = zzhx.zzb((List) unsafe.getObject(obj, j));
                    if (iZzf > 0) {
                        iZzy14 = zzfo.zzy(i6 << 3);
                        iZzy15 = zzfo.zzy(iZzf);
                        iZzy13 = iZzy14 + iZzy15 + iZzf;
                        iZzy18 += iZzy13;
                    }
                    break;
                case 45:
                    iZzf = zzhx.zzd((List) unsafe.getObject(obj, j));
                    if (iZzf > 0) {
                        iZzy14 = zzfo.zzy(i6 << 3);
                        iZzy15 = zzfo.zzy(iZzf);
                        iZzy13 = iZzy14 + iZzy15 + iZzf;
                        iZzy18 += iZzy13;
                    }
                    break;
                case 46:
                    iZzf = zzhx.zzf((List) unsafe.getObject(obj, j));
                    if (iZzf > 0) {
                        iZzy14 = zzfo.zzy(i6 << 3);
                        iZzy15 = zzfo.zzy(iZzf);
                        iZzy13 = iZzy14 + iZzy15 + iZzf;
                        iZzy18 += iZzy13;
                    }
                    break;
                case 47:
                    iZzf = zzhx.zzi((List) unsafe.getObject(obj, j));
                    if (iZzf > 0) {
                        iZzy14 = zzfo.zzy(i6 << 3);
                        iZzy15 = zzfo.zzy(iZzf);
                        iZzy13 = iZzy14 + iZzy15 + iZzf;
                        iZzy18 += iZzy13;
                    }
                    break;
                case 48:
                    iZzf = zzhx.zzj((List) unsafe.getObject(obj, j));
                    if (iZzf > 0) {
                        iZzy14 = zzfo.zzy(i6 << 3);
                        iZzy15 = zzfo.zzy(iZzf);
                        iZzy13 = iZzy14 + iZzy15 + iZzf;
                        iZzy18 += iZzy13;
                    }
                    break;
                case 49:
                    List list13 = (List) unsafe.getObject(obj, j);
                    zzhw zzhwVarZzt3 = zzhpVar.zzt(i2);
                    int i34 = zzhx.zza;
                    int size6 = list13.size();
                    if (size6 == 0) {
                        iZza2 = 0;
                    } else {
                        iZza2 = 0;
                        for (int i35 = 0; i35 < size6; i35++) {
                            iZza2 += zzhx.zza(i6, (zzhm) list13.get(i35), zzhwVarZzt3);
                        }
                    }
                    iZzy18 += iZza2;
                    break;
                case 50:
                    zzhg zzhgVar = (zzhg) unsafe.getObject(obj, j);
                    zzhf zzhfVar = (zzhf) zzhpVar.zzv(i2);
                    if (zzhgVar.isEmpty()) {
                        iZzh = 0;
                    } else {
                        iZzh = 0;
                        for (Map.Entry entry2 : zzhgVar.entrySet()) {
                            iZzh += zzhfVar.zza(i6, entry2.getKey(), entry2.getValue());
                        }
                    }
                    iZzy18 += iZzh;
                    break;
                case 51:
                    if (zzhpVar.zzM(obj, i6, i2)) {
                        iZzy16 = zzfo.zzy(i6 << 3);
                        iZza = iZzy16 + 8;
                        iZzy18 += iZza;
                    }
                    break;
                case 52:
                    if (zzhpVar.zzM(obj, i6, i2)) {
                        iZzy17 = zzfo.zzy(i6 << 3);
                        iZza = iZzy17 + 4;
                        iZzy18 += iZza;
                    }
                    break;
                case 53:
                    if (zzhpVar.zzM(obj, i6, i2)) {
                        long jZzr = zzr(obj, j);
                        iZzl = zzfo.zzy(i6 << 3);
                        iZzz2 = zzfo.zzz(jZzr);
                        iZza = iZzl + iZzz2;
                        iZzy18 += iZza;
                    }
                    break;
                case 54:
                    if (zzhpVar.zzM(obj, i6, i2)) {
                        long jZzr2 = zzr(obj, j);
                        iZzl = zzfo.zzy(i6 << 3);
                        iZzz2 = zzfo.zzz(jZzr2);
                        iZza = iZzl + iZzz2;
                        iZzy18 += iZza;
                    }
                    break;
                case 55:
                    if (zzhpVar.zzM(obj, i6, i2)) {
                        long jZzm = zzm(obj, j);
                        iZzl = zzfo.zzy(i6 << 3);
                        iZzz2 = zzfo.zzz(jZzm);
                        iZza = iZzl + iZzz2;
                        iZzy18 += iZza;
                    }
                    break;
                case 56:
                    if (zzhpVar.zzM(obj, i6, i2)) {
                        iZzy16 = zzfo.zzy(i6 << 3);
                        iZza = iZzy16 + 8;
                        iZzy18 += iZza;
                    }
                    break;
                case 57:
                    if (zzhpVar.zzM(obj, i6, i2)) {
                        iZzy17 = zzfo.zzy(i6 << 3);
                        iZza = iZzy17 + 4;
                        iZzy18 += iZza;
                    }
                    break;
                case 58:
                    if (zzhpVar.zzM(obj, i6, i2)) {
                        iZza = zzfo.zzy(i6 << 3) + 1;
                        iZzy18 += iZza;
                    }
                    break;
                case 59:
                    if (zzhpVar.zzM(obj, i6, i2)) {
                        int i36 = i6 << 3;
                        Object object3 = unsafe.getObject(obj, j);
                        if (object3 instanceof zzfg) {
                            iZzy7 = zzfo.zzy(i36);
                            iZzi = ((zzfg) object3).zzd();
                            iZzy8 = zzfo.zzy(iZzi);
                        } else {
                            iZzy7 = zzfo.zzy(i36);
                            int i37 = zzix.zza;
                            iZzi = zziu.zzb((String) object3);
                            iZzy8 = zzfo.zzy(iZzi);
                        }
                        iZza = iZzy7 + iZzy8 + iZzi;
                        iZzy18 += iZza;
                    }
                    break;
                case 60:
                    if (zzhpVar.zzM(obj, i6, i2)) {
                        int i38 = i6 << 3;
                        Object object4 = unsafe.getObject(obj, j);
                        zzhw zzhwVarZzt4 = zzhpVar.zzt(i2);
                        int i39 = zzhx.zza;
                        iZzy7 = zzfo.zzy(i38);
                        iZzi = ((zzer) object4).zzi(zzhwVarZzt4);
                        iZzy8 = zzfo.zzy(iZzi);
                        iZza = iZzy7 + iZzy8 + iZzi;
                        iZzy18 += iZza;
                    }
                    break;
                case 61:
                    if (zzhpVar.zzM(obj, i6, i2)) {
                        zzfg zzfgVar2 = (zzfg) unsafe.getObject(obj, j);
                        iZzy7 = zzfo.zzy(i6 << 3);
                        iZzi = zzfgVar2.zzd();
                        iZzy8 = zzfo.zzy(iZzi);
                        iZza = iZzy7 + iZzy8 + iZzi;
                        iZzy18 += iZza;
                    }
                    break;
                case 62:
                    if (zzhpVar.zzM(obj, i6, i2)) {
                        int iZzm = zzm(obj, j);
                        iZzl = zzfo.zzy(i6 << 3);
                        iZzz2 = zzfo.zzy(iZzm);
                        iZza = iZzl + iZzz2;
                        iZzy18 += iZza;
                    }
                    break;
                case 63:
                    if (zzhpVar.zzM(obj, i6, i2)) {
                        long jZzm2 = zzm(obj, j);
                        iZzl = zzfo.zzy(i6 << 3);
                        iZzz2 = zzfo.zzz(jZzm2);
                        iZza = iZzl + iZzz2;
                        iZzy18 += iZza;
                    }
                    break;
                case 64:
                    if (zzhpVar.zzM(obj, i6, i2)) {
                        iZzy17 = zzfo.zzy(i6 << 3);
                        iZza = iZzy17 + 4;
                        iZzy18 += iZza;
                    }
                    break;
                case 65:
                    if (zzhpVar.zzM(obj, i6, i2)) {
                        iZzy16 = zzfo.zzy(i6 << 3);
                        iZza = iZzy16 + 8;
                        iZzy18 += iZza;
                    }
                    break;
                case 66:
                    if (zzhpVar.zzM(obj, i6, i2)) {
                        int iZzm2 = zzm(obj, j);
                        iZzl = zzfo.zzy(i6 << 3);
                        iZzz2 = zzfo.zzy((iZzm2 >> 31) ^ (iZzm2 + iZzm2));
                        iZza = iZzl + iZzz2;
                        iZzy18 += iZza;
                    }
                    break;
                case 67:
                    if (zzhpVar.zzM(obj, i6, i2)) {
                        long jZzr3 = zzr(obj, j);
                        iZzl = zzfo.zzy(i6 << 3);
                        iZzz2 = zzfo.zzz((jZzr3 >> 63) ^ (jZzr3 + jZzr3));
                        iZza = iZzl + iZzz2;
                        iZzy18 += iZza;
                    }
                    break;
                case 68:
                    if (zzhpVar.zzM(obj, i6, i2)) {
                        iZza = zzhx.zza(i6, (zzhm) unsafe.getObject(obj, j), zzhpVar.zzt(i2));
                        iZzy18 += iZza;
                    }
                    break;
            }
            i2 += 3;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhw
    public final int zzb(Object obj) {
        int i;
        long jDoubleToLongBits;
        int iFloatToIntBits;
        int i2;
        int iHashCode = 0;
        for (int i3 = 0; i3 < this.zzc.length; i3 += 3) {
            int iZzq = zzq(i3);
            int iZzp = zzp(iZzq);
            if (iZzp <= 50 || iZzp >= 69) {
                long j = iZzq & 1048575;
                int iHashCode2 = 37;
                switch (iZzp) {
                    case 0:
                        i = iHashCode * 53;
                        jDoubleToLongBits = Double.doubleToLongBits(zzis.zza(obj, j));
                        byte[] bArr = zzgm.zza;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 1:
                        i = iHashCode * 53;
                        iFloatToIntBits = Float.floatToIntBits(zzis.zzb(obj, j));
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 2:
                        i = iHashCode * 53;
                        jDoubleToLongBits = zzis.zzd(obj, j);
                        byte[] bArr2 = zzgm.zza;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 3:
                        i = iHashCode * 53;
                        jDoubleToLongBits = zzis.zzd(obj, j);
                        byte[] bArr3 = zzgm.zza;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 4:
                        i = iHashCode * 53;
                        iFloatToIntBits = zzis.zzc(obj, j);
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 5:
                        i = iHashCode * 53;
                        jDoubleToLongBits = zzis.zzd(obj, j);
                        byte[] bArr4 = zzgm.zza;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 6:
                        i = iHashCode * 53;
                        iFloatToIntBits = zzis.zzc(obj, j);
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 7:
                        i = iHashCode * 53;
                        iFloatToIntBits = zzgm.zza(zzis.zzw(obj, j));
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 8:
                        i = iHashCode * 53;
                        iFloatToIntBits = ((String) zzis.zzf(obj, j)).hashCode();
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 9:
                        i2 = iHashCode * 53;
                        Object objZzf = zzis.zzf(obj, j);
                        if (objZzf != null) {
                            iHashCode2 = objZzf.hashCode();
                        }
                        iHashCode = i2 + iHashCode2;
                        break;
                    case 10:
                        i = iHashCode * 53;
                        iFloatToIntBits = zzis.zzf(obj, j).hashCode();
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 11:
                        i = iHashCode * 53;
                        iFloatToIntBits = zzis.zzc(obj, j);
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 12:
                        i = iHashCode * 53;
                        iFloatToIntBits = zzis.zzc(obj, j);
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 13:
                        i = iHashCode * 53;
                        iFloatToIntBits = zzis.zzc(obj, j);
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 14:
                        i = iHashCode * 53;
                        jDoubleToLongBits = zzis.zzd(obj, j);
                        byte[] bArr5 = zzgm.zza;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 15:
                        i = iHashCode * 53;
                        iFloatToIntBits = zzis.zzc(obj, j);
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 16:
                        i = iHashCode * 53;
                        jDoubleToLongBits = zzis.zzd(obj, j);
                        byte[] bArr6 = zzgm.zza;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 17:
                        i2 = iHashCode * 53;
                        Object objZzf2 = zzis.zzf(obj, j);
                        if (objZzf2 != null) {
                            iHashCode2 = objZzf2.hashCode();
                        }
                        iHashCode = i2 + iHashCode2;
                        break;
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                    case 34:
                    case 35:
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                    case 40:
                    case 41:
                    case 42:
                    case 43:
                    case 44:
                    case 45:
                    case 46:
                    case 47:
                    case 48:
                    case 49:
                        i = iHashCode * 53;
                        iFloatToIntBits = zzis.zzf(obj, j).hashCode();
                        iHashCode = i + iFloatToIntBits;
                        break;
                    case 50:
                        i = iHashCode * 53;
                        iFloatToIntBits = zzis.zzf(obj, j).hashCode();
                        iHashCode = i + iFloatToIntBits;
                        break;
                }
            }
        }
        int i4 = this.zzk;
        while (true) {
            int[] iArr = this.zzi;
            if (i4 >= iArr.length) {
                int iHashCode3 = (iHashCode * 53) + ((zzgg) obj).zzc.hashCode();
                return this.zzh ? (iHashCode3 * 53) + ((zzgd) obj).zzb.zza.hashCode() : iHashCode3;
            }
            int i5 = iArr[i4];
            if (!zzM(obj, 0, i5)) {
                iHashCode = (iHashCode * 53) + zzis.zzf(obj, zzq(i5) & 1048575).hashCode();
            }
            i4++;
        }
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 39321. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    final int zzc(java.lang.Object r35, byte[] r36, int r37, int r38, int r39, com.google.android.gms.internal.play_billing.zzeu r40) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 3932
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzhp.zzc(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.play_billing.zzeu):int");
    }

    @Override // com.google.android.gms.internal.play_billing.zzhw
    public final Object zze() {
        return ((zzgg) this.zzg).zzs();
    }

    /* JADX WARN: Code duplicated, block: B:26:0x006f  */
    /* JADX WARN: Code duplicated, block: B:28:0x0075  */
    /* JADX WARN: Code duplicated, block: B:41:0x0082 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.play_billing.zzhw
    public final void zzf(Object obj) {
        if (zzK(obj)) {
            if (obj instanceof zzgg) {
                zzgg zzggVar = (zzgg) obj;
                zzggVar.zzC(Integer.MAX_VALUE);
                zzggVar.zza = 0;
                zzggVar.zzA();
            }
            int[] iArr = this.zzc;
            for (int i = 0; i < iArr.length; i += 3) {
                int iZzq = zzq(i);
                int i2 = 1048575 & iZzq;
                int iZzp = zzp(iZzq);
                long j = i2;
                if (iZzp != 9) {
                    if (iZzp != 60 && iZzp != 68) {
                        switch (iZzp) {
                            case 17:
                                if (zzH(obj, i)) {
                                    zzt(i).zzf(zzb.getObject(obj, j));
                                }
                                break;
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case 32:
                            case 33:
                            case 34:
                            case 35:
                            case 36:
                            case 37:
                            case 38:
                            case 39:
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                            case 44:
                            case 45:
                            case 46:
                            case 47:
                            case 48:
                            case 49:
                                ((zzgl) zzis.zzf(obj, j)).zzb();
                                break;
                            case 50:
                                Unsafe unsafe = zzb;
                                Object object = unsafe.getObject(obj, j);
                                if (object != null) {
                                    ((zzhg) object).zzc();
                                    unsafe.putObject(obj, j, object);
                                }
                                break;
                        }
                    } else if (zzM(obj, iArr[i], i)) {
                        zzt(i).zzf(zzb.getObject(obj, j));
                    }
                } else if (zzH(obj, i)) {
                    zzt(i).zzf(zzb.getObject(obj, j));
                }
            }
            this.zzl.zzb(obj);
            if (this.zzh) {
                this.zzm.zza(obj);
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhw
    public final void zzg(Object obj, Object obj2) {
        zzz(obj);
        obj2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.zzc;
            if (i >= iArr.length) {
                zzhx.zzp(this.zzl, obj, obj2);
                if (this.zzh) {
                    zzhx.zzo(this.zzm, obj, obj2);
                    return;
                }
                return;
            }
            int iZzq = zzq(i);
            int i2 = 1048575 & iZzq;
            int iZzp = zzp(iZzq);
            int i3 = iArr[i];
            long j = i2;
            switch (iZzp) {
                case 0:
                    if (zzH(obj2, i)) {
                        zzis.zzo(obj, j, zzis.zza(obj2, j));
                        zzC(obj, i);
                    }
                    break;
                case 1:
                    if (zzH(obj2, i)) {
                        zzis.zzp(obj, j, zzis.zzb(obj2, j));
                        zzC(obj, i);
                    }
                    break;
                case 2:
                    if (zzH(obj2, i)) {
                        zzis.zzr(obj, j, zzis.zzd(obj2, j));
                        zzC(obj, i);
                    }
                    break;
                case 3:
                    if (zzH(obj2, i)) {
                        zzis.zzr(obj, j, zzis.zzd(obj2, j));
                        zzC(obj, i);
                    }
                    break;
                case 4:
                    if (zzH(obj2, i)) {
                        zzis.zzq(obj, j, zzis.zzc(obj2, j));
                        zzC(obj, i);
                    }
                    break;
                case 5:
                    if (zzH(obj2, i)) {
                        zzis.zzr(obj, j, zzis.zzd(obj2, j));
                        zzC(obj, i);
                    }
                    break;
                case 6:
                    if (zzH(obj2, i)) {
                        zzis.zzq(obj, j, zzis.zzc(obj2, j));
                        zzC(obj, i);
                    }
                    break;
                case 7:
                    if (zzH(obj2, i)) {
                        zzis.zzm(obj, j, zzis.zzw(obj2, j));
                        zzC(obj, i);
                    }
                    break;
                case 8:
                    if (zzH(obj2, i)) {
                        zzis.zzs(obj, j, zzis.zzf(obj2, j));
                        zzC(obj, i);
                    }
                    break;
                case 9:
                    zzA(obj, obj2, i);
                    break;
                case 10:
                    if (zzH(obj2, i)) {
                        zzis.zzs(obj, j, zzis.zzf(obj2, j));
                        zzC(obj, i);
                    }
                    break;
                case 11:
                    if (zzH(obj2, i)) {
                        zzis.zzq(obj, j, zzis.zzc(obj2, j));
                        zzC(obj, i);
                    }
                    break;
                case 12:
                    if (zzH(obj2, i)) {
                        zzis.zzq(obj, j, zzis.zzc(obj2, j));
                        zzC(obj, i);
                    }
                    break;
                case 13:
                    if (zzH(obj2, i)) {
                        zzis.zzq(obj, j, zzis.zzc(obj2, j));
                        zzC(obj, i);
                    }
                    break;
                case 14:
                    if (zzH(obj2, i)) {
                        zzis.zzr(obj, j, zzis.zzd(obj2, j));
                        zzC(obj, i);
                    }
                    break;
                case 15:
                    if (zzH(obj2, i)) {
                        zzis.zzq(obj, j, zzis.zzc(obj2, j));
                        zzC(obj, i);
                    }
                    break;
                case 16:
                    if (zzH(obj2, i)) {
                        zzis.zzr(obj, j, zzis.zzd(obj2, j));
                        zzC(obj, i);
                    }
                    break;
                case 17:
                    zzA(obj, obj2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    zzgl zzglVarZzd = (zzgl) zzis.zzf(obj, j);
                    zzgl zzglVar = (zzgl) zzis.zzf(obj2, j);
                    int size = zzglVarZzd.size();
                    int size2 = zzglVar.size();
                    if (size > 0 && size2 > 0) {
                        if (!zzglVarZzd.zzc()) {
                            zzglVarZzd = zzglVarZzd.zzd(size2 + size);
                        }
                        zzglVarZzd.addAll(zzglVar);
                    }
                    if (size > 0) {
                        zzglVar = zzglVarZzd;
                    }
                    zzis.zzs(obj, j, zzglVar);
                    break;
                case 50:
                    int i4 = zzhx.zza;
                    zzis.zzs(obj, j, zzhh.zza(zzis.zzf(obj, j), zzis.zzf(obj2, j)));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (zzM(obj2, i3, i)) {
                        zzis.zzs(obj, j, zzis.zzf(obj2, j));
                        zzD(obj, i3, i);
                    }
                    break;
                case 60:
                    zzB(obj, obj2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzM(obj2, i3, i)) {
                        zzis.zzs(obj, j, zzis.zzf(obj2, j));
                        zzD(obj, i3, i);
                    }
                    break;
                case 68:
                    zzB(obj, obj2, i);
                    break;
            }
            i += 3;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhw
    public final void zzh(Object obj, byte[] bArr, int i, int i2, zzeu zzeuVar) throws IOException {
        zzc(obj, bArr, i, i2, 0, zzeuVar);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0023  */
    @Override // com.google.android.gms.internal.play_billing.zzhw
    public final void zzi(Object obj, zzjd zzjdVar) throws IOException {
        Map.Entry entry;
        int i;
        zzhp<T> zzhpVar = this;
        if (zzhpVar.zzh) {
            zzfy zzfyVar = ((zzgd) obj).zzb;
            if (zzfyVar.zza.isEmpty()) {
                entry = null;
            } else {
                entry = (Map.Entry) zzfyVar.zzf().next();
            }
        } else {
            entry = null;
        }
        int[] iArr = zzhpVar.zzc;
        Unsafe unsafe = zzb;
        int i2 = 1048575;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i4 < iArr.length) {
            int iZzq = zzhpVar.zzq(i4);
            int iZzp = zzp(iZzq);
            int i6 = iArr[i4];
            if (iZzp <= 17) {
                int i7 = iArr[i4 + 2];
                int i8 = i7 & i2;
                if (i8 != i3) {
                    i5 = i8 == i2 ? 0 : unsafe.getInt(obj, i8);
                    i3 = i8;
                }
                i = 1 << (i7 >>> 20);
            } else {
                i = 0;
            }
            if (entry != null) {
                throw null;
            }
            long j = iZzq & i2;
            switch (iZzp) {
                case 0:
                    if (zzhpVar.zzI(obj, i4, i3, i5, i)) {
                        zzjdVar.zzf(i6, zzis.zza(obj, j));
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 1:
                    if (zzhpVar.zzI(obj, i4, i3, i5, i)) {
                        zzjdVar.zzo(i6, zzis.zzb(obj, j));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 2:
                    if (zzhpVar.zzI(obj, i4, i3, i5, i)) {
                        zzjdVar.zzt(i6, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 3:
                    if (zzhpVar.zzI(obj, i4, i3, i5, i)) {
                        zzjdVar.zzL(i6, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 4:
                    if (zzhpVar.zzI(obj, i4, i3, i5, i)) {
                        zzjdVar.zzr(i6, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 5:
                    if (zzhpVar.zzI(obj, i4, i3, i5, i)) {
                        zzjdVar.zzm(i6, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 6:
                    if (zzhpVar.zzI(obj, i4, i3, i5, i)) {
                        zzjdVar.zzk(i6, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 7:
                    if (zzhpVar.zzI(obj, i4, i3, i5, i)) {
                        zzjdVar.zzb(i6, zzis.zzw(obj, j));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 8:
                    if (zzhpVar.zzI(obj, i4, i3, i5, i)) {
                        zzP(i6, unsafe.getObject(obj, j), zzjdVar);
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 9:
                    if (zzhpVar.zzI(obj, i4, i3, i5, i)) {
                        zzjdVar.zzw(i6, unsafe.getObject(obj, j), zzhpVar.zzt(i4));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 10:
                    if (zzhpVar.zzI(obj, i4, i3, i5, i)) {
                        zzjdVar.zzd(i6, (zzfg) unsafe.getObject(obj, j));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 11:
                    if (zzhpVar.zzI(obj, i4, i3, i5, i)) {
                        zzjdVar.zzJ(i6, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 12:
                    if (zzhpVar.zzI(obj, i4, i3, i5, i)) {
                        zzjdVar.zzi(i6, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 13:
                    if (zzhpVar.zzI(obj, i4, i3, i5, i)) {
                        zzjdVar.zzy(i6, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 14:
                    if (zzhpVar.zzI(obj, i4, i3, i5, i)) {
                        zzjdVar.zzA(i6, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 15:
                    if (zzhpVar.zzI(obj, i4, i3, i5, i)) {
                        zzjdVar.zzC(i6, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 16:
                    if (zzhpVar.zzI(obj, i4, i3, i5, i)) {
                        zzjdVar.zzE(i6, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 17:
                    if (zzhpVar.zzI(obj, i4, i3, i5, i)) {
                        zzjdVar.zzq(i6, unsafe.getObject(obj, j), zzhpVar.zzt(i4));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 18:
                    zzhx.zzr(iArr[i4], (List) unsafe.getObject(obj, j), zzjdVar, false);
                    continue;
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 19:
                    zzhx.zzv(iArr[i4], (List) unsafe.getObject(obj, j), zzjdVar, false);
                    continue;
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 20:
                    zzhx.zzx(iArr[i4], (List) unsafe.getObject(obj, j), zzjdVar, false);
                    continue;
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 21:
                    zzhx.zzD(iArr[i4], (List) unsafe.getObject(obj, j), zzjdVar, false);
                    continue;
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 22:
                    zzhx.zzw(iArr[i4], (List) unsafe.getObject(obj, j), zzjdVar, false);
                    continue;
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 23:
                    zzhx.zzu(iArr[i4], (List) unsafe.getObject(obj, j), zzjdVar, false);
                    continue;
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 24:
                    zzhx.zzt(iArr[i4], (List) unsafe.getObject(obj, j), zzjdVar, false);
                    continue;
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 25:
                    zzhx.zzq(iArr[i4], (List) unsafe.getObject(obj, j), zzjdVar, false);
                    continue;
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 26:
                    int i9 = iArr[i4];
                    List list = (List) unsafe.getObject(obj, j);
                    int i10 = zzhx.zza;
                    if (list != null && !list.isEmpty()) {
                        zzjdVar.zzI(i9, list);
                    }
                    break;
                case 27:
                    int i11 = iArr[i4];
                    List list2 = (List) unsafe.getObject(obj, j);
                    zzhw zzhwVarZzt = zzhpVar.zzt(i4);
                    int i12 = zzhx.zza;
                    if (list2 != null && !list2.isEmpty()) {
                        for (int i13 = 0; i13 < list2.size(); i13++) {
                            ((zzfp) zzjdVar).zzw(i11, list2.get(i13), zzhwVarZzt);
                        }
                    }
                    break;
                case 28:
                    int i14 = iArr[i4];
                    List list3 = (List) unsafe.getObject(obj, j);
                    int i15 = zzhx.zza;
                    if (list3 != null && !list3.isEmpty()) {
                        zzjdVar.zze(i14, list3);
                    }
                    break;
                case 29:
                    zzhx.zzC(iArr[i4], (List) unsafe.getObject(obj, j), zzjdVar, false);
                    continue;
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 30:
                    zzhx.zzs(iArr[i4], (List) unsafe.getObject(obj, j), zzjdVar, false);
                    continue;
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 31:
                    zzhx.zzy(iArr[i4], (List) unsafe.getObject(obj, j), zzjdVar, false);
                    continue;
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 32:
                    zzhx.zzz(iArr[i4], (List) unsafe.getObject(obj, j), zzjdVar, false);
                    continue;
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 33:
                    zzhx.zzA(iArr[i4], (List) unsafe.getObject(obj, j), zzjdVar, false);
                    continue;
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 34:
                    zzhx.zzB(iArr[i4], (List) unsafe.getObject(obj, j), zzjdVar, false);
                    continue;
                    i4 += 3;
                    i2 = 1048575;
                    zzhpVar = this;
                    break;
                case 35:
                    zzhx.zzr(iArr[i4], (List) unsafe.getObject(obj, j), zzjdVar, true);
                    break;
                case 36:
                    zzhx.zzv(iArr[i4], (List) unsafe.getObject(obj, j), zzjdVar, true);
                    break;
                case 37:
                    zzhx.zzx(iArr[i4], (List) unsafe.getObject(obj, j), zzjdVar, true);
                    break;
                case 38:
                    zzhx.zzD(iArr[i4], (List) unsafe.getObject(obj, j), zzjdVar, true);
                    break;
                case 39:
                    zzhx.zzw(iArr[i4], (List) unsafe.getObject(obj, j), zzjdVar, true);
                    break;
                case 40:
                    zzhx.zzu(iArr[i4], (List) unsafe.getObject(obj, j), zzjdVar, true);
                    break;
                case 41:
                    zzhx.zzt(iArr[i4], (List) unsafe.getObject(obj, j), zzjdVar, true);
                    break;
                case 42:
                    zzhx.zzq(iArr[i4], (List) unsafe.getObject(obj, j), zzjdVar, true);
                    break;
                case 43:
                    zzhx.zzC(iArr[i4], (List) unsafe.getObject(obj, j), zzjdVar, true);
                    break;
                case 44:
                    zzhx.zzs(iArr[i4], (List) unsafe.getObject(obj, j), zzjdVar, true);
                    break;
                case 45:
                    zzhx.zzy(iArr[i4], (List) unsafe.getObject(obj, j), zzjdVar, true);
                    break;
                case 46:
                    zzhx.zzz(iArr[i4], (List) unsafe.getObject(obj, j), zzjdVar, true);
                    break;
                case 47:
                    zzhx.zzA(iArr[i4], (List) unsafe.getObject(obj, j), zzjdVar, true);
                    break;
                case 48:
                    zzhx.zzB(iArr[i4], (List) unsafe.getObject(obj, j), zzjdVar, true);
                    break;
                case 49:
                    int i16 = iArr[i4];
                    List list4 = (List) unsafe.getObject(obj, j);
                    zzhw zzhwVarZzt2 = zzhpVar.zzt(i4);
                    int i17 = zzhx.zza;
                    if (list4 != null && !list4.isEmpty()) {
                        for (int i18 = 0; i18 < list4.size(); i18++) {
                            ((zzfp) zzjdVar).zzq(i16, list4.get(i18), zzhwVarZzt2);
                        }
                    }
                    break;
                case 50:
                    Object object = unsafe.getObject(obj, j);
                    if (object != null) {
                        zzjdVar.zzv(i6, ((zzhf) zzhpVar.zzv(i4)).zzc(), (zzhg) object);
                    }
                    break;
                case 51:
                    if (zzhpVar.zzM(obj, i6, i4)) {
                        zzjdVar.zzf(i6, ((Double) zzis.zzf(obj, j)).doubleValue());
                    }
                    break;
                case 52:
                    if (zzhpVar.zzM(obj, i6, i4)) {
                        zzjdVar.zzo(i6, ((Float) zzis.zzf(obj, j)).floatValue());
                    }
                    break;
                case 53:
                    if (zzhpVar.zzM(obj, i6, i4)) {
                        zzjdVar.zzt(i6, zzr(obj, j));
                    }
                    break;
                case 54:
                    if (zzhpVar.zzM(obj, i6, i4)) {
                        zzjdVar.zzL(i6, zzr(obj, j));
                    }
                    break;
                case 55:
                    if (zzhpVar.zzM(obj, i6, i4)) {
                        zzjdVar.zzr(i6, zzm(obj, j));
                    }
                    break;
                case 56:
                    if (zzhpVar.zzM(obj, i6, i4)) {
                        zzjdVar.zzm(i6, zzr(obj, j));
                    }
                    break;
                case 57:
                    if (zzhpVar.zzM(obj, i6, i4)) {
                        zzjdVar.zzk(i6, zzm(obj, j));
                    }
                    break;
                case 58:
                    if (zzhpVar.zzM(obj, i6, i4)) {
                        zzjdVar.zzb(i6, ((Boolean) zzis.zzf(obj, j)).booleanValue());
                    }
                    break;
                case 59:
                    if (zzhpVar.zzM(obj, i6, i4)) {
                        zzP(i6, unsafe.getObject(obj, j), zzjdVar);
                    }
                    break;
                case 60:
                    if (zzhpVar.zzM(obj, i6, i4)) {
                        zzjdVar.zzw(i6, unsafe.getObject(obj, j), zzhpVar.zzt(i4));
                    }
                    break;
                case 61:
                    if (zzhpVar.zzM(obj, i6, i4)) {
                        zzjdVar.zzd(i6, (zzfg) unsafe.getObject(obj, j));
                    }
                    break;
                case 62:
                    if (zzhpVar.zzM(obj, i6, i4)) {
                        zzjdVar.zzJ(i6, zzm(obj, j));
                    }
                    break;
                case 63:
                    if (zzhpVar.zzM(obj, i6, i4)) {
                        zzjdVar.zzi(i6, zzm(obj, j));
                    }
                    break;
                case 64:
                    if (zzhpVar.zzM(obj, i6, i4)) {
                        zzjdVar.zzy(i6, zzm(obj, j));
                    }
                    break;
                case 65:
                    if (zzhpVar.zzM(obj, i6, i4)) {
                        zzjdVar.zzA(i6, zzr(obj, j));
                    }
                    break;
                case 66:
                    if (zzhpVar.zzM(obj, i6, i4)) {
                        zzjdVar.zzC(i6, zzm(obj, j));
                    }
                    break;
                case 67:
                    if (zzhpVar.zzM(obj, i6, i4)) {
                        zzjdVar.zzE(i6, zzr(obj, j));
                    }
                    break;
                case 68:
                    if (zzhpVar.zzM(obj, i6, i4)) {
                        zzjdVar.zzq(i6, unsafe.getObject(obj, j), zzhpVar.zzt(i4));
                    }
                    break;
            }
            i4 += 3;
            i2 = 1048575;
            zzhpVar = this;
        }
        if (entry != null) {
            throw null;
        }
        ((zzgg) obj).zzc.zzl(zzjdVar);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhw
    public final boolean zzj(Object obj, Object obj2) {
        boolean zZzE;
        for (int i = 0; i < this.zzc.length; i += 3) {
            int iZzq = zzq(i);
            int iZzp = zzp(iZzq);
            if (iZzp <= 50 || iZzp >= 69) {
                long j = iZzq & 1048575;
                switch (iZzp) {
                    case 0:
                        if (!zzG(obj, obj2, i) || Double.doubleToLongBits(zzis.zza(obj, j)) != Double.doubleToLongBits(zzis.zza(obj2, j))) {
                            return false;
                        }
                        continue;
                        break;
                    case 1:
                        if (!zzG(obj, obj2, i) || Float.floatToIntBits(zzis.zzb(obj, j)) != Float.floatToIntBits(zzis.zzb(obj2, j))) {
                            return false;
                        }
                        continue;
                        break;
                    case 2:
                        if (!zzG(obj, obj2, i) || zzis.zzd(obj, j) != zzis.zzd(obj2, j)) {
                            return false;
                        }
                        continue;
                        break;
                    case 3:
                        if (!zzG(obj, obj2, i) || zzis.zzd(obj, j) != zzis.zzd(obj2, j)) {
                            return false;
                        }
                        continue;
                        break;
                    case 4:
                        if (!zzG(obj, obj2, i) || zzis.zzc(obj, j) != zzis.zzc(obj2, j)) {
                            return false;
                        }
                        continue;
                        break;
                    case 5:
                        if (!zzG(obj, obj2, i) || zzis.zzd(obj, j) != zzis.zzd(obj2, j)) {
                            return false;
                        }
                        continue;
                        break;
                    case 6:
                        if (!zzG(obj, obj2, i) || zzis.zzc(obj, j) != zzis.zzc(obj2, j)) {
                            return false;
                        }
                        continue;
                        break;
                    case 7:
                        if (!zzG(obj, obj2, i) || zzis.zzw(obj, j) != zzis.zzw(obj2, j)) {
                            return false;
                        }
                        continue;
                        break;
                    case 8:
                        if (!zzG(obj, obj2, i) || !zzhx.zzE(zzis.zzf(obj, j), zzis.zzf(obj2, j))) {
                            return false;
                        }
                        continue;
                        break;
                    case 9:
                        if (!zzG(obj, obj2, i) || !zzhx.zzE(zzis.zzf(obj, j), zzis.zzf(obj2, j))) {
                            return false;
                        }
                        continue;
                        break;
                    case 10:
                        if (!zzG(obj, obj2, i) || !zzhx.zzE(zzis.zzf(obj, j), zzis.zzf(obj2, j))) {
                            return false;
                        }
                        continue;
                        break;
                    case 11:
                        if (!zzG(obj, obj2, i) || zzis.zzc(obj, j) != zzis.zzc(obj2, j)) {
                            return false;
                        }
                        continue;
                        break;
                    case 12:
                        if (!zzG(obj, obj2, i) || zzis.zzc(obj, j) != zzis.zzc(obj2, j)) {
                            return false;
                        }
                        continue;
                        break;
                    case 13:
                        if (!zzG(obj, obj2, i) || zzis.zzc(obj, j) != zzis.zzc(obj2, j)) {
                            return false;
                        }
                        continue;
                        break;
                    case 14:
                        if (!zzG(obj, obj2, i) || zzis.zzd(obj, j) != zzis.zzd(obj2, j)) {
                            return false;
                        }
                        continue;
                        break;
                    case 15:
                        if (!zzG(obj, obj2, i) || zzis.zzc(obj, j) != zzis.zzc(obj2, j)) {
                            return false;
                        }
                        continue;
                        break;
                    case 16:
                        if (!zzG(obj, obj2, i) || zzis.zzd(obj, j) != zzis.zzd(obj2, j)) {
                            return false;
                        }
                        continue;
                        break;
                    case 17:
                        if (!zzG(obj, obj2, i) || !zzhx.zzE(zzis.zzf(obj, j), zzis.zzf(obj2, j))) {
                            return false;
                        }
                        continue;
                        break;
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                    case 34:
                    case 35:
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                    case 40:
                    case 41:
                    case 42:
                    case 43:
                    case 44:
                    case 45:
                    case 46:
                    case 47:
                    case 48:
                    case 49:
                        zZzE = zzhx.zzE(zzis.zzf(obj, j), zzis.zzf(obj2, j));
                        break;
                    case 50:
                        zZzE = zzhx.zzE(zzis.zzf(obj, j), zzis.zzf(obj2, j));
                        break;
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                    case 58:
                    case 59:
                    case 60:
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                    case 68:
                        if (!zzL(obj, obj2, i) || !zzhx.zzE(zzis.zzf(obj, j), zzis.zzf(obj2, j))) {
                            return false;
                        }
                        continue;
                        break;
                    default:
                        continue;
                }
                if (!zZzE) {
                    return false;
                }
            }
        }
        int i2 = this.zzk;
        while (true) {
            int[] iArr = this.zzi;
            if (i2 >= iArr.length) {
                if (!((zzgg) obj).zzc.equals(((zzgg) obj2).zzc)) {
                    return false;
                }
                if (this.zzh) {
                    return ((zzgd) obj).zzb.equals(((zzgd) obj2).zzb);
                }
                return true;
            }
            int i3 = iArr[i2];
            if (!zzL(obj, obj2, i3)) {
                return false;
            }
            if (!zzM(obj, 0, i3)) {
                long jZzq = zzq(i3) & 1048575;
                if (!zzhx.zzE(zzis.zzf(obj, jZzq), zzis.zzf(obj2, jZzq))) {
                    return false;
                }
            }
            i2++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00be  */
    /* JADX WARN: Code duplicated, block: B:51:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:54:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:57:0x00e3 A[LOOP:2: B:52:0x00d2->B:57:0x00e3, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:74:0x00e2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:0x00f7 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.play_billing.zzhw
    public final boolean zzk(Object obj) {
        int i;
        int i2;
        List list;
        zzhw zzhwVarZzt;
        int i3;
        int i4 = 0;
        int i5 = 0;
        int i6 = 1048575;
        while (i4 < this.zzj) {
            int i7 = this.zzi[i4];
            int iZzq = zzq(i7);
            int[] iArr = this.zzc;
            int i8 = iArr[i7 + 2];
            int i9 = i8 & 1048575;
            int i10 = 1 << (i8 >>> 20);
            if (i9 != i6) {
                if (i9 != 1048575) {
                    i5 = zzb.getInt(obj, i9);
                }
                i2 = i5;
                i = i9;
            } else {
                i = i6;
                i2 = i5;
            }
            Object obj2 = obj;
            if ((268435456 & iZzq) != 0 && !zzI(obj2, i7, i, i2, i10)) {
                return false;
            }
            int iZzp = zzp(iZzq);
            if (iZzp == 9 || iZzp == 17) {
                if (zzI(obj2, i7, i, i2, i10) && !zzJ(obj2, iZzq, zzt(i7))) {
                    return false;
                }
            } else if (iZzp == 27) {
                list = (List) zzis.zzf(obj2, iZzq & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzhwVarZzt = zzt(i7);
                    for (i3 = 0; i3 < list.size(); i3++) {
                        if (!zzhwVarZzt.zzk(list.get(i3))) {
                            return false;
                        }
                    }
                }
            } else if (iZzp == 60 || iZzp == 68) {
                if (zzM(obj2, iArr[i7], i7) && !zzJ(obj2, iZzq, zzt(i7))) {
                    return false;
                }
            } else if (iZzp == 49) {
                list = (List) zzis.zzf(obj2, iZzq & 1048575);
                if (list.isEmpty()) {
                    zzhwVarZzt = zzt(i7);
                    while (i3 < list.size()) {
                        if (!zzhwVarZzt.zzk(list.get(i3))) {
                            return false;
                        }
                    }
                } else {
                    continue;
                }
            } else if (iZzp != 50) {
                continue;
            } else {
                zzhg zzhgVar = (zzhg) zzis.zzf(obj2, iZzq & 1048575);
                if (!zzhgVar.isEmpty() && ((zzhf) zzv(i7)).zzc().zzc.zzb() == zzjc.MESSAGE) {
                    zzhw zzhwVarZzb = null;
                    for (Object obj3 : zzhgVar.values()) {
                        if (zzhwVarZzb == null) {
                            zzhwVarZzb = zzht.zza().zzb(obj3.getClass());
                        }
                        if (!zzhwVarZzb.zzk(obj3)) {
                            return false;
                        }
                    }
                }
            }
            i4++;
            obj = obj2;
            i6 = i;
            i5 = i2;
        }
        return !this.zzh || ((zzgd) obj).zzb.zzj();
    }
}
