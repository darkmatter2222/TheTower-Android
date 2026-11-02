package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import java.util.concurrent.CancellationException;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class as0 {
    public static bs0 a(v01 result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (result instanceof q01) {
            return bs0.FILL;
        }
        if (result instanceof r01) {
            return bs0.TIMEOUT;
        }
        if (result instanceof j01) {
            return ((j01) result).c instanceof CancellationException ? bs0.CANCELLED : bs0.EXCEPTION;
        }
        if (!(result instanceof l01)) {
            return bs0.ERROR;
        }
        int iIntValue = ((l01) result).c.getCode().intValue();
        if (iIntValue == LoadAdError.ErrorCode.NOT_FOUND.getValue()) {
            return bs0.NOT_FOUND;
        }
        return iIntValue == LoadAdError.ErrorCode.NO_FILL.getValue() ? bs0.NO_FILL : bs0.ERROR;
    }
}
