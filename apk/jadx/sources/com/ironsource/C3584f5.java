package com.ironsource;

import com.ironsource.mediationsdk.logger.IronSourceError;

/* JADX INFO: renamed from: com.ironsource.f5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3584f5 {
    public static final C3584f5 a = new C3584f5();

    private C3584f5() {
    }

    public final boolean a(IronSourceError ironSourceError) {
        if (ironSourceError == null) {
            return false;
        }
        int errorCode = ironSourceError.getErrorCode();
        return errorCode == 524 || errorCode == 530;
    }
}
