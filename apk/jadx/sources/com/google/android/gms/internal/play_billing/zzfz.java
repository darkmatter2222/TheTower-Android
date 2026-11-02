package com.google.android.gms.internal.play_billing;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public enum zzfz {
    DOUBLE(0, 1, zzgt.DOUBLE),
    FLOAT(1, 1, zzgt.FLOAT),
    INT64(2, 1, zzgt.LONG),
    UINT64(3, 1, zzgt.LONG),
    INT32(4, 1, zzgt.INT),
    FIXED64(5, 1, zzgt.LONG),
    FIXED32(6, 1, zzgt.INT),
    BOOL(7, 1, zzgt.BOOLEAN),
    STRING(8, 1, zzgt.STRING),
    MESSAGE(9, 1, zzgt.MESSAGE),
    BYTES(10, 1, zzgt.BYTE_STRING),
    UINT32(11, 1, zzgt.INT),
    ENUM(12, 1, zzgt.ENUM),
    SFIXED32(13, 1, zzgt.INT),
    SFIXED64(14, 1, zzgt.LONG),
    SINT32(15, 1, zzgt.INT),
    SINT64(16, 1, zzgt.LONG),
    GROUP(17, 1, zzgt.MESSAGE),
    DOUBLE_LIST(18, 2, zzgt.DOUBLE),
    FLOAT_LIST(19, 2, zzgt.FLOAT),
    INT64_LIST(20, 2, zzgt.LONG),
    UINT64_LIST(21, 2, zzgt.LONG),
    INT32_LIST(22, 2, zzgt.INT),
    FIXED64_LIST(23, 2, zzgt.LONG),
    FIXED32_LIST(24, 2, zzgt.INT),
    BOOL_LIST(25, 2, zzgt.BOOLEAN),
    STRING_LIST(26, 2, zzgt.STRING),
    MESSAGE_LIST(27, 2, zzgt.MESSAGE),
    BYTES_LIST(28, 2, zzgt.BYTE_STRING),
    UINT32_LIST(29, 2, zzgt.INT),
    ENUM_LIST(30, 2, zzgt.ENUM),
    SFIXED32_LIST(31, 2, zzgt.INT),
    SFIXED64_LIST(32, 2, zzgt.LONG),
    SINT32_LIST(33, 2, zzgt.INT),
    SINT64_LIST(34, 2, zzgt.LONG),
    DOUBLE_LIST_PACKED(35, 3, zzgt.DOUBLE),
    FLOAT_LIST_PACKED(36, 3, zzgt.FLOAT),
    INT64_LIST_PACKED(37, 3, zzgt.LONG),
    UINT64_LIST_PACKED(38, 3, zzgt.LONG),
    INT32_LIST_PACKED(39, 3, zzgt.INT),
    FIXED64_LIST_PACKED(40, 3, zzgt.LONG),
    FIXED32_LIST_PACKED(41, 3, zzgt.INT),
    BOOL_LIST_PACKED(42, 3, zzgt.BOOLEAN),
    UINT32_LIST_PACKED(43, 3, zzgt.INT),
    ENUM_LIST_PACKED(44, 3, zzgt.ENUM),
    SFIXED32_LIST_PACKED(45, 3, zzgt.INT),
    SFIXED64_LIST_PACKED(46, 3, zzgt.LONG),
    SINT32_LIST_PACKED(47, 3, zzgt.INT),
    SINT64_LIST_PACKED(48, 3, zzgt.LONG),
    GROUP_LIST(49, 2, zzgt.MESSAGE),
    MAP(50, 4, zzgt.VOID);

    private static final zzfz[] zzZ;
    private final int zzab;

    static {
        zzfz[] zzfzVarArrValues = values();
        zzZ = new zzfz[zzfzVarArrValues.length];
        for (zzfz zzfzVar : zzfzVarArrValues) {
            zzZ[zzfzVar.zzab] = zzfzVar;
        }
    }

    zzfz(int i, int i2, zzgt zzgtVar) {
        this.zzab = i;
        int i3 = i2 - 1;
        if (i3 == 1 || i3 == 3) {
            zzgtVar.zza();
        }
        if (i2 == 1) {
            zzgt zzgtVar2 = zzgt.VOID;
            zzgtVar.ordinal();
        }
    }

    public final int zza() {
        return this.zzab;
    }
}
