package kotlin;

import kotlinx.coroutines.ThreadContextElement;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class wq2 implements ThreadContextElement {
    public static final vq2 b = new vq2();
    public static final ThreadLocal c = new ThreadLocal();
    public final uq2 a;

    public wq2(uq2 scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.a = scope;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public wq2(String preloadId, j53 requestType, xq2 callbackType) {
        this(new uq2(preloadId, requestType, callbackType));
        Intrinsics.checkNotNullParameter(preloadId, "preloadId");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(callbackType, "callbackType");
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, p005kotlin.coroutines.CoroutineContext
    public final Object fold(Object obj, Function2 function2) {
        return ThreadContextElement.DefaultImpls.fold(this, obj, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, p005kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element get(CoroutineContext.Key key) {
        return ThreadContextElement.DefaultImpls.get(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public final CoroutineContext.Key getKey() {
        return b;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, p005kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.Key key) {
        return ThreadContextElement.DefaultImpls.minusKey(this, key);
    }

    @Override // p005kotlin.coroutines.CoroutineContext
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        return ThreadContextElement.DefaultImpls.plus(this, coroutineContext);
    }

    @Override // kotlinx.coroutines.ThreadContextElement
    public final void restoreThreadContext(CoroutineContext context, Object obj) {
        uq2 uq2Var = (uq2) obj;
        Intrinsics.checkNotNullParameter(context, "context");
        if (uq2Var == null) {
            c.remove();
        } else {
            c.set(uq2Var);
        }
    }

    @Override // kotlinx.coroutines.ThreadContextElement
    public final Object updateThreadContext(CoroutineContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        ThreadLocal threadLocal = c;
        uq2 uq2Var = (uq2) threadLocal.get();
        threadLocal.set(this.a);
        return uq2Var;
    }
}
