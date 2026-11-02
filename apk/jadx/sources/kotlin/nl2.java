package kotlin;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;
import p005kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public final class nl2 extends Lambda implements Function1 {
    public final /* synthetic */ List a;
    public final /* synthetic */ Ref.ObjectRef b;
    public final /* synthetic */ Ref.ObjectRef c;
    public final /* synthetic */ j53 d;
    public final /* synthetic */ String e;
    public final /* synthetic */ im2 f;
    public final /* synthetic */ long g;
    public final /* synthetic */ boolean h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nl2(ArrayList arrayList, Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2, j53 j53Var, String str, im2 im2Var, long j, boolean z) {
        super(1);
        this.a = arrayList;
        this.b = objectRef;
        this.c = objectRef2;
        this.d = j53Var;
        this.e = str;
        this.f = im2Var;
        this.g = j;
        this.h = z;
    }

    /* JADX WARN: Type inference failed for: r1v17, types: [T, ads_mobile_sdk.mm2] */
    /* JADX WARN: Type inference failed for: r1v8, types: [T, ads_mobile_sdk.d9] */
    /* JADX WARN: Type inference failed for: r3v25, types: [T, ads_mobile_sdk.mm2] */
    /* JADX WARN: Type inference failed for: r3v33, types: [T, ads_mobile_sdk.mm2] */
    /* JADX WARN: Type inference failed for: r3v34, types: [T, ads_mobile_sdk.mm2] */
    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str;
        ArrayList values;
        o1 manifest = (o1) obj;
        Intrinsics.checkNotNullParameter(manifest, "manifest");
        this.a.clear();
        this.b.element = null;
        this.c.element = null;
        String key = this.d.name();
        rx0 rx0Var = (rx0) manifest.A().get(key);
        if (rx0Var == null) {
            this.c.element = mm2.MISS_REASON_EMPTY;
            return manifest;
        }
        j9 j9Var = (j9) rx0Var.v().get(this.e);
        if (j9Var == null) {
            this.c.element = mm2.MISS_REASON_EMPTY;
            return manifest;
        }
        j9 j9Var2 = (j9) this.f.a(MapsKt.mapOf(p005kotlin.TuplesKt.to(this.e, j9Var)), this.g, this.a).get(this.e);
        List values2 = j9Var2 != null ? j9Var2.y() : null;
        if (values2 == null) {
            values2 = CollectionsKt.emptyList();
        }
        Ref.ObjectRef objectRef = this.c;
        Ref.ObjectRef objectRef2 = this.b;
        boolean z = this.h;
        String key2 = this.e;
        long j = this.g;
        vz0.a aVarU = manifest.u();
        Intrinsics.checkNotNullExpressionValue(aVarU, "toBuilder(...)");
        n1 builder = (n1) aVarU;
        Intrinsics.checkNotNullParameter(builder, "builder");
        String str2 = "getPoolsMap(...)";
        String str3 = "value";
        if (values2.isEmpty()) {
            objectRef.element = mm2.MISS_REASON_EXPIRED;
            vz0.a aVarU2 = rx0Var.u();
            Intrinsics.checkNotNullExpressionValue(aVarU2, "toBuilder(...)");
            qx0 builder2 = (qx0) aVarU2;
            Intrinsics.checkNotNullParameter(builder2, "builder");
            Map mapI = builder2.i();
            Intrinsics.checkNotNullExpressionValue(mapI, "getAdResponseListsMap(...)");
            Intrinsics.checkNotNullParameter(new no0(mapI), "<this>");
            Intrinsics.checkNotNullParameter(key2, "key");
            builder2.a(key2);
            vz0 vz0VarB = builder2.b();
            Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
            rx0 value = (rx0) vz0VarB;
            if (value.v().isEmpty()) {
                Map mapI2 = builder.i();
                Intrinsics.checkNotNullExpressionValue(mapI2, "getPoolsMap(...)");
                Intrinsics.checkNotNullParameter(new no0(mapI2), "<this>");
                Intrinsics.checkNotNullParameter(key, "key");
                builder.a(key);
            } else {
                Map mapI3 = builder.i();
                Intrinsics.checkNotNullExpressionValue(mapI3, "getPoolsMap(...)");
                Intrinsics.checkNotNullParameter(new no0(mapI3), "<this>");
                Intrinsics.checkNotNullParameter(key, "key");
                Intrinsics.checkNotNullParameter(value, "value");
                builder.a(key, value);
            }
        } else {
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : values2) {
                n1 n1Var = builder;
                String str4 = key;
                String str5 = str3;
                if (((d9) obj2).y() == b9.AVAILABLE) {
                    arrayList.add(obj2);
                }
                builder = n1Var;
                str3 = str5;
                key = str4;
            }
            n1 n1Var2 = builder;
            String key3 = key;
            String str6 = str3;
            List listSortedWith = CollectionsKt.sortedWith(arrayList, new ml2());
            if (listSortedWith.isEmpty()) {
                objectRef.element = mm2.MISS_REASON_EMPTY;
                Map mapI4 = n1Var2.i();
                Intrinsics.checkNotNullExpressionValue(mapI4, "getPoolsMap(...)");
                no0 no0Var = new no0(mapI4);
                vz0.a aVarU3 = rx0Var.u();
                Intrinsics.checkNotNullExpressionValue(aVarU3, "toBuilder(...)");
                qx0 builder3 = (qx0) aVarU3;
                Intrinsics.checkNotNullParameter(builder3, "builder");
                Map mapI5 = builder3.i();
                Intrinsics.checkNotNullExpressionValue(mapI5, "getAdResponseListsMap(...)");
                no0 no0Var2 = new no0(mapI5);
                vz0.a aVarU4 = j9Var.u();
                Intrinsics.checkNotNullExpressionValue(aVarU4, "toBuilder(...)");
                i9 builder4 = (i9) aVarU4;
                Intrinsics.checkNotNullParameter(builder4, "builder");
                List listI = builder4.i();
                Intrinsics.checkNotNullExpressionValue(listI, "getResponsesList(...)");
                Intrinsics.checkNotNullParameter(new lo0(listI), "<this>");
                builder4.h();
                List listI2 = builder4.i();
                Intrinsics.checkNotNullExpressionValue(listI2, "getResponsesList(...)");
                Intrinsics.checkNotNullParameter(new lo0(listI2), "<this>");
                Intrinsics.checkNotNullParameter(values2, "values");
                builder4.a(values2);
                builder4.a(j);
                vz0 vz0VarB2 = builder4.b();
                Intrinsics.checkNotNullExpressionValue(vz0VarB2, "build(...)");
                j9 j9Var3 = (j9) vz0VarB2;
                Intrinsics.checkNotNullParameter(no0Var2, "<this>");
                Intrinsics.checkNotNullParameter(key2, "key");
                Intrinsics.checkNotNullParameter(j9Var3, str6);
                builder3.a(key2, j9Var3);
                vz0 vz0VarB3 = builder3.b();
                Intrinsics.checkNotNullExpressionValue(vz0VarB3, "build(...)");
                rx0 rx0Var2 = (rx0) vz0VarB3;
                Intrinsics.checkNotNullParameter(no0Var, "<this>");
                Intrinsics.checkNotNullParameter(key3, "key");
                Intrinsics.checkNotNullParameter(rx0Var2, str6);
                builder = n1Var2;
                builder.a(key3, rx0Var2);
            } else {
                ?? r1 = (d9) CollectionsKt.first(listSortedWith);
                objectRef2.element = r1;
                if (z) {
                    values = new ArrayList();
                    Iterator it = values2.iterator();
                    while (it.hasNext()) {
                        Iterator it2 = it;
                        Object next = it2.next();
                        String str7 = str2;
                        if (((d9) next) != r1) {
                            values.add(next);
                        }
                        it = it2;
                        str2 = str7;
                    }
                    str = str2;
                } else {
                    str = "getPoolsMap(...)";
                    values = new ArrayList(CollectionsKt.collectionSizeOrDefault(values2, 10));
                    for (Iterator it3 = values2.iterator(); it3.hasNext(); it3 = it3) {
                        d9 d9Var = (d9) it3.next();
                        if (d9Var == r1) {
                            Intrinsics.checkNotNull(d9Var);
                            vz0.a aVarU5 = d9Var.u();
                            Intrinsics.checkNotNullExpressionValue(aVarU5, "toBuilder(...)");
                            c9 builder5 = (c9) aVarU5;
                            Intrinsics.checkNotNullParameter(builder5, "builder");
                            b9 b9Var = b9.READ;
                            Intrinsics.checkNotNullParameter(b9Var, str6);
                            builder5.a(b9Var);
                            vz0 vz0VarB4 = builder5.b();
                            Intrinsics.checkNotNullExpressionValue(vz0VarB4, "build(...)");
                            d9Var = (d9) vz0VarB4;
                        }
                        values.add(d9Var);
                    }
                }
                vz0.a aVarU6 = rx0Var.u();
                Intrinsics.checkNotNullExpressionValue(aVarU6, "toBuilder(...)");
                qx0 builder6 = (qx0) aVarU6;
                Intrinsics.checkNotNullParameter(builder6, "builder");
                if (values.isEmpty()) {
                    Map mapI6 = builder6.i();
                    Intrinsics.checkNotNullExpressionValue(mapI6, "getAdResponseListsMap(...)");
                    Intrinsics.checkNotNullParameter(new no0(mapI6), "<this>");
                    Intrinsics.checkNotNullParameter(key2, "key");
                    builder6.a(key2);
                } else {
                    Map mapI7 = builder6.i();
                    Intrinsics.checkNotNullExpressionValue(mapI7, "getAdResponseListsMap(...)");
                    no0 no0Var3 = new no0(mapI7);
                    vz0.a aVarU7 = j9Var.u();
                    Intrinsics.checkNotNullExpressionValue(aVarU7, "toBuilder(...)");
                    i9 builder7 = (i9) aVarU7;
                    Intrinsics.checkNotNullParameter(builder7, "builder");
                    List listI3 = builder7.i();
                    Intrinsics.checkNotNullExpressionValue(listI3, "getResponsesList(...)");
                    Intrinsics.checkNotNullParameter(new lo0(listI3), "<this>");
                    builder7.h();
                    List listI4 = builder7.i();
                    Intrinsics.checkNotNullExpressionValue(listI4, "getResponsesList(...)");
                    Intrinsics.checkNotNullParameter(new lo0(listI4), "<this>");
                    Intrinsics.checkNotNullParameter(values, "values");
                    builder7.a(values);
                    builder7.a(j);
                    vz0 vz0VarB5 = builder7.b();
                    Intrinsics.checkNotNullExpressionValue(vz0VarB5, "build(...)");
                    j9 j9Var4 = (j9) vz0VarB5;
                    Intrinsics.checkNotNullParameter(no0Var3, "<this>");
                    Intrinsics.checkNotNullParameter(key2, "key");
                    Intrinsics.checkNotNullParameter(j9Var4, str6);
                    builder6.a(key2, j9Var4);
                }
                vz0 vz0VarB6 = builder6.b();
                Intrinsics.checkNotNullExpressionValue(vz0VarB6, "build(...)");
                rx0 rx0Var3 = (rx0) vz0VarB6;
                if (rx0Var3.v().isEmpty()) {
                    Map mapI8 = n1Var2.i();
                    Intrinsics.checkNotNullExpressionValue(mapI8, str);
                    Intrinsics.checkNotNullParameter(new no0(mapI8), "<this>");
                    Intrinsics.checkNotNullParameter(key3, "key");
                    builder = n1Var2;
                    builder.a(key3);
                } else {
                    builder = n1Var2;
                    Map mapI9 = builder.i();
                    Intrinsics.checkNotNullExpressionValue(mapI9, str);
                    Intrinsics.checkNotNullParameter(new no0(mapI9), "<this>");
                    Intrinsics.checkNotNullParameter(key3, "key");
                    Intrinsics.checkNotNullParameter(rx0Var3, str6);
                    builder.a(key3, rx0Var3);
                }
            }
        }
        vz0 vz0VarB7 = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB7, "build(...)");
        return (o1) vz0VarB7;
    }
}
