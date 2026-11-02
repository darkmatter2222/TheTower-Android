package kotlin;

import android.content.Context;
import androidx.webkit.Profile;
import androidx.webkit.WebViewFeature;
import com.ironsource.C3510b4;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import p005kotlin.collections.SetsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class ns {
    public final Context a;
    public final q04 b;
    public final ex0 c;

    public ns(Context context, q04 webViewProfileNameHelper, ex0 flags) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(webViewProfileNameHelper, "webViewProfileNameHelper");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = context;
        this.b = webViewProfileNameHelper;
        this.c = flags;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x004b A[Catch: all -> 0x0050, TRY_LEAVE, TryCatch #0 {all -> 0x0050, blocks: (B:3:0x0007, B:6:0x0023, B:8:0x003b, B:9:0x004b), top: B:15:0x0007 }] */
    public final void a(rz executor, boolean z, wz3 wz3Var) {
        Set setEmptySet;
        Intrinsics.checkNotNullParameter(executor, "executor");
        try {
            ex0 ex0Var = this.c;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:webview_profile:enabled", C3510b4.i.W);
            Boolean bool = Boolean.TRUE;
            ir irVar = yr.b;
            if (((Boolean) ex0Var.a("gads:webview_profile:enabled", bool, irVar)).booleanValue()) {
                ex0 ex0Var2 = this.c;
                ex0Var2.getClass();
                Intrinsics.checkNotNullParameter("gads:init_profile_during_webview_startup:enabled", C3510b4.i.W);
                if (((Boolean) ex0Var2.a("gads:init_profile_during_webview_startup:enabled", Boolean.FALSE, irVar)).booleanValue()) {
                    setEmptySet = SetsKt.setOf((Object[]) new String[]{"GMA_WEBVIEW_PROFILE", Profile.DEFAULT_PROFILE_NAME});
                } else {
                    setEmptySet = SetsKt.setOf(Profile.DEFAULT_PROFILE_NAME);
                }
            } else {
                setEmptySet = SetsKt.setOf(Profile.DEFAULT_PROFILE_NAME);
            }
        } catch (Throwable unused) {
            setEmptySet = SetsKt.emptySet();
        }
        AtomicBoolean atomicBoolean = az3.a;
        az3.a(this.a, executor, z, setEmptySet, wz3Var);
    }

    public final boolean a() {
        String name;
        try {
            if (!WebViewFeature.isFeatureSupported("MULTI_PROFILE")) {
                return false;
            }
            r14 r14Var = (r14) this.b;
            r14Var.getClass();
            try {
                Profile profile = r14Var.m;
                name = profile != null ? profile.getName() : null;
            } catch (Throwable unused) {
            }
            if (name != null || !((r14) this.b).g()) {
                return name != null && Intrinsics.areEqual(name, "GMA_WEBVIEW_PROFILE");
            }
            r14 r14Var2 = (r14) this.b;
            r14Var2.getClass();
            Intrinsics.checkNotNullParameter("GMA_WEBVIEW_PROFILE", "profileName");
            BuildersKt__Builders_commonKt.launch$default(r14Var2.e, null, null, new p14(r14Var2, "GMA_WEBVIEW_PROFILE", null), 3, null);
            return true;
        } catch (Throwable unused2) {
        }
    }
}
