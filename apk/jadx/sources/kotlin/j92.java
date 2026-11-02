package kotlin;

import android.content.Context;
import android.os.SystemClock;
import com.google.common.base.Splitter;
import com.google.gson.JsonObject;
import java.util.Optional;
import java.util.concurrent.atomic.AtomicBoolean;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.optionals.OptionalsKt;

/* JADX INFO: loaded from: classes.dex */
public final class j92 implements b24 {
    public final Context a;
    public final String b;
    public final String c;
    public final km d;
    public final Optional e;
    public final tx f;
    public final AtomicBoolean g;
    public final AtomicBoolean h;
    public final i92 i;

    public j92(Context context, String afmaVersion, String adId, km appSettings, Optional optionalGmaWebView, tx clock) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        Intrinsics.checkNotNullParameter(adId, "adId");
        Intrinsics.checkNotNullParameter(appSettings, "appSettings");
        Intrinsics.checkNotNullParameter(optionalGmaWebView, "optionalGmaWebView");
        Intrinsics.checkNotNullParameter(clock, "clock");
        this.a = context;
        this.b = afmaVersion;
        this.c = adId;
        this.d = appSettings;
        this.e = optionalGmaWebView;
        this.f = clock;
        this.g = new AtomicBoolean(false);
        this.h = new AtomicBoolean(false);
        this.i = new i92();
    }

    @Override // kotlin.b24
    public final Object b(ey3 ey3Var, Continuation continuation) {
        Object objB;
        this.i.a = this.h.get() ? false : ey3Var.b;
        i92 i92Var = this.i;
        this.f.getClass();
        i92Var.d = SystemClock.elapsedRealtime();
        this.i.f = ey3Var;
        return (this.g.get() && (objB = b(continuation)) == IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? objB : p005kotlin.Unit.INSTANCE;
    }

    public final Object b(Continuation continuation) {
        r31 r31Var = (r31) OptionalsKt.getOrNull(this.e);
        if (r31Var == null) {
            return p005kotlin.Unit.INSTANCE;
        }
        JsonObject jsonObjectA = this.i.a(this.a, this.b, this.c, this.d);
        Splitter splitter = f01.a;
        f01.b("Calling: AFMA_updateActiveView(" + jsonObjectA + ");", null);
        Object objB = r31Var.b(jsonObjectA, "AFMA_updateActiveView", continuation);
        return objB == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objB : p005kotlin.Unit.INSTANCE;
    }
}
