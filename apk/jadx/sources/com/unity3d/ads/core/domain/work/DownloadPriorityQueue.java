package com.unity3d.ads.core.domain.work;

import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.util.Comparator;
import java.util.PriorityQueue;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.Metadata;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.comparisons.ComparisonsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DownloadPriorityQueue.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0015B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J4\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u001c\u0010\u0011\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0012H\u0086B¢\u0006\u0002\u0010\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue;", "", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "<init>", "(Lcom/unity3d/ads/core/data/repository/SessionRepository;)V", "mutex", "Lkotlinx/coroutines/sync/Mutex;", "nextTurn", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$PriorityItem;", "queue", "Ljava/util/PriorityQueue;", "invoke", "", HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, "", "downloadAction", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "(ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "PriorityItem", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DownloadPriorityQueue {
    private final Mutex mutex;
    private final MutableStateFlow<PriorityItem> nextTurn;
    private final PriorityQueue<PriorityItem> queue;
    private final SessionRepository sessionRepository;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: DownloadPriorityQueue.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$PriorityItem;", "", HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, "", "<init>", "(I)V", "getPriority", "()I", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    static final class PriorityItem {
        private final int priority;

        public PriorityItem(int i) {
            this.priority = i;
        }

        public final int getPriority() {
            return this.priority;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.work.DownloadPriorityQueue$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: DownloadPriorityQueue.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.work.DownloadPriorityQueue", f = "DownloadPriorityQueue.kt", i = {0, 0, 0, 1, 1, 2, 3, 3}, l = {55, 32, 35, 72}, m = "invoke", n = {"downloadAction", "priorityItem", "$this$withLock_u24default$iv", "downloadAction", "priorityItem", "priorityItem", "priorityItem", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$0", "L$0", "L$1"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DownloadPriorityQueue.this.invoke(0, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.work.DownloadPriorityQueue$invoke$3, reason: invalid class name */
    /* JADX INFO: compiled from: DownloadPriorityQueue.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$PriorityItem;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.work.DownloadPriorityQueue$invoke$3", f = "DownloadPriorityQueue.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3 extends SuspendLambda implements Function2<PriorityItem, Continuation<? super Boolean>, Object> {
        final /* synthetic */ PriorityItem $priorityItem;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(PriorityItem priorityItem, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.$priorityItem = priorityItem;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$priorityItem, continuation);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(PriorityItem priorityItem, Continuation<? super Boolean> continuation) {
            return ((AnonymousClass3) create(priorityItem, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Boxing.boxBoolean(((PriorityItem) this.L$0) == this.$priorityItem);
        }
    }

    public DownloadPriorityQueue(SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        this.sessionRepository = sessionRepository;
        this.mutex = MutexKt.Mutex(false);
        this.nextTurn = StateFlowKt.MutableStateFlow(null);
        this.queue = new PriorityQueue<>(50, new Comparator() { // from class: com.unity3d.ads.core.domain.work.DownloadPriorityQueue$special$$inlined$compareBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(Integer.valueOf(((DownloadPriorityQueue.PriorityItem) t).getPriority()), Integer.valueOf(((DownloadPriorityQueue.PriorityItem) t2).getPriority()));
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:38:0x00cf A[Catch: all -> 0x004e, CancellationException -> 0x0051, PHI: r10
  0x00cf: PHI (r10v14 ??) = (r10v24 ??), (r10v25 ??) binds: [B:36:0x00cc, B:18:0x0049] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #4 {CancellationException -> 0x0051, all -> 0x004e, blocks: (B:18:0x0049, B:38:0x00cf, B:35:0x00bd), top: B:62:0x0026 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:47:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [int] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v24 */
    /* JADX WARN: Type inference failed for: r10v25 */
    /* JADX WARN: Type inference failed for: r10v26 */
    /* JADX WARN: Type inference failed for: r10v27 */
    /* JADX WARN: Type inference failed for: r10v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v26 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7, types: [java.lang.Object] */
    public final Object invoke(int i, Function1<? super Continuation<? super Unit>, ? extends Object> function1, Continuation<? super Unit> continuation) {
        AnonymousClass1 anonymousClass1;
        Object objM3022constructorimpl;
        ?? r10;
        Mutex mutex;
        ?? r11;
        Mutex mutex2;
        Mutex mutex3;
        Function1<? super Continuation<? super Unit>, ? extends Object> function2;
        PriorityItem priorityItem;
        PriorityItem priorityItem2;
        Function1<? super Continuation<? super Unit>, ? extends Object> function3;
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
        Object obj = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = anonymousClass1.label;
        try {
            try {
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    PriorityItem priorityItem3 = new PriorityItem(i);
                    mutex3 = this.mutex;
                    anonymousClass1.L$0 = function1;
                    anonymousClass1.L$1 = priorityItem3;
                    anonymousClass1.L$2 = mutex3;
                    anonymousClass1.label = 1;
                    if (mutex3.lock(null, anonymousClass1) != coroutine_suspended) {
                        function2 = function1;
                        priorityItem = priorityItem3;
                    }
                    return coroutine_suspended;
                }
                if (i2 == 1) {
                    mutex3 = (Mutex) anonymousClass1.L$2;
                    priorityItem = (PriorityItem) anonymousClass1.L$1;
                    function2 = (Function1) anonymousClass1.L$0;
                    ResultKt.throwOnFailure(obj);
                } else {
                    if (i2 == 2) {
                        PriorityItem priorityItem4 = (PriorityItem) anonymousClass1.L$1;
                        function3 = (Function1) anonymousClass1.L$0;
                        ResultKt.throwOnFailure(obj);
                        priorityItem2 = priorityItem4;
                        Result.Companion companion = Result.INSTANCE;
                        anonymousClass1.L$0 = priorityItem2;
                        anonymousClass1.L$1 = null;
                        anonymousClass1.label = 3;
                        i = priorityItem2;
                        if (function3.invoke(anonymousClass1) == coroutine_suspended) {
                            objM3022constructorimpl = Result.m3022constructorimpl(Unit.INSTANCE);
                            r10 = i;
                            if (!this.sessionRepository.getFeatureFlags().getUseTryCatchInDownloadQueue()) {
                                ResultKt.throwOnFailure(objM3022constructorimpl);
                            }
                            mutex = this.mutex;
                            anonymousClass1.L$0 = r10;
                            anonymousClass1.L$1 = mutex;
                            anonymousClass1.label = 4;
                            if (mutex.lock(null, anonymousClass1) != coroutine_suspended) {
                                r11 = r10;
                                mutex2 = mutex;
                            }
                        }
                        return coroutine_suspended;
                    }
                    if (i2 == 3) {
                        PriorityItem priorityItem5 = (PriorityItem) anonymousClass1.L$0;
                        ResultKt.throwOnFailure(obj);
                        i = priorityItem5;
                        objM3022constructorimpl = Result.m3022constructorimpl(Unit.INSTANCE);
                        r10 = i;
                        if (!this.sessionRepository.getFeatureFlags().getUseTryCatchInDownloadQueue()) {
                            ResultKt.throwOnFailure(objM3022constructorimpl);
                        }
                        mutex = this.mutex;
                        anonymousClass1.L$0 = r10;
                        anonymousClass1.L$1 = mutex;
                        anonymousClass1.label = 4;
                        if (mutex.lock(null, anonymousClass1) != coroutine_suspended) {
                            r11 = r10;
                            mutex2 = mutex;
                        }
                        return coroutine_suspended;
                    }
                    if (i2 != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    mutex2 = (Mutex) anonymousClass1.L$1;
                    PriorityItem priorityItem6 = (PriorityItem) anonymousClass1.L$0;
                    ResultKt.throwOnFailure(obj);
                    r11 = priorityItem6;
                }
                try {
                    this.queue.remove(r11);
                    this.nextTurn.setValue(this.queue.peek());
                    Unit unit = Unit.INSTANCE;
                    return Unit.INSTANCE;
                } finally {
                    mutex2.unlock(null);
                }
                this.queue.offer(priorityItem);
                this.nextTurn.setValue(this.queue.peek());
                Unit unit2 = Unit.INSTANCE;
                mutex3.unlock(null);
                MutableStateFlow<PriorityItem> mutableStateFlow = this.nextTurn;
                AnonymousClass3 anonymousClass3 = new AnonymousClass3(priorityItem, null);
                anonymousClass1.L$0 = function2;
                anonymousClass1.L$1 = priorityItem;
                anonymousClass1.L$2 = null;
                anonymousClass1.label = 2;
                if (FlowKt.first(mutableStateFlow, anonymousClass3, anonymousClass1) != coroutine_suspended) {
                    priorityItem2 = priorityItem;
                    function3 = function2;
                    Result.Companion companion2 = Result.INSTANCE;
                    anonymousClass1.L$0 = priorityItem2;
                    anonymousClass1.L$1 = null;
                    anonymousClass1.label = 3;
                    i = priorityItem2;
                    if (function3.invoke(anonymousClass1) == coroutine_suspended) {
                        objM3022constructorimpl = Result.m3022constructorimpl(Unit.INSTANCE);
                        r10 = i;
                        if (!this.sessionRepository.getFeatureFlags().getUseTryCatchInDownloadQueue()) {
                            ResultKt.throwOnFailure(objM3022constructorimpl);
                        }
                        mutex = this.mutex;
                        anonymousClass1.L$0 = r10;
                        anonymousClass1.L$1 = mutex;
                        anonymousClass1.label = 4;
                        if (mutex.lock(null, anonymousClass1) != coroutine_suspended) {
                            r11 = r10;
                            mutex2 = mutex;
                            this.queue.remove(r11);
                            this.nextTurn.setValue(this.queue.peek());
                            Unit unit3 = Unit.INSTANCE;
                            return Unit.INSTANCE;
                        }
                    }
                }
            } catch (Throwable th) {
                mutex3.unlock(null);
                throw th;
            }
        } catch (CancellationException e) {
            throw e;
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th2));
            r10 = i;
        }
        return coroutine_suspended;
    }
}
