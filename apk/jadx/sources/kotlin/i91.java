package kotlin;

import com.google.android.libraries.ads.mobile.sdk.iconad.IconAdEventCallback;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class i91 extends Lambda implements Function1 {
    public final /* synthetic */ j91 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i91(j91 j91Var) {
        super(1);
        this.a = j91Var;
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        p005kotlin.Unit unit;
        IconAdEventCallback iconAdEventCallback = (IconAdEventCallback) obj;
        fm0 fm0VarJ = this.a.b.b.j();
        synchronized (fm0VarJ) {
            fm0VarJ.q = iconAdEventCallback;
            fm0VarJ.a(iconAdEventCallback);
            unit = p005kotlin.Unit.INSTANCE;
        }
        return unit;
    }
}
