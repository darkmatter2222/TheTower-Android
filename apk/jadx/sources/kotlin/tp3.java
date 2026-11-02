package kotlin;

import android.view.View;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class tp3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ vp3 a;
    public final /* synthetic */ Map b;
    public final /* synthetic */ View c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tp3(vp3 vp3Var, Map map, View view, Continuation continuation) {
        super(2, continuation);
        this.a = vp3Var;
        this.b = map;
        this.c = view;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new tp3(this.a, this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((tp3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0090 A[Catch: RuntimeException -> 0x0033, LOOP:1: B:27:0x008a->B:29:0x0090, LOOP_END, TryCatch #0 {RuntimeException -> 0x0033, blocks: (B:26:0x0079, B:27:0x008a, B:29:0x0090, B:30:0x009e, B:31:0x00af, B:33:0x00b5), top: B:54:0x0079 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x00b5 A[Catch: RuntimeException -> 0x0033, TRY_LEAVE, TryCatch #0 {RuntimeException -> 0x0033, blocks: (B:26:0x0079, B:27:0x008a, B:29:0x0090, B:30:0x009e, B:31:0x00af, B:33:0x00b5), top: B:54:0x0079 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00cd A[EDGE_INSN: B:37:0x00cd->B:38:0x00ce BREAK  A[LOOP:0: B:11:0x0033->B:65:0x0033]] */
    /* JADX WARN: Code duplicated, block: B:63:0x00ce A[EDGE_INSN: B:63:0x00ce->B:38:0x00ce BREAK  A[LOOP:0: B:11:0x0033->B:65:0x0033, LOOP_LABEL: LOOP:0: B:11:0x0033->B:65:0x0033], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:0x0033 A[EDGE_INSN: B:67:0x0033->B:65:0x0033 BREAK  A[LOOP:2: B:31:0x00af->B:70:0x00af], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x00af A[SYNTHETIC] */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        View view;
        Class<?> classOfView;
        k32 k32Var;
        ArrayList allowedClasses;
        Iterator<JsonElement> it;
        Iterator it2;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        vp3 vp3Var = this.a;
        Map map = this.b;
        if (vp3Var.k.m0.isEmpty()) {
            z = true;
            break;
        }
        Set<String> setKeySet = vp3Var.k.m0.keySet();
        Intrinsics.checkNotNullExpressionValue(setKeySet, "keySet(...)");
        if ((setKeySet instanceof Collection) && setKeySet.isEmpty()) {
            z = true;
            break;
        }
        Iterator<T> it3 = setKeySet.iterator();
        loop0: while (true) {
            if (!it3.hasNext()) {
                z = true;
                break;
            }
            String str = (String) it3.next();
            ds1 ds1Var = ds1.a;
            JsonObject jsonObject = vp3Var.k.m0;
            Intrinsics.checkNotNull(str);
            JsonArray jsonArrayE = ds1.e(jsonObject, str);
            if (jsonArrayE != null) {
                z = false;
                if (!str.equals("3010")) {
                    WeakReference weakReference = (WeakReference) map.get(str);
                    if (weakReference != null && (view = (View) weakReference.get()) != null) {
                        classOfView = view.getClass();
                        k32Var = vp3Var.l;
                        allowedClasses = new ArrayList(CollectionsKt.collectionSizeOrDefault(jsonArrayE, 10));
                        it = jsonArrayE.iterator();
                        while (it.hasNext()) {
                            allowedClasses.add(it.next().getAsString());
                        }
                        k32Var.getClass();
                        Intrinsics.checkNotNullParameter(classOfView, "classOfView");
                        Intrinsics.checkNotNullParameter(allowedClasses, "allowedClasses");
                        it2 = allowedClasses.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                break loop0;
                                break loop0;
                            }
                            if (Class.forName((String) it2.next(), false, k32Var.a.getClassLoader()).isAssignableFrom(classOfView)) {
                                break;
                                break;
                            }
                        }
                    } else {
                        break;
                    }
                } else {
                    View viewA = vp3Var.i.a();
                    if (viewA == null) {
                        break;
                    }
                    classOfView = viewA.getClass();
                    try {
                        k32Var = vp3Var.l;
                        allowedClasses = new ArrayList(CollectionsKt.collectionSizeOrDefault(jsonArrayE, 10));
                        it = jsonArrayE.iterator();
                        while (it.hasNext()) {
                            allowedClasses.add(it.next().getAsString());
                        }
                        k32Var.getClass();
                        Intrinsics.checkNotNullParameter(classOfView, "classOfView");
                        Intrinsics.checkNotNullParameter(allowedClasses, "allowedClasses");
                        it2 = allowedClasses.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                break loop0;
                            }
                            try {
                                if (Class.forName((String) it2.next(), false, k32Var.a.getClassLoader()).isAssignableFrom(classOfView)) {
                                    break;
                                }
                            } catch (Throwable unused) {
                            }
                        }
                    } catch (RuntimeException unused2) {
                        continue;
                    }
                }
            }
        }
        vp3Var.m = z;
        View view2 = this.c;
        if (view2 != null) {
            vp3 vp3Var2 = this.a;
            Map map2 = this.b;
            p12 p12Var = vp3Var2.i;
            ArrayList arrayList = new ArrayList();
            for (Map.Entry entry : map2.entrySet()) {
                String str2 = (String) entry.getKey();
                View view3 = (View) ((WeakReference) entry.getValue()).get();
                p005kotlin.Pair pair = view3 != null ? p005kotlin.TuplesKt.to(str2, view3) : null;
                if (pair != null) {
                    arrayList.add(pair);
                }
            }
            p12Var.a(view2, MapsKt.toMap(arrayList), MapsKt.emptyMap());
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
