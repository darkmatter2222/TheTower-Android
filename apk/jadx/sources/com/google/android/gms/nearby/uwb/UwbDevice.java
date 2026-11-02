package com.google.android.gms.nearby.uwb;

/* JADX INFO: compiled from: com.google.android.gms:play-services-nearby@@18.5.0 */
/* JADX INFO: loaded from: classes2.dex */
public class UwbDevice {
    private final UwbAddress zza;

    private UwbDevice(UwbAddress uwbAddress) {
        this.zza = uwbAddress;
    }

    public static UwbDevice createForAddress(String str) {
        return new UwbDevice(new UwbAddress(str));
    }

    public static UwbDevice createForAddress(byte[] bArr) {
        return new UwbDevice(new UwbAddress(bArr));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UwbDevice)) {
            return false;
        }
        UwbAddress uwbAddress = this.zza;
        UwbAddress uwbAddress2 = ((UwbDevice) obj).zza;
        return uwbAddress == uwbAddress2 || uwbAddress.equals(uwbAddress2);
    }

    public UwbAddress getAddress() {
        return this.zza;
    }

    public int hashCode() {
        return this.zza.hashCode();
    }

    public String toString() {
        return String.format("UwbDevice {%s}", this.zza);
    }
}
