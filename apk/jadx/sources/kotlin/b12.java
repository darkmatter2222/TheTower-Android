package kotlin;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import java.util.ArrayList;
import java.util.Iterator;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class b12 extends SuspendLambda implements Function2 {
    public final /* synthetic */ g12 a;
    public final /* synthetic */ JsonObject b;
    public final /* synthetic */ s02 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b12(s02 s02Var, g12 g12Var, JsonObject jsonObject, Continuation continuation) {
        super(2, continuation);
        this.a = g12Var;
        this.b = jsonObject;
        this.c = s02Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new b12(this.c, this.a, this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((b12) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r6v8, types: [java.util.ArrayList] */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ?? EmptyList;
        JsonObject jsonObjectA;
        JsonArray jsonArrayE;
        hm1 hm1Var;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        g52 g52Var = this.a.d;
        JsonObject adJson = this.b;
        g52Var.getClass();
        Intrinsics.checkNotNullParameter(adJson, "adJson");
        ds1 ds1Var = ds1.a;
        hm1 hm1Var2 = null;
        JsonObject jsonObjectA2 = ds1.a(adJson, "mute", (JsonObject) null);
        if (jsonObjectA2 == null || (jsonArrayE = ds1.e(jsonObjectA2, "reasons")) == null) {
            EmptyList = CollectionsKt.emptyList();
        } else {
            EmptyList = new ArrayList();
            Iterator<JsonElement> it = jsonArrayE.iterator();
            while (it.hasNext()) {
                try {
                    JsonObject asJsonObject = it.next().getAsJsonObject();
                    Intrinsics.checkNotNullExpressionValue(asJsonObject, "getAsJsonObject(...)");
                    String strA = ds1.a(asJsonObject, "reason", "");
                    String strA2 = ds1.a(asJsonObject, "ping_url", "");
                    hm1Var = (StringsKt.isBlank(strA) || StringsKt.isBlank(strA2)) ? null : new hm1(strA, strA2);
                } catch (Exception unused) {
                }
                if (hm1Var != null) {
                    EmptyList.add(hm1Var);
                }
            }
        }
        Iterator it2 = EmptyList.iterator();
        while (it2.hasNext()) {
            this.c.p.add((hm1) it2.next());
        }
        s02 s02Var = this.c;
        g52 g52Var2 = this.a.d;
        JsonObject adJson2 = this.b;
        g52Var2.getClass();
        Intrinsics.checkNotNullParameter(adJson2, "adJson");
        ds1 ds1Var2 = ds1.a;
        JsonObject jsonObjectA3 = ds1.a(adJson2, "mute", (JsonObject) null);
        if (jsonObjectA3 != null && (jsonObjectA = ds1.a(jsonObjectA3, "default_reason", (JsonObject) null)) != null) {
            String strA3 = ds1.a(jsonObjectA, "reason", "");
            String strA4 = ds1.a(jsonObjectA, "ping_url", "");
            if (!StringsKt.isBlank(strA3) && !StringsKt.isBlank(strA4)) {
                hm1Var2 = new hm1(strA3, strA4);
            }
        }
        s02Var.q = hm1Var2;
        return p005kotlin.Unit.INSTANCE;
    }
}
