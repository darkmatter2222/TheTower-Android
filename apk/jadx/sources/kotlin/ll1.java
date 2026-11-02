package kotlin;

import com.google.common.base.Splitter;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class ll1 extends SuspendLambda implements Function2 {
    public rr3 a;
    public rr3 b;
    public int c;
    public final /* synthetic */ cm1 d;
    public final /* synthetic */ boolean e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ll1(cm1 cm1Var, boolean z, Continuation continuation) {
        super(2, continuation);
        this.d = cm1Var;
        this.e = z;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ll1(this.d, this.e, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new ll1(this.d, this.e, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0094 A[Catch: all -> 0x009e, TRY_LEAVE, TryCatch #8 {all -> 0x009e, blocks: (B:32:0x008e, B:34:0x0094, B:31:0x0089), top: B:124:0x0089 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x0113 A[Catch: all -> 0x011e, TRY_LEAVE, TryCatch #9 {all -> 0x011e, blocks: (B:76:0x010d, B:78:0x0113, B:75:0x0108), top: B:126:0x0108 }] */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        rr3 rr3VarA;
        rr3 rr3Var;
        rr3 rr3VarA2;
        rr3 rr3Var2;
        Object obj2;
        Object obj3;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.c;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            cm1 cm1Var = this.d;
            g83 g83Var = cm1Var.g;
            s11 s11Var = s11.CUI_NAME_SDKINIT_INIT_CONTENT_PROVIDER;
            boolean z = this.e;
            List listEmptyList = CollectionsKt.emptyList();
            ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
            if (hs3.b().a == null) {
                rr3VarA2 = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                try {
                    hs3.a().e().P = z ? r11.CONTENT_PROVIDER_TYPE_EARLY_INIT_WITH_WEBVIEW : r11.CONTENT_PROVIDER_TYPE_EARLY_INIT;
                    this.a = rr3VarA2;
                    this.b = rr3VarA2;
                    this.c = 1;
                    if (cm1Var.b(this) != coroutine_suspended) {
                        rr3Var2 = rr3VarA2;
                        obj2 = p005kotlin.Unit.INSTANCE;
                        if (obj2 instanceof i01) {
                            xs3.a((i01) obj2, false);
                        }
                        CloseableKt.closeFinally(rr3Var2, null);
                    }
                } catch (Throwable th) {
                    th = th;
                    rr3Var2 = rr3VarA2;
                    Splitter splitter = f01.a;
                    f01.a("Early initialization failed", th);
                }
            } else {
                rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                try {
                    hs3.a().e().P = z ? r11.CONTENT_PROVIDER_TYPE_EARLY_INIT_WITH_WEBVIEW : r11.CONTENT_PROVIDER_TYPE_EARLY_INIT;
                    this.a = rr3VarA;
                    this.b = rr3VarA;
                    this.c = 2;
                    if (cm1Var.b(this) != coroutine_suspended) {
                        rr3Var = rr3VarA;
                        obj3 = p005kotlin.Unit.INSTANCE;
                        if (obj3 instanceof i01) {
                            xs3.a((i01) obj3, false);
                        }
                        CloseableKt.closeFinally(rr3Var, null);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    rr3Var = rr3VarA;
                    Splitter splitter2 = f01.a;
                    f01.a("Early initialization failed", th);
                }
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            rr3Var2 = this.b;
            rr3VarA2 = this.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
            } catch (Throwable th3) {
                th = th3;
                try {
                    Splitter splitter3 = f01.a;
                    f01.a("Early initialization failed", th);
                } catch (Throwable th4) {
                    try {
                        rr3VarA2.b(th4);
                        if (th4 instanceof v24) {
                            throw th4;
                        }
                        if (!(th4 instanceof TimeoutCancellationException) && !(th4 instanceof CancellationException)) {
                            rr3VarA2.a(th4);
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
                            CloseableKt.closeFinally(rr3Var2, th5);
                            throw th6;
                        }
                    }
                }
            }
            obj2 = p005kotlin.Unit.INSTANCE;
            if (obj2 instanceof i01) {
                xs3.a((i01) obj2, false);
            }
            CloseableKt.closeFinally(rr3Var2, null);
        } else {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            rr3Var = this.b;
            rr3VarA = this.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
            } catch (Throwable th7) {
                th = th7;
                try {
                    Splitter splitter4 = f01.a;
                    f01.a("Early initialization failed", th);
                } catch (Throwable th8) {
                    try {
                        rr3VarA.b(th8);
                        if (th8 instanceof v24) {
                            throw th8;
                        }
                        if (!(th8 instanceof TimeoutCancellationException) && !(th8 instanceof CancellationException)) {
                            rr3VarA.a(th8);
                        }
                        if (th8 instanceof TimeoutCancellationException) {
                            throw new i21(th8);
                        }
                        if (th8 instanceof CancellationException) {
                            throw new wz0(th8);
                        }
                        if (th8 instanceof w01) {
                            throw th8;
                        }
                        throw new b01(th8);
                    } catch (Throwable th9) {
                        try {
                            throw th9;
                        } catch (Throwable th10) {
                            CloseableKt.closeFinally(rr3Var, th9);
                            throw th10;
                        }
                    }
                }
            }
            obj3 = p005kotlin.Unit.INSTANCE;
            if (obj3 instanceof i01) {
                xs3.a((i01) obj3, false);
            }
            CloseableKt.closeFinally(rr3Var, null);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
