package kotlin;

import org.chromium.net.UrlRequest;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class o60 extends Lambda implements Function1 {
    public final /* synthetic */ UrlRequest a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o60(UrlRequest urlRequest) {
        super(1);
        this.a = urlRequest;
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        this.a.cancel();
        return p005kotlin.Unit.INSTANCE;
    }
}
