package kotlin;

import com.google.android.libraries.ads.mobile.sdk.initialization.AdapterStatus;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.AdapterVersionData;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class pf implements rh3 {
    public final hf a;
    public final List b;

    public pf(ex0 flags, hf adapterInitializer) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(adapterInitializer, "adapterInitializer");
        this.a = adapterInitializer;
        this.b = flags.d0();
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.ADAPTER_VERSIONS;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.rh3
    public final Object s(Continuation continuation) {
        of ofVar;
        LinkedHashMap linkedHashMap;
        pf pfVar;
        AdapterStatus.InitializationState initializationState;
        AdapterStatus adapterStatus;
        if (continuation instanceof of) {
            ofVar = (of) continuation;
            int i = ofVar.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                ofVar.e = i - Integer.MIN_VALUE;
            } else {
                ofVar = new of(this, continuation);
            }
        } else {
            ofVar = new of(this, continuation);
        }
        Object obj = ofVar.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ofVar.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            if (this.b.isEmpty()) {
                return new q01(new nf(MapsKt.emptyMap()));
            }
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            hf hfVar = this.a;
            ofVar.a = this;
            ofVar.b = linkedHashMap2;
            ofVar.e = 1;
            hfVar.getClass();
            Object objA = hf.a(hfVar, ofVar);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            linkedHashMap = linkedHashMap2;
            obj = objA;
            pfVar = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            linkedHashMap = ofVar.b;
            pfVar = ofVar.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        Map map = (Map) obj;
        for (String str : pfVar.b) {
            yd ydVar = (yd) map.get(str);
            if (ydVar == null || (adapterStatus = ydVar.a) == null || (initializationState = adapterStatus.getInitializationState()) == null) {
                initializationState = AdapterStatus.InitializationState.NOT_STARTED;
            }
            yd ydVar2 = (yd) map.get(str);
            AdapterVersionData adapterVersionData = ydVar2 != null ? ydVar2.b : null;
            if (initializationState == AdapterStatus.InitializationState.COMPLETE && adapterVersionData != null) {
                linkedHashMap.put(str, adapterVersionData);
            }
        }
        return new q01(new nf(linkedHashMap));
    }
}
