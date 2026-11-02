package kotlin;

import android.content.Context;
import android.view.View;
import com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdPosition;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class un2 extends SuspendLambda implements Function2 {
    public int a;
    public int b;
    public final /* synthetic */ do2 c;
    public final /* synthetic */ ao2 d;
    public final /* synthetic */ PictureInPictureAdPosition e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public un2(do2 do2Var, ao2 ao2Var, PictureInPictureAdPosition pictureInPictureAdPosition, Continuation continuation) {
        super(2, continuation);
        this.c = do2Var;
        this.d = ao2Var;
        this.e = pictureInPictureAdPosition;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new un2(this.c, this.d, this.e, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((un2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.b;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            i = 0;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i = this.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        while (this.c.b()) {
            if (i >= this.d.h.c()) {
                ((as3) this.d.d).a("PipPresenter.applySnapTrajectory", (Throwable) new IllegalStateException("PiP Container failed to obtain valid size for snapping after multiple retries."));
                return p005kotlin.Unit.INSTANCE;
            }
            i++;
            this.a = i;
            this.b = 1;
            if (DelayKt.delay(16L, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        Object parent = this.c.getParent();
        View view = parent instanceof View ? (View) parent : null;
        if (view == null) {
            ((as3) this.d.d).a("PipPresenter.applySnapTrajectory", (Throwable) new IllegalStateException("PiP Container parent is null or not a View."));
            return p005kotlin.Unit.INSTANCE;
        }
        float width = view.getWidth();
        float height = view.getHeight();
        float width2 = this.c.getWidth();
        float height2 = this.c.getHeight();
        Context context = this.c.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        p005kotlin.Pair pairA = ao2.a(this.d, view, this.e, width, height, width2, height2, zn0.a(context, this.d.h.d()));
        float fFloatValue = ((Number) pairA.component1()).floatValue();
        float fFloatValue2 = ((Number) pairA.component2()).floatValue();
        g83 g83Var = this.d.e;
        s11 s11Var = s11.CUI_NAME_MOVE_PIP_AD;
        List listListOf = CollectionsKt.listOf((Object[]) new String[]{"current_position:" + this.c.a(), "target_position:" + this.e});
        ks3 ks3Var = this.d.f;
        do2 do2Var = this.c;
        ao2 ao2Var = this.d;
        PictureInPictureAdPosition pictureInPictureAdPosition = this.e;
        if (hs3.c() == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listListOf, ks3Var);
            try {
                do2Var.animate().x(fFloatValue).y(fFloatValue2).setDuration(Duration.m4378getInWholeMillisecondsimpl(ao2Var.h.a())).start();
                do2Var.a(pictureInPictureAdPosition);
                Object obj2 = p005kotlin.Unit.INSTANCE;
                if (obj2 instanceof i01) {
                    xs3.a((i01) obj2, false);
                }
                CloseableKt.closeFinally(tu2VarA, null);
            } catch (Throwable th) {
                try {
                    tu2VarA.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        tu2VarA.a(th);
                    }
                    if (th instanceof TimeoutCancellationException) {
                        throw new i21(th);
                    }
                    if (th instanceof CancellationException) {
                        throw new wz0(th);
                    }
                    if (th instanceof w01) {
                        throw th;
                    }
                    throw new b01(th);
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        CloseableKt.closeFinally(tu2VarA, th2);
                        throw th3;
                    }
                }
            }
        } else {
            rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
            try {
                do2Var.animate().x(fFloatValue).y(fFloatValue2).setDuration(Duration.m4378getInWholeMillisecondsimpl(ao2Var.h.a())).start();
                do2Var.a(pictureInPictureAdPosition);
                Object obj3 = p005kotlin.Unit.INSTANCE;
                if (obj3 instanceof i01) {
                    xs3.a((i01) obj3, false);
                }
                CloseableKt.closeFinally(rr3VarA, null);
            } catch (Throwable th4) {
                try {
                    rr3VarA.b(th4);
                    if (th4 instanceof v24) {
                        throw th4;
                    }
                    if (!(th4 instanceof TimeoutCancellationException) && !(th4 instanceof CancellationException)) {
                        rr3VarA.a(th4);
                    }
                    if (th4 instanceof TimeoutCancellationException) {
                        throw new i21(th4);
                    }
                    if (th4 instanceof CancellationException) {
                        throw new wz0(th4);
                    }
                    if (th4 instanceof w01) {
                        throw th4;
                    }
                    throw new b01(th4);
                } catch (Throwable th5) {
                    try {
                        throw th5;
                    } catch (Throwable th6) {
                        CloseableKt.closeFinally(rr3VarA, th5);
                        throw th6;
                    }
                }
            }
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
