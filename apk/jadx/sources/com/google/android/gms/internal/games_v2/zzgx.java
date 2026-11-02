package com.google.android.gms.internal.games_v2;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgx extends zzgp {
    static final zzgp zza = new zzgx(null, new Object[0], 0);
    final transient Object[] zzb;
    private final transient Object zzc;
    private final transient int zzd;

    private zzgx(Object obj, Object[] objArr, int i) {
        this.zzc = obj;
        this.zzb = objArr;
        this.zzd = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v10 */
    /* JADX WARN: Type inference failed for: r16v11 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Type inference failed for: r16v8 */
    /* JADX WARN: Type inference failed for: r16v9 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.lang.Object[]] */
    static zzgx zzd(int i, Object[] objArr, zzgo zzgoVar) {
        int iHighestOneBit;
        boolean z;
        int i2;
        int i3;
        short[] sArr;
        boolean z2;
        ?? r16;
        int i4 = i;
        Object[] objArrCopyOf = objArr;
        if (i4 == 0) {
            return (zzgx) zza;
        }
        zzgn zzgnVar = null;
        ?? r2 = 0;
        zzgn zzgnVar2 = null;
        zzgn zzgnVar3 = null;
        boolean z3 = false;
        int i5 = 1;
        if (i4 == 1) {
            zzge.zza(Objects.requireNonNull(objArrCopyOf[0]), Objects.requireNonNull(objArrCopyOf[1]));
            return new zzgx(null, objArrCopyOf, 1);
        }
        zzfz.zzb(i4, objArrCopyOf.length >> 1, FirebaseAnalytics.Param.INDEX);
        int iMax = Math.max(i4, 2);
        if (iMax < 751619276) {
            iHighestOneBit = Integer.highestOneBit(iMax - 1);
            do {
                iHighestOneBit += iHighestOneBit;
            } while (((double) iHighestOneBit) * 0.7d < iMax);
        } else {
            iHighestOneBit = 1073741824;
            if (iMax >= 1073741824) {
                throw new IllegalArgumentException("collection too large");
            }
        }
        if (i4 == 1) {
            zzge.zza(Objects.requireNonNull(objArrCopyOf[0]), Objects.requireNonNull(objArrCopyOf[1]));
            r16 = 0;
            i4 = 1;
            i2 = 1;
        } else {
            int i6 = iHighestOneBit - 1;
            if (iHighestOneBit <= 128) {
                byte[] bArr = new byte[iHighestOneBit];
                Arrays.fill(bArr, (byte) -1);
                int i7 = 0;
                int i8 = 0;
                while (i7 < i4) {
                    int i9 = i8 + i8;
                    int i10 = i7 + i7;
                    Object objRequireNonNull = Objects.requireNonNull(objArrCopyOf[i10]);
                    Object objRequireNonNull2 = Objects.requireNonNull(objArrCopyOf[i10 ^ 1]);
                    zzge.zza(objRequireNonNull, objRequireNonNull2);
                    int iZza = zzgf.zza(objRequireNonNull.hashCode());
                    while (true) {
                        int i11 = iZza & i6;
                        z2 = z3;
                        int i12 = bArr[i11] & 255;
                        if (i12 == 255) {
                            bArr[i11] = (byte) i9;
                            if (i8 < i7) {
                                objArrCopyOf[i9] = objRequireNonNull;
                                objArrCopyOf[i9 ^ 1] = objRequireNonNull2;
                            }
                            i8++;
                            break;
                        }
                        if (objRequireNonNull.equals(objArrCopyOf[i12 == true ? 1 : 0])) {
                            int i13 = ~i12;
                            zzgn zzgnVar4 = new zzgn(objRequireNonNull, objRequireNonNull2, Objects.requireNonNull(objArrCopyOf[i13 == true ? 1 : 0]));
                            objArrCopyOf[i13 == true ? 1 : 0] = objRequireNonNull2;
                            zzgnVar2 = zzgnVar4;
                            break;
                        }
                        iZza = i11 + 1;
                        z3 = z2;
                    }
                    i7++;
                    z3 = z2;
                }
                z = z3;
                if (i8 == i4) {
                    i2 = 1;
                    r2 = bArr;
                    r16 = z;
                } else {
                    sArr = new Object[3];
                    sArr[z ? 1 : 0] = bArr;
                    sArr[1] = Integer.valueOf(i8);
                    sArr[2] = zzgnVar2;
                    r2 = sArr;
                    i2 = 1;
                    r16 = z;
                }
            } else {
                z = false;
                if (iHighestOneBit <= 32768) {
                    sArr = new short[iHighestOneBit];
                    Arrays.fill(sArr, (short) -1);
                    int i14 = 0;
                    for (int i15 = 0; i15 < i4; i15++) {
                        int i16 = i14 + i14;
                        int i17 = i15 + i15;
                        Object objRequireNonNull3 = Objects.requireNonNull(objArrCopyOf[i17]);
                        Object objRequireNonNull4 = Objects.requireNonNull(objArrCopyOf[i17 ^ 1]);
                        zzge.zza(objRequireNonNull3, objRequireNonNull4);
                        int iZza2 = zzgf.zza(objRequireNonNull3.hashCode());
                        while (true) {
                            int i18 = iZza2 & i6;
                            char c = (char) sArr[i18];
                            if (c == 65535) {
                                sArr[i18] = (short) i16;
                                if (i14 < i15) {
                                    objArrCopyOf[i16] = objRequireNonNull3;
                                    objArrCopyOf[i16 ^ 1] = objRequireNonNull4;
                                }
                                i14++;
                                break;
                            }
                            if (objRequireNonNull3.equals(objArrCopyOf[c])) {
                                int i19 = c ^ 1;
                                zzgn zzgnVar5 = new zzgn(objRequireNonNull3, objRequireNonNull4, Objects.requireNonNull(objArrCopyOf[i19 == true ? 1 : 0]));
                                objArrCopyOf[i19 == true ? 1 : 0] = objRequireNonNull4;
                                zzgnVar3 = zzgnVar5;
                                break;
                            }
                            iZza2 = i18 + 1;
                        }
                    }
                    if (i14 == i4) {
                        r2 = sArr;
                        i2 = 1;
                        r16 = z;
                    } else {
                        i2 = 1;
                        r2 = new Object[]{sArr, Integer.valueOf(i14), zzgnVar3};
                        r16 = z;
                    }
                } else {
                    int[] iArr = new int[iHighestOneBit];
                    Arrays.fill(iArr, -1);
                    int i20 = 0;
                    int i21 = 0;
                    while (i20 < i4) {
                        int i22 = i21 + i21;
                        int i23 = i20 + i20;
                        Object objRequireNonNull5 = Objects.requireNonNull(objArrCopyOf[i23]);
                        Object objRequireNonNull6 = Objects.requireNonNull(objArrCopyOf[i23 ^ i5]);
                        zzge.zza(objRequireNonNull5, objRequireNonNull6);
                        int iZza3 = zzgf.zza(objRequireNonNull5.hashCode());
                        while (true) {
                            int i24 = iZza3 & i6;
                            int i25 = iArr[i24];
                            if (i25 == -1) {
                                iArr[i24] = i22;
                                if (i21 < i20) {
                                    objArrCopyOf[i22] = objRequireNonNull5;
                                    objArrCopyOf[i22 ^ 1] = objRequireNonNull6;
                                }
                                i21++;
                                i3 = i5;
                                break;
                            }
                            i3 = i5;
                            if (objRequireNonNull5.equals(objArrCopyOf[i25])) {
                                int i26 = i25 ^ 1;
                                zzgn zzgnVar6 = new zzgn(objRequireNonNull5, objRequireNonNull6, Objects.requireNonNull(objArrCopyOf[i26]));
                                objArrCopyOf[i26] = objRequireNonNull6;
                                zzgnVar = zzgnVar6;
                                break;
                            }
                            iZza3 = i24 + 1;
                            i5 = i3;
                        }
                        i20++;
                        i5 = i3;
                    }
                    i2 = i5;
                    if (i21 == i4) {
                        r2 = iArr;
                        r16 = z;
                    } else {
                        Object[] objArr2 = new Object[3];
                        objArr2[0] = iArr;
                        objArr2[i2] = Integer.valueOf(i21);
                        objArr2[2] = zzgnVar;
                        r2 = objArr2;
                        r16 = z;
                    }
                }
            }
        }
        boolean z4 = r2 instanceof Object[];
        ?? r3 = r2;
        if (z4) {
            Object[] objArr3 = (Object[]) r2;
            zzgoVar.zzc = (zzgn) objArr3[2];
            Object obj = objArr3[r16];
            int iIntValue = ((Integer) objArr3[i2]).intValue();
            objArrCopyOf = Arrays.copyOf(objArrCopyOf, iIntValue + iIntValue);
            r3 = obj;
            i4 = iIntValue;
        }
        return new zzgx(r3, objArrCopyOf, i4);
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0003  */
    @Override // com.google.android.gms.internal.games_v2.zzgp, java.util.Map
    public final Object get(Object obj) {
        Object objRequireNonNull;
        if (obj == null) {
            objRequireNonNull = null;
        } else {
            int i = this.zzd;
            Object[] objArr = this.zzb;
            if (i != 1) {
                Object obj2 = this.zzc;
                if (obj2 == null) {
                    objRequireNonNull = null;
                } else if (obj2 instanceof byte[]) {
                    byte[] bArr = (byte[]) obj2;
                    int length = bArr.length - 1;
                    int iZza = zzgf.zza(obj.hashCode());
                    while (true) {
                        int i2 = iZza & length;
                        int i3 = bArr[i2] & 255;
                        if (i3 == 255) {
                            break;
                        }
                        if (obj.equals(objArr[i3])) {
                            objRequireNonNull = objArr[i3 ^ 1];
                        } else {
                            iZza = i2 + 1;
                        }
                    }
                    objRequireNonNull = null;
                } else if (obj2 instanceof short[]) {
                    short[] sArr = (short[]) obj2;
                    int length2 = sArr.length - 1;
                    int iZza2 = zzgf.zza(obj.hashCode());
                    while (true) {
                        int i4 = iZza2 & length2;
                        char c = (char) sArr[i4];
                        if (c == 65535) {
                            break;
                        }
                        if (obj.equals(objArr[c])) {
                            objRequireNonNull = objArr[c ^ 1];
                        } else {
                            iZza2 = i4 + 1;
                        }
                    }
                    objRequireNonNull = null;
                } else {
                    int[] iArr = (int[]) obj2;
                    int length3 = iArr.length - 1;
                    int iZza3 = zzgf.zza(obj.hashCode());
                    while (true) {
                        int i5 = iZza3 & length3;
                        int i6 = iArr[i5];
                        if (i6 == -1) {
                            break;
                        }
                        if (obj.equals(objArr[i6])) {
                            objRequireNonNull = objArr[i6 ^ 1];
                        } else {
                            iZza3 = i5 + 1;
                        }
                    }
                    objRequireNonNull = null;
                }
            } else if (Objects.requireNonNull(objArr[0]).equals(obj)) {
                objRequireNonNull = Objects.requireNonNull(objArr[1]);
            } else {
                objRequireNonNull = null;
            }
        }
        if (objRequireNonNull == null) {
            return null;
        }
        return objRequireNonNull;
    }

    @Override // java.util.Map
    public final int size() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.games_v2.zzgp, java.util.Map
    /* JADX INFO: renamed from: zza */
    public final zzgq entrySet() {
        return new zzgu(this, this.zzb, 0, this.zzd);
    }

    @Override // com.google.android.gms.internal.games_v2.zzgp, java.util.Map
    /* JADX INFO: renamed from: zzb */
    public final zzgq keySet() {
        return new zzgv(this, new zzgw(this.zzb, 0, this.zzd));
    }

    @Override // com.google.android.gms.internal.games_v2.zzgp, java.util.Map
    /* JADX INFO: renamed from: zzc */
    public final zzgi values() {
        return new zzgw(this.zzb, 1, this.zzd);
    }
}
