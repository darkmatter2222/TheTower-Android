package kotlin;

import com.ironsource.C3510b4;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import kotlinx.coroutines.CoroutineScope;
import org.chromium.net.CronetEngine;
import org.chromium.net.CronetProvider;
import org.chromium.net.impl.HttpEngineNativeProvider;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class w60 extends SuspendLambda implements Function2 {
    public CronetProvider a;
    public AtomicReference b;
    public int c;
    public final /* synthetic */ k70 d;
    public final /* synthetic */ AtomicReference e;
    public final /* synthetic */ Long f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w60(k70 k70Var, AtomicReference atomicReference, Long l, Continuation continuation) {
        super(2, continuation);
        this.d = k70Var;
        this.e = atomicReference;
        this.f = l;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new w60(this.d, this.e, this.f, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((w60) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0090 A[Catch: all -> 0x0093, TRY_LEAVE, TryCatch #0 {all -> 0x0093, blocks: (B:27:0x0083, B:29:0x0090), top: B:85:0x0083 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x013a  */
    /* JADX WARN: Code duplicated, block: B:72:0x0153 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:73:0x0154  */
    /* JADX WARN: Code duplicated, block: B:82:0x0176  */
    /* JADX WARN: Code duplicated, block: B:85:0x0083 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str;
        Object next;
        CronetProvider cronetProvider;
        Object next2;
        CronetProvider cronetProvider2;
        AtomicReference atomicReference;
        AtomicReference atomicReference2;
        Object next3;
        HttpEngineNativeProvider httpEngineNativeProvider;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.c;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            k70 k70Var = this.d;
            List<CronetProvider> allProviders = CronetProvider.getAllProviders(k70Var.d);
            Intrinsics.checkNotNull(allProviders);
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : allProviders) {
                CronetProvider cronetProvider3 = (CronetProvider) obj2;
                if (cronetProvider3.isEnabled() && !Intrinsics.areEqual(cronetProvider3.getName(), CronetProvider.PROVIDER_NAME_FALLBACK)) {
                    arrayList.add(obj2);
                }
            }
            List mutableList = CollectionsKt.toMutableList((Collection) arrayList);
            if ((mutableList instanceof Collection) && mutableList.isEmpty()) {
                httpEngineNativeProvider = new HttpEngineNativeProvider(k70Var.d);
                if (httpEngineNativeProvider.isEnabled()) {
                    mutableList.add(httpEngineNativeProvider);
                }
            } else {
                Iterator it = mutableList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        try {
                            httpEngineNativeProvider = new HttpEngineNativeProvider(k70Var.d);
                            if (httpEngineNativeProvider.isEnabled()) {
                                mutableList.add(httpEngineNativeProvider);
                            }
                        } catch (Throwable unused) {
                        }
                    } else if (Intrinsics.areEqual(((CronetProvider) it.next()).getName(), HttpEngineNativeProvider.PROVIDER_NAME_HTTPENGINE_NATIVE)) {
                    }
                }
            }
            if (((Boolean) k70Var.r.getValue()).booleanValue()) {
                CollectionsKt.removeAll(mutableList, (Function1) s60.a);
            }
            ex0 ex0Var = k70Var.b;
            if (ex0Var != null) {
                Intrinsics.checkNotNullParameter("gads:cronet_provider", C3510b4.i.W);
                Intrinsics.checkNotNullParameter("", "defaultValue");
                str = (String) ex0Var.a("gads:cronet_provider", "", yr.o);
            } else {
                str = null;
            }
            if (str == null || StringsKt.isBlank(str)) {
                Iterator it2 = mutableList.iterator();
                do {
                    if (!it2.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it2.next();
                } while (!Intrinsics.areEqual(((CronetProvider) next).getName(), HttpEngineNativeProvider.PROVIDER_NAME_HTTPENGINE_NATIVE));
                cronetProvider = (CronetProvider) next;
                if (cronetProvider == null) {
                    Iterator it3 = mutableList.iterator();
                    do {
                        if (!it3.hasNext()) {
                            next2 = null;
                            break;
                        }
                        next2 = it3.next();
                    } while (!Intrinsics.areEqual(((CronetProvider) next2).getName(), "Google-Play-Services-Cronet-Provider"));
                    cronetProvider = (CronetProvider) next2;
                    if (cronetProvider == null) {
                        cronetProvider2 = (CronetProvider) CollectionsKt.firstOrNull(mutableList);
                    }
                }
                if (cronetProvider2 != null) {
                    throw new IllegalStateException("No native Cronet provider found.");
                }
                CronetEngine.Builder builderCreateBuilder = cronetProvider2.createBuilder();
                atomicReference = this.e;
                k70 k70Var2 = this.d;
                Intrinsics.checkNotNull(builderCreateBuilder);
                Long l = this.f;
                this.a = cronetProvider2;
                this.b = atomicReference;
                this.c = 1;
                obj = k70.a(k70Var2, builderCreateBuilder, l, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
                atomicReference2 = atomicReference;
            } else {
                Iterator it4 = mutableList.iterator();
                do {
                    if (!it4.hasNext()) {
                        next3 = null;
                        break;
                    }
                    next3 = it4.next();
                } while (!Intrinsics.areEqual(((CronetProvider) next3).getName(), str));
                cronetProvider = (CronetProvider) next3;
            }
            cronetProvider2 = cronetProvider;
            if (cronetProvider2 != null) {
                throw new IllegalStateException("No native Cronet provider found.");
            }
            CronetEngine.Builder builderCreateBuilder2 = cronetProvider2.createBuilder();
            atomicReference = this.e;
            k70 k70Var3 = this.d;
            Intrinsics.checkNotNull(builderCreateBuilder2);
            Long l2 = this.f;
            this.a = cronetProvider2;
            this.b = atomicReference;
            this.c = 1;
            obj = k70.a(k70Var3, builderCreateBuilder2, l2, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
            atomicReference2 = atomicReference;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            atomicReference2 = this.b;
            cronetProvider2 = this.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        atomicReference2.set(((CronetEngine.Builder) obj).build());
        rr3 rr3Var = hs3.b().a;
        uj2 uj2VarE = rr3Var != null ? rr3Var.e() : null;
        if (uj2VarE != null) {
            uj2VarE.z = cronetProvider2.getName();
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
