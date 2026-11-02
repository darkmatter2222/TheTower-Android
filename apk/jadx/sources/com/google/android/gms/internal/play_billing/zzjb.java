package com.google.android.gms.internal.play_billing;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public enum zzjb {
    DOUBLE(zzjc.DOUBLE, 1),
    FLOAT(zzjc.FLOAT, 5),
    INT64(zzjc.LONG, 0),
    UINT64(zzjc.LONG, 0),
    INT32(zzjc.INT, 0),
    FIXED64(zzjc.LONG, 1),
    FIXED32(zzjc.INT, 5),
    BOOL(zzjc.BOOLEAN, 0),
    STRING(zzjc.STRING, 2),
    GROUP(zzjc.MESSAGE, 3),
    MESSAGE(zzjc.MESSAGE, 2),
    BYTES(zzjc.BYTE_STRING, 2),
    UINT32(zzjc.INT, 0),
    ENUM(zzjc.ENUM, 0),
    SFIXED32(zzjc.INT, 5),
    SFIXED64(zzjc.LONG, 1),
    SINT32(zzjc.INT, 0),
    SINT64(zzjc.LONG, 0);

    private final zzjc zzt;
    private final int zzu;

    zzjb(zzjc zzjcVar, int i) {
        this.zzt = zzjcVar;
        this.zzu = i;
    }

    public final int zza() {
        return this.zzu;
    }

    public final zzjc zzb() {
        return this.zzt;
    }
}
