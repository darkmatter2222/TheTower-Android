package kotlin;

import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.PreloadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.PreloadConfiguration;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class ls2 extends ContinuationImpl {
    public pt2 a;
    public String b;
    public PreloadConfiguration c;
    public BannerAdRequest d;
    public PreloadCallback e;
    public Mutex f;
    public pt2 g;
    public String h;
    public /* synthetic */ Object i;
    public final /* synthetic */ pt2 j;
    public int k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ls2(pt2 pt2Var, Continuation continuation) {
        super(continuation);
        this.j = pt2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.i = obj;
        this.k |= Integer.MIN_VALUE;
        return pt2.a((BannerAdRequest) null, (PreloadCallback) null, (PreloadConfiguration) null, this.j, (String) null, this);
    }
}
