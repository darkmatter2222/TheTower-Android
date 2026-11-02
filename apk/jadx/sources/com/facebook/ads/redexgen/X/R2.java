package com.facebook.ads.redexgen.X;

import android.media.AudioTrack;
import android.media.metrics.LogSessionId;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class R2 {
    public static void A00(AudioTrack audioTrack, QD qd) {
        LogSessionId logSessionIdA00 = qd.A00();
        if (logSessionIdA00.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
            return;
        }
        audioTrack.setLogSessionId(logSessionIdA00);
    }
}
