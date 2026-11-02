package kotlinx.coroutines.channels;

import kotlinx.coroutines.selects.SelectInstance;
import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.jvm.functions.Function3;
import p005kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: compiled from: Actor.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
/* synthetic */ class LazyActorCoroutine$onSend$1 extends FunctionReferenceImpl implements Function3<LazyActorCoroutine<?>, SelectInstance<?>, Object, Unit> {
    public static final LazyActorCoroutine$onSend$1 INSTANCE = new LazyActorCoroutine$onSend$1();

    LazyActorCoroutine$onSend$1() {
        super(3, LazyActorCoroutine.class, "onSendRegFunction", "onSendRegFunction(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
    }

    @Override // p005kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Unit invoke(LazyActorCoroutine<?> lazyActorCoroutine, SelectInstance<?> selectInstance, Object obj) throws Throwable {
        invoke2(lazyActorCoroutine, selectInstance, obj);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(LazyActorCoroutine<?> lazyActorCoroutine, SelectInstance<?> selectInstance, Object obj) throws Throwable {
        lazyActorCoroutine.onSendRegFunction(selectInstance, obj);
    }
}
