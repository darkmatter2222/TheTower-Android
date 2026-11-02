package kotlin;

import android.net.Uri;
import kotlinx.coroutines.CompletableDeferred;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class km0 implements a04, nr1 {
    public final r31 a;
    public final /* synthetic */ nr1 b;

    public km0(r31 gmaWebView) {
        Intrinsics.checkNotNullParameter(gmaWebView, "gmaWebView");
        this.a = gmaWebView;
        this.b = gmaWebView.c();
    }

    @Override // kotlin.a04
    public final r31 a() {
        return this.a;
    }

    @Override // kotlin.nr1
    public final Object a(r31 r31Var, Uri uri, Continuation continuation) {
        return this.b.a(r31Var, uri, continuation);
    }

    @Override // kotlin.nr1
    public final Object a(r31 r31Var, String str, Continuation continuation) {
        return this.b.a(r31Var, str, continuation);
    }

    @Override // kotlin.nr1
    public final Object a(String str, r41 r41Var, Continuation continuation) {
        return this.b.a(str, r41Var, continuation);
    }

    @Override // kotlin.nr1
    public final Object a(String str, CompletableDeferred completableDeferred, w21 w21Var) {
        return this.b.a(str, completableDeferred, w21Var);
    }
}
