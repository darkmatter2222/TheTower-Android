package kotlin;

import android.content.res.Configuration;
import androidx.activity.ComponentActivity;
import com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public interface h0 {
    default Object a(FullScreenContentError fullScreenContentError, Continuation continuation) {
        return p005kotlin.Unit.INSTANCE;
    }

    default void a() {
    }

    void a(ComponentActivity componentActivity);

    default void b() {
    }

    default void c() {
    }

    default void e() {
    }

    default void onConfigurationChanged(Configuration configuration) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
    }

    void onDestroy();

    default void onPause() {
    }

    default void onResume() {
    }

    default void onStop() {
    }
}
