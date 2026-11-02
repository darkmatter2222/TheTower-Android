package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import com.google.gson.JsonObject;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public interface zh1 {
    ks3 a();

    Object a(Continuation continuation);

    p005kotlin.Unit a(ContinuationImpl continuationImpl);

    void a(ResponseInfo responseInfo);

    i2 b();

    eo2 c();

    st2 d();

    void destroy();

    double e();

    String f();

    JsonObject g();

    String getAdUnitId();

    ResponseInfo getResponseInfo();
}
