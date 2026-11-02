package kotlin;

import com.google.android.play.core.hsdp.service.HsdpDeepLinkService;
import com.google.android.play.core.hsdp.service.HsdpDeepLinkServiceFactory;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class k61 extends Lambda implements Function0 {
    public final /* synthetic */ p61 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k61(p61 p61Var) {
        super(0);
        this.a = p61Var;
    }

    @Override // p005kotlin.jvm.functions.Function0
    public final Object invoke() {
        HsdpDeepLinkService hsdpDeepLinkServiceCreate = HsdpDeepLinkServiceFactory.create(this.a.a);
        Intrinsics.checkNotNullExpressionValue(hsdpDeepLinkServiceCreate, "create(...)");
        return hsdpDeepLinkServiceCreate;
    }
}
