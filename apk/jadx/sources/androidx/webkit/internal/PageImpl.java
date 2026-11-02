package androidx.webkit.internal;

import androidx.webkit.Page;
import java.lang.reflect.InvocationHandler;
import java.util.Objects;
import java.util.concurrent.Callable;
import org.chromium.support_lib_boundary.WebViewPageBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;

/* JADX INFO: loaded from: classes2.dex */
public class PageImpl implements Page {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final WebViewPageBoundaryInterface mPageBoundaryInterface;

    private PageImpl(WebViewPageBoundaryInterface webViewPageBoundaryInterface) {
        this.mPageBoundaryInterface = webViewPageBoundaryInterface;
    }

    public static Page forInvocationHandler(InvocationHandler invocationHandler) {
        final WebViewPageBoundaryInterface webViewPageBoundaryInterface = (WebViewPageBoundaryInterface) BoundaryInterfaceReflectionUtil.castToSuppLibClass(WebViewPageBoundaryInterface.class, invocationHandler);
        return (Page) Objects.requireNonNull(webViewPageBoundaryInterface.getOrCreatePeer(new Callable() { // from class: androidx.webkit.internal.PageImpl$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return PageImpl.lambda$forInvocationHandler$0(webViewPageBoundaryInterface);
            }
        }));
    }

    static /* synthetic */ Object lambda$forInvocationHandler$0(WebViewPageBoundaryInterface webViewPageBoundaryInterface) throws Exception {
        return new PageImpl(webViewPageBoundaryInterface);
    }
}
