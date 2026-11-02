package kotlin;

import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.common.VideoOptions;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class j62 {
    public final Context a;
    public final CoroutineScope b;
    public final iz3 c;
    public final n62 d;
    public final ex0 e;
    public final NativeRequest f;

    public j62(Context applicationContext, CoroutineScope uiScope, iz3 webViewFactory, n62 nativeMediaWebViewConfigurator, ex0 flags, NativeRequest nativeRequest) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(webViewFactory, "webViewFactory");
        Intrinsics.checkNotNullParameter(nativeMediaWebViewConfigurator, "nativeMediaWebViewConfigurator");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(nativeRequest, "nativeRequest");
        this.a = applicationContext;
        this.b = uiScope;
        this.c = webViewFactory;
        this.d = nativeMediaWebViewConfigurator;
        this.e = flags;
        this.f = nativeRequest;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object a(j62 j62Var, r31 r31Var, Continuation continuation) {
        i62 i62Var;
        VideoOptions videoOptions;
        j62Var.getClass();
        if (continuation instanceof i62) {
            i62Var = (i62) continuation;
            int i = i62Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                i62Var.d = i - Integer.MIN_VALUE;
            } else {
                i62Var = new i62(j62Var, continuation);
            }
        } else {
            i62Var = new i62(j62Var, continuation);
        }
        Object obj = i62Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = i62Var.d;
        if (i2 != 0) {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            r31 r31Var2 = i62Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            return r31Var2;
        }
        p005kotlin.ResultKt.throwOnFailure(obj);
        q41 q41VarD = r31Var.d();
        if (q41VarD != null && (videoOptions = j62Var.f.getVideoOptions()) != null) {
            i62Var.a = r31Var;
            i62Var.d = 1;
            if (q41VarD.a(videoOptions, i62Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return r31Var;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00c2 A[Catch: all -> 0x00f1, TryCatch #0 {all -> 0x00f1, blocks: (B:39:0x00bb, B:41:0x00c2, B:43:0x00c6, B:45:0x00ca, B:46:0x00cd, B:48:0x00d1, B:50:0x00d5, B:52:0x00d9, B:53:0x00da, B:54:0x00df, B:55:0x00e0, B:56:0x00e7, B:57:0x00e8, B:58:0x00ef, B:59:0x00f0), top: B:66:0x00bb }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00d1 A[Catch: all -> 0x00f1, TryCatch #0 {all -> 0x00f1, blocks: (B:39:0x00bb, B:41:0x00c2, B:43:0x00c6, B:45:0x00ca, B:46:0x00cd, B:48:0x00d1, B:50:0x00d5, B:52:0x00d9, B:53:0x00da, B:54:0x00df, B:55:0x00e0, B:56:0x00e7, B:57:0x00e8, B:58:0x00ef, B:59:0x00f0), top: B:66:0x00bb }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00d5 A[Catch: all -> 0x00f1, TryCatch #0 {all -> 0x00f1, blocks: (B:39:0x00bb, B:41:0x00c2, B:43:0x00c6, B:45:0x00ca, B:46:0x00cd, B:48:0x00d1, B:50:0x00d5, B:52:0x00d9, B:53:0x00da, B:54:0x00df, B:55:0x00e0, B:56:0x00e7, B:57:0x00e8, B:58:0x00ef, B:59:0x00f0), top: B:66:0x00bb }] */
    /* JADX WARN: Code duplicated, block: B:52:0x00d9 A[Catch: all -> 0x00f1, TryCatch #0 {all -> 0x00f1, blocks: (B:39:0x00bb, B:41:0x00c2, B:43:0x00c6, B:45:0x00ca, B:46:0x00cd, B:48:0x00d1, B:50:0x00d5, B:52:0x00d9, B:53:0x00da, B:54:0x00df, B:55:0x00e0, B:56:0x00e7, B:57:0x00e8, B:58:0x00ef, B:59:0x00f0), top: B:66:0x00bb }] */
    /* JADX WARN: Code duplicated, block: B:53:0x00da A[Catch: all -> 0x00f1, TryCatch #0 {all -> 0x00f1, blocks: (B:39:0x00bb, B:41:0x00c2, B:43:0x00c6, B:45:0x00ca, B:46:0x00cd, B:48:0x00d1, B:50:0x00d5, B:52:0x00d9, B:53:0x00da, B:54:0x00df, B:55:0x00e0, B:56:0x00e7, B:57:0x00e8, B:58:0x00ef, B:59:0x00f0), top: B:66:0x00bb }] */
    /* JADX WARN: Code duplicated, block: B:55:0x00e0 A[Catch: all -> 0x00f1, TryCatch #0 {all -> 0x00f1, blocks: (B:39:0x00bb, B:41:0x00c2, B:43:0x00c6, B:45:0x00ca, B:46:0x00cd, B:48:0x00d1, B:50:0x00d5, B:52:0x00d9, B:53:0x00da, B:54:0x00df, B:55:0x00e0, B:56:0x00e7, B:57:0x00e8, B:58:0x00ef, B:59:0x00f0), top: B:66:0x00bb }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00e8 A[Catch: all -> 0x00f1, TryCatch #0 {all -> 0x00f1, blocks: (B:39:0x00bb, B:41:0x00c2, B:43:0x00c6, B:45:0x00ca, B:46:0x00cd, B:48:0x00d1, B:50:0x00d5, B:52:0x00d9, B:53:0x00da, B:54:0x00df, B:55:0x00e0, B:56:0x00e7, B:57:0x00e8, B:58:0x00ef, B:59:0x00f0), top: B:66:0x00bb }] */
    /* JADX WARN: Code duplicated, block: B:59:0x00f0 A[Catch: all -> 0x00f1, TRY_LEAVE, TryCatch #0 {all -> 0x00f1, blocks: (B:39:0x00bb, B:41:0x00c2, B:43:0x00c6, B:45:0x00ca, B:46:0x00cd, B:48:0x00d1, B:50:0x00d5, B:52:0x00d9, B:53:0x00da, B:54:0x00df, B:55:0x00e0, B:56:0x00e7, B:57:0x00e8, B:58:0x00ef, B:59:0x00f0), top: B:66:0x00bb }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00ad, code lost:
    
        if (r12.a(r13, r7) == r0) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(kotlin.j62 r10, kotlin.v14 r11, kotlin.eo2 r12, p005kotlin.coroutines.Continuation r13) {
        /*
            Method dump skipped, instruction units count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.j62.a(ads_mobile_sdk.j62, ads_mobile_sdk.v14, ads_mobile_sdk.eo2, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
