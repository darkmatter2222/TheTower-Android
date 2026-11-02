package com.google.android.libraries.ads.mobile.sdk.common;

import p005kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u0005\u0012\u0006\u0010\u0010\u001a\u00020\u0005¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\u0017\u0010\n\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR\u0017\u0010\r\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0007\u001a\u0004\b\f\u0010\tR\u0017\u0010\u0010\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u0007\u001a\u0004\b\u000f\u0010\t¨\u0006\u0013"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/VersionInfo;", "", "", "toString", "()Ljava/lang/String;", "", "a", "I", "getMajorVersion", "()I", "majorVersion", "b", "getMinorVersion", "minorVersion", "c", "getMicroVersion", "microVersion", "<init>", "(III)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class VersionInfo {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final int majorVersion;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final int minorVersion;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final int microVersion;

    public VersionInfo(int i, int i2, int i3) {
        this.majorVersion = i;
        this.minorVersion = i2;
        this.microVersion = i3;
    }

    public final int getMajorVersion() {
        return this.majorVersion;
    }

    public final int getMicroVersion() {
        return this.microVersion;
    }

    public final int getMinorVersion() {
        return this.minorVersion;
    }

    public String toString() {
        return this.majorVersion + "." + this.minorVersion + "." + this.microVersion;
    }
}
