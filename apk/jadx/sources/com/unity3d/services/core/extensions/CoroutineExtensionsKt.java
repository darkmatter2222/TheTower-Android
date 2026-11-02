package com.unity3d.services.core.extensions;

import com.google.android.gms.ads.RequestConfiguration;
import com.ironsource.C3510b4;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.Metadata;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CoroutineExtensions.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u001a:\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u001e\b\u0004\u0010\u0003\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004H\u0086H¢\u0006\u0002\u0010\u0007\u001a:\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u001e\b\u0004\u0010\u0003\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004H\u0086H¢\u0006\u0002\u0010\u0007\u001a<\u0010\u0013\u001a\u0002H\u0014\"\u0004\b\u0000\u0010\u00142\u0006\u0010\u0015\u001a\u00020\u00062\u001e\b\u0004\u0010\u0016\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00140\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004H\u0086H¢\u0006\u0002\u0010\u0017\"5\u0010\t\u001a&\u0012\u0004\u0012\u00020\u0006\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b0\nj\u0012\u0012\u0004\u0012\u00020\u0006\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b`\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0018"}, d2 = {"runSuspendCatching", "Lkotlin/Result;", "R", "block", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "runReturnSuspendCatching", "deferreds", "Ljava/util/LinkedHashMap;", "Lkotlinx/coroutines/Deferred;", "Lkotlin/collections/LinkedHashMap;", "getDeferreds", "()Ljava/util/LinkedHashMap;", "mutex", "Lkotlinx/coroutines/sync/Mutex;", "getMutex", "()Lkotlinx/coroutines/sync/Mutex;", "memoize", RequestConfiguration.MAX_AD_CONTENT_RATING_T, C3510b4.i.W, "action", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_defaultRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class CoroutineExtensionsKt {
    private static final LinkedHashMap<Object, Deferred<?>> deferreds = new LinkedHashMap<Object, Deferred<?>>() { // from class: com.unity3d.services.core.extensions.CoroutineExtensionsKt$deferreds$1
        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ boolean containsValue(Object obj) {
            if (obj instanceof Deferred) {
                return containsValue((Deferred<?>) obj);
            }
            return false;
        }

        public /* bridge */ boolean containsValue(Deferred<?> deferred) {
            return super.containsValue((Object) deferred);
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Set<Map.Entry<Object, Deferred<?>>> entrySet() {
            return getEntries();
        }

        public /* bridge */ Set<Map.Entry<Object, Deferred<?>>> getEntries() {
            return super.entrySet();
        }

        public /* bridge */ Set<Object> getKeys() {
            return super.keySet();
        }

        public /* bridge */ int getSize() {
            return super.size();
        }

        public /* bridge */ Collection<Deferred<?>> getValues() {
            return super.values();
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Set<Object> keySet() {
            return getKeys();
        }

        @Override // java.util.HashMap, java.util.Map
        public final /* bridge */ boolean remove(Object obj, Object obj2) {
            if (obj != null && (obj2 instanceof Deferred)) {
                return remove(obj, (Deferred<?>) obj2);
            }
            return false;
        }

        public /* bridge */ boolean remove(Object obj, Deferred<?> deferred) {
            return super.remove(obj, (Object) deferred);
        }

        @Override // java.util.LinkedHashMap
        protected boolean removeEldestEntry(Map.Entry<Object, Deferred<?>> eldest) {
            Intrinsics.checkNotNullParameter(eldest, "eldest");
            return size() > 100;
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ int size() {
            return getSize();
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Collection<Deferred<?>> values() {
            return getValues();
        }
    };
    private static final Mutex mutex = MutexKt.Mutex$default(false, 1, null);

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.unity3d.services.core.extensions.CoroutineExtensionsKt$memoize$2, reason: invalid class name */
    /* JADX INFO: compiled from: CoroutineExtensions.kt */
    @Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 176)
    @DebugMetadata(c = "com.unity3d.services.core.extensions.CoroutineExtensionsKt$memoize$2", f = "CoroutineExtensions.kt", i = {0, 0}, l = {53, 45}, m = "invokeSuspend", n = {"$this$coroutineScope", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1"})
    public static final class AnonymousClass2<T> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super T>, Object> {
        final /* synthetic */ Function1<Continuation<? super T>, Object> $action;
        final /* synthetic */ Object $key;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(Object obj, Function1<? super Continuation<? super T>, ? extends Object> function1, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$key = obj;
            this.$action = function1;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$key, this.$action, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super T> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineScope coroutineScope;
            Mutex mutex;
            Function1<Continuation<? super T>, Object> function1;
            Object obj2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    coroutineScope = (CoroutineScope) this.L$0;
                    mutex = CoroutineExtensionsKt.getMutex();
                    Object obj3 = this.$key;
                    function1 = this.$action;
                    this.L$0 = coroutineScope;
                    this.L$1 = mutex;
                    this.L$2 = obj3;
                    this.L$3 = function1;
                    this.label = 1;
                    if (mutex.lock(null, this) != coroutine_suspended) {
                        obj2 = obj3;
                    }
                }
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                function1 = (Function1) this.L$3;
                obj2 = this.L$2;
                mutex = (Mutex) this.L$1;
                coroutineScope = (CoroutineScope) this.L$0;
                ResultKt.throwOnFailure(obj);
                LinkedHashMap<Object, Deferred<?>> deferreds = CoroutineExtensionsKt.getDeferreds();
                Deferred<?> deferredAsync$default = deferreds.get(obj2);
                if (deferredAsync$default == null) {
                    deferredAsync$default = BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new CoroutineExtensionsKt$memoize$2$deferred$1$1$1(function1, null), 3, null);
                    deferreds.put(obj2, deferredAsync$default);
                }
                Deferred<?> deferred = deferredAsync$default;
                mutex.unlock(null);
                this.L$0 = null;
                this.L$1 = null;
                this.L$2 = null;
                this.L$3 = null;
                this.label = 2;
                Object objAwait = deferred.await(this);
                return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
            } catch (Throwable th) {
                mutex.unlock(null);
                throw th;
            }
        }

        public final Object invokeSuspend$$forInline(Object obj) {
            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            Mutex mutex = CoroutineExtensionsKt.getMutex();
            Object obj2 = this.$key;
            Function1<Continuation<? super T>, Object> function1 = this.$action;
            AnonymousClass2<T> anonymousClass2 = this;
            mutex.lock(null, anonymousClass2);
            try {
                LinkedHashMap<Object, Deferred<?>> deferreds = CoroutineExtensionsKt.getDeferreds();
                Deferred<?> deferredAsync$default = deferreds.get(obj2);
                if (deferredAsync$default == null) {
                    deferredAsync$default = BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new CoroutineExtensionsKt$memoize$2$deferred$1$1$1(function1, null), 3, null);
                    deferreds.put(obj2, deferredAsync$default);
                }
                Deferred<?> deferred = deferredAsync$default;
                mutex.unlock(null);
                return deferred.await(anonymousClass2);
            } catch (Throwable th) {
                mutex.unlock(null);
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: com.unity3d.services.core.extensions.CoroutineExtensionsKt$runReturnSuspendCatching$1, reason: invalid class name */
    /* JADX INFO: compiled from: CoroutineExtensions.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
    @DebugMetadata(c = "com.unity3d.services.core.extensions.CoroutineExtensionsKt", f = "CoroutineExtensions.kt", i = {}, l = {49}, m = "runReturnSuspendCatching", n = {}, s = {})
    static final class AnonymousClass1<R> extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            Object objRunReturnSuspendCatching = CoroutineExtensionsKt.runReturnSuspendCatching(null, this);
            return objRunReturnSuspendCatching == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objRunReturnSuspendCatching : Result.m3021boximpl(objRunReturnSuspendCatching);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.services.core.extensions.CoroutineExtensionsKt$runSuspendCatching$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CoroutineExtensions.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
    @DebugMetadata(c = "com.unity3d.services.core.extensions.CoroutineExtensionsKt", f = "CoroutineExtensions.kt", i = {}, l = {15}, m = "runSuspendCatching", n = {}, s = {})
    static final class C41571<R> extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C41571(Continuation<? super C41571> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            Object objRunSuspendCatching = CoroutineExtensionsKt.runSuspendCatching(null, this);
            return objRunSuspendCatching == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objRunSuspendCatching : Result.m3021boximpl(objRunSuspendCatching);
        }
    }

    public static final LinkedHashMap<Object, Deferred<?>> getDeferreds() {
        return deferreds;
    }

    public static final Mutex getMutex() {
        return mutex;
    }

    public static final <T> Object memoize(Object obj, Function1<? super Continuation<? super T>, ? extends Object> function1, Continuation<? super T> continuation) {
        return CoroutineScopeKt.coroutineScope(new AnonymousClass2(obj, function1, null), continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final <R> Object runReturnSuspendCatching(Function1<? super Continuation<? super R>, ? extends Object> function1, Continuation<? super Result<? extends R>> continuation) {
        AnonymousClass1 anonymousClass1;
        Object objM3022constructorimpl;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object objInvoke = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(objInvoke);
                Result.Companion companion = Result.INSTANCE;
                anonymousClass1.label = 1;
                objInvoke = function1.invoke(anonymousClass1);
                if (objInvoke == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objInvoke);
            }
            objM3022constructorimpl = Result.m3022constructorimpl(objInvoke);
        } catch (CancellationException e) {
            throw e;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m3029isSuccessimpl(objM3022constructorimpl)) {
            Result.Companion companion3 = Result.INSTANCE;
            return Result.m3022constructorimpl(objM3022constructorimpl);
        }
        Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(objM3022constructorimpl);
        if (thM3025exceptionOrNullimpl == null) {
            return objM3022constructorimpl;
        }
        Result.Companion companion4 = Result.INSTANCE;
        return Result.m3022constructorimpl(ResultKt.createFailure(thM3025exceptionOrNullimpl));
    }

    private static final <R> Object runReturnSuspendCatching$$forInline(Function1<? super Continuation<? super R>, ? extends Object> function1, Continuation<? super Result<? extends R>> continuation) {
        Object objM3022constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(function1.invoke(continuation));
        } catch (CancellationException e) {
            throw e;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m3029isSuccessimpl(objM3022constructorimpl)) {
            Result.Companion companion3 = Result.INSTANCE;
            return Result.m3022constructorimpl(objM3022constructorimpl);
        }
        Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(objM3022constructorimpl);
        if (thM3025exceptionOrNullimpl == null) {
            return objM3022constructorimpl;
        }
        Result.Companion companion4 = Result.INSTANCE;
        return Result.m3022constructorimpl(ResultKt.createFailure(thM3025exceptionOrNullimpl));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final <R> Object runSuspendCatching(Function1<? super Continuation<? super R>, ? extends Object> function1, Continuation<? super Result<? extends R>> continuation) {
        C41571 c41571;
        if (continuation instanceof C41571) {
            c41571 = (C41571) continuation;
            if ((c41571.label & Integer.MIN_VALUE) != 0) {
                c41571.label -= Integer.MIN_VALUE;
            } else {
                c41571 = new C41571(continuation);
            }
        } else {
            c41571 = new C41571(continuation);
        }
        Object objInvoke = c41571.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c41571.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(objInvoke);
                Result.Companion companion = Result.INSTANCE;
                c41571.label = 1;
                objInvoke = function1.invoke(c41571);
                if (objInvoke == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objInvoke);
            }
            return Result.m3022constructorimpl(objInvoke);
        } catch (CancellationException e) {
            throw e;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
    }

    private static final <R> Object runSuspendCatching$$forInline(Function1<? super Continuation<? super R>, ? extends Object> function1, Continuation<? super Result<? extends R>> continuation) {
        try {
            Result.Companion companion = Result.INSTANCE;
            return Result.m3022constructorimpl(function1.invoke(continuation));
        } catch (CancellationException e) {
            throw e;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
    }
}
