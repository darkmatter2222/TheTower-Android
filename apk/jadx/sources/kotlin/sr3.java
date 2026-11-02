package kotlin;

import com.google.common.base.Splitter;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class sr3 {
    public static ur3 a;

    public static void a(String message) {
        ur3 ur3Var;
        Intrinsics.checkNotNullParameter(message, "message");
        Splitter splitter = f01.a;
        f01.b(message, null);
        IllegalStateException illegalStateException = new IllegalStateException(message);
        illegalStateException.printStackTrace();
        bu buVar = au.a;
        if (buVar == bu.DEVELOPMENT || buVar == bu.INTEGRATION_TEST) {
            throw illegalStateException;
        }
        if (buVar != bu.PRODUCTION || (ur3Var = a) == null) {
            return;
        }
        ((as3) ur3Var).a(message, (Throwable) illegalStateException);
    }
}
