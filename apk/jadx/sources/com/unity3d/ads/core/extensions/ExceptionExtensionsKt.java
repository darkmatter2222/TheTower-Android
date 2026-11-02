package com.unity3d.ads.core.extensions;

import com.unity3d.services.SDKErrorHandler;
import java.io.PrintWriter;
import java.io.StringWriter;
import p005kotlin.Metadata;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.sequences.SequencesKt;
import p005kotlin.text.StringsKt;

/* JADX INFO: compiled from: ExceptionExtensions.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u0014\u0010\u0003\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u0005¨\u0006\u0006"}, d2 = {"retrieveUnityCrashValue", "", "", "getShortenedStackTrace", "maxLines", "", "unity-ads_defaultRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ExceptionExtensionsKt {
    public static final String getShortenedStackTrace(Throwable th, int i) {
        Intrinsics.checkNotNullParameter(th, "<this>");
        try {
            StringWriter stringWriter = new StringWriter();
            try {
                StringWriter stringWriter2 = stringWriter;
                PrintWriter printWriter = new PrintWriter(stringWriter2);
                try {
                    th.printStackTrace(printWriter);
                    String string = stringWriter2.toString();
                    Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                    String strJoinToString$default = SequencesKt.joinToString$default(SequencesKt.take(StringsKt.lineSequence(StringsKt.trim((CharSequence) string).toString()), i), "\n", null, null, 0, null, null, 62, null);
                    CloseableKt.closeFinally(printWriter, null);
                    CloseableKt.closeFinally(stringWriter, null);
                    return strJoinToString$default;
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        CloseableKt.closeFinally(printWriter, th2);
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                try {
                    throw th4;
                } catch (Throwable th5) {
                    CloseableKt.closeFinally(stringWriter, th4);
                    throw th5;
                }
            }
        } catch (Throwable unused) {
            return "";
        }
    }

    public static /* synthetic */ String getShortenedStackTrace$default(Throwable th, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 15;
        }
        return getShortenedStackTrace(th, i);
    }

    public static final String retrieveUnityCrashValue(Throwable th) {
        StackTraceElement stackTraceElement;
        String className;
        Intrinsics.checkNotNullParameter(th, "<this>");
        StackTraceElement[] stackTrace = th.getStackTrace();
        Intrinsics.checkNotNullExpressionValue(stackTrace, "getStackTrace(...)");
        StackTraceElement[] stackTraceElementArr = stackTrace;
        int length = stackTraceElementArr.length;
        int i = 0;
        while (true) {
            stackTraceElement = null;
            if (i >= length) {
                break;
            }
            StackTraceElement stackTraceElement2 = stackTraceElementArr[i];
            StackTraceElement stackTraceElement3 = stackTraceElement2;
            if ((stackTraceElement3 == null || (className = stackTraceElement3.getClassName()) == null) ? false : StringsKt.contains$default((CharSequence) className, (CharSequence) SDKErrorHandler.UNITY_PACKAGE, false, 2, (Object) null)) {
                stackTraceElement = stackTraceElement2;
                break;
            }
            i++;
        }
        StackTraceElement stackTraceElement4 = stackTraceElement;
        if (stackTraceElement4 != null) {
            String fileName = stackTraceElement4.getFileName();
            if (fileName == null) {
                fileName = "unknown";
            }
            String str = fileName + '_' + stackTraceElement4.getLineNumber();
            if (str != null) {
                return str;
            }
        }
        return "unknown";
    }
}
