package kotlin;

import com.google.android.libraries.ads.mobile.sdk.internal.webview.PerAdNativeJavscriptEngineJsContext;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class kj2 extends ContinuationImpl {
    public PerAdNativeJavscriptEngineJsContext a;
    public String b;
    public r41 c;
    public Mutex d;
    public /* synthetic */ Object e;
    public final /* synthetic */ PerAdNativeJavscriptEngineJsContext f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kj2(PerAdNativeJavscriptEngineJsContext perAdNativeJavscriptEngineJsContext, Continuation continuation) {
        super(continuation);
        this.f = perAdNativeJavscriptEngineJsContext;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.a((String) null, (r41) null, this);
    }
}
