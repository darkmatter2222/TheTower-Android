package kotlin;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public final class fr2 extends SuspendLambda implements Function2 {
    public Mutex a;
    public pt2 b;
    public j53 c;
    public int d;
    public final /* synthetic */ pt2 e;
    public final /* synthetic */ j53 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fr2(pt2 pt2Var, j53 j53Var, Continuation continuation) {
        super(2, continuation);
        this.e = pt2Var;
        this.f = j53Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new fr2(this.e, this.f, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new fr2(this.e, this.f, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        pt2 pt2Var;
        Mutex mutex;
        j53 j53Var;
        Map mapEmptyMap;
        Set<Map.Entry> setEntrySet;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.d;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            pt2Var = this.e;
            Mutex mutex2 = pt2Var.q;
            j53 j53Var2 = this.f;
            this.a = mutex2;
            this.b = pt2Var;
            this.c = j53Var2;
            this.d = 1;
            if (mutex2.lock(null, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            mutex = mutex2;
            j53Var = j53Var2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j53Var = this.c;
            pt2Var = this.b;
            mutex = this.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            LinkedHashMap linkedHashMapA = pt2Var.a(j53Var);
            if (linkedHashMapA == null || (setEntrySet = linkedHashMapA.entrySet()) == null) {
                mapEmptyMap = MapsKt.emptyMap();
            } else {
                mapEmptyMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(setEntrySet, 10)), 16));
                for (Map.Entry entry : setEntrySet) {
                    p005kotlin.Pair pair = p005kotlin.TuplesKt.to(entry.getKey(), ((h6) entry.getValue()).c);
                    mapEmptyMap.put(pair.getFirst(), pair.getSecond());
                }
            }
            return mapEmptyMap;
        } finally {
            mutex.unlock(null);
        }
    }
}
