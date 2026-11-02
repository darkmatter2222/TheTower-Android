package kotlin;

import okhttp3.OkHttpClient;
import okhttp3.Request;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Lambda;
import p005kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public final class g71 extends Lambda implements Function0 {
    public final /* synthetic */ Ref.ObjectRef a;
    public final /* synthetic */ Request b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g71(Ref.ObjectRef objectRef, Request request) {
        super(0);
        this.a = objectRef;
        this.b = request;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p005kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String invoke() {
        return "HttpClient " + ((OkHttpClient) this.a.element).connectionPool().connectionCount() + " connections after: " + this.b.url().uri();
    }
}
