package kotlin;

import com.google.android.libraries.ads.mobile.sdk.appopen.AppOpenAdEventCallback;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class rk extends Lambda implements Function1 {
    public final /* synthetic */ sk a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rk(sk skVar) {
        super(1);
        this.a = skVar;
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        p005kotlin.Unit unit;
        AppOpenAdEventCallback appOpenAdEventCallback = (AppOpenAdEventCallback) obj;
        fm0 fm0VarJ = this.a.b.j();
        synchronized (fm0VarJ) {
            fm0VarJ.p = appOpenAdEventCallback;
            fm0VarJ.a(appOpenAdEventCallback);
            unit = p005kotlin.Unit.INSTANCE;
        }
        return unit;
    }
}
