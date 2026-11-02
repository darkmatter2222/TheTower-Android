package kotlin;

import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdEventCallback;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class k12 extends Lambda implements Function1 {
    public final /* synthetic */ l12 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k12(l12 l12Var) {
        super(1);
        this.a = l12Var;
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
