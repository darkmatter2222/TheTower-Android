package kotlin;

import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdEventCallback;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class lc0 extends Lambda implements Function1 {
    public final /* synthetic */ nc0 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lc0(nc0 nc0Var) {
        super(1);
        this.a = nc0Var;
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        p005kotlin.Unit unit;
        NativeAdEventCallback nativeAdEventCallback = (NativeAdEventCallback) obj;
        fm0 fm0VarJ = this.a.b.j();
        synchronized (fm0VarJ) {
            fm0VarJ.l = nativeAdEventCallback;
            fm0VarJ.a(nativeAdEventCallback);
            unit = p005kotlin.Unit.INSTANCE;
        }
        return unit;
    }
}
