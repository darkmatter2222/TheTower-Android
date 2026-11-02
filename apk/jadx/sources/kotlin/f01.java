package kotlin;

import android.util.Log;
import com.google.common.base.Splitter;
import java.util.Iterator;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class f01 {
    public static final Splitter a = Splitter.fixedLength(4000);

    public static Splitter a() {
        return a;
    }

    public static /* synthetic */ void a(String str, RuntimeException runtimeException, String str2, int i) {
        if ((i & 2) != 0) {
            runtimeException = null;
        }
        if ((i & 4) != 0) {
            str2 = "GoogleMobileAds";
        }
        a(str, runtimeException, str2);
    }

    public static void a(String msg, Throwable th) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (a(6, "GoogleMobileAds")) {
            Iterator<String> it = a.split(msg).iterator();
            while (it.hasNext()) {
                Log.e("GoogleMobileAds", Thread.currentThread().getName() + ": " + it.next());
            }
            if (th != null) {
                String stackTraceString = Log.getStackTraceString(th);
                Intrinsics.checkNotNullExpressionValue(stackTraceString, "getStackTraceString(...)");
                Log.e("GoogleMobileAds", stackTraceString);
            }
        }
    }

    public static void a(String msg, Throwable th, String tag) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(tag, "tag");
        if (a(4, tag)) {
            Iterator<String> it = a.split(msg).iterator();
            while (it.hasNext()) {
                Log.i(tag, Thread.currentThread().getName() + ": " + it.next());
            }
            if (th != null) {
                String stackTraceString = Log.getStackTraceString(th);
                Intrinsics.checkNotNullExpressionValue(stackTraceString, "getStackTraceString(...)");
                Log.i(tag, stackTraceString);
            }
        }
    }

    public static void a(Function0 msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (au.a() == bu.PRODUCTION || !a(2, "GoogleMobileAds")) {
            return;
        }
        Iterator<String> it = a.split((CharSequence) msg.invoke()).iterator();
        while (it.hasNext()) {
            Log.v("GoogleMobileAds", Thread.currentThread().getName() + ": " + it.next());
        }
    }

    public static boolean a(int i, String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        return i >= au.b || Log.isLoggable(tag, i);
    }

    public static void b(String msg, Throwable th) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (a(2, "GoogleMobileAds")) {
            Iterator<String> it = a.split(msg).iterator();
            while (it.hasNext()) {
                Log.v("GoogleMobileAds", Thread.currentThread().getName() + ": " + it.next());
            }
            if (th != null) {
                String stackTraceString = Log.getStackTraceString(th);
                Intrinsics.checkNotNullExpressionValue(stackTraceString, "getStackTraceString(...)");
                Log.v("GoogleMobileAds", stackTraceString);
            }
        }
    }

    public static void c(String msg, Throwable th) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (a(5, "GoogleMobileAds")) {
            Iterator<String> it = a.split(msg).iterator();
            while (it.hasNext()) {
                Log.w("GoogleMobileAds", Thread.currentThread().getName() + ": " + it.next());
            }
            if (th != null) {
                String stackTraceString = Log.getStackTraceString(th);
                Intrinsics.checkNotNullExpressionValue(stackTraceString, "getStackTraceString(...)");
                Log.w("GoogleMobileAds", stackTraceString);
            }
        }
    }
}
