package kotlin;

import com.ironsource.C3510b4;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class am2 extends Lambda implements Function1 {
    public final /* synthetic */ List a;
    public final /* synthetic */ im2 b;
    public final /* synthetic */ j53 c;
    public final /* synthetic */ long d;
    public final /* synthetic */ String e;
    public final /* synthetic */ String f;
    public final /* synthetic */ String g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public am2(ArrayList arrayList, im2 im2Var, j53 j53Var, long j, String str, String str2, String str3) {
        super(1);
        this.a = arrayList;
        this.b = im2Var;
        this.c = j53Var;
        this.d = j;
        this.e = str;
        this.f = str2;
        this.g = str3;
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str;
        String str2;
        List list;
        String str3;
        im2 im2Var;
        Object next;
        j9 j9Var;
        im2 im2Var2;
        String str4;
        String str5;
        List list2;
        Object objRemove;
        Object next2;
        String str6;
        String str7;
        String str8;
        Object next3;
        om2 om2Var;
        o1 manifest = (o1) obj;
        Intrinsics.checkNotNullParameter(manifest, "manifest");
        this.a.clear();
        im2 im2Var3 = this.b;
        j53 j53Var = this.c;
        long j = this.d;
        List list3 = this.a;
        im2Var3.getClass();
        String key = j53Var.name();
        rx0 rx0VarW = (rx0) manifest.A().get(key);
        if (rx0VarW == null) {
            rx0VarW = rx0.w();
        }
        Map mapV = rx0VarW.v();
        Intrinsics.checkNotNullExpressionValue(mapV, "getAdResponseListsMap(...)");
        LinkedHashMap map = im2Var3.a(mapV, j, list3);
        vz0.a aVarU = manifest.u();
        Intrinsics.checkNotNullExpressionValue(aVarU, "toBuilder(...)");
        n1 builder = (n1) aVarU;
        Intrinsics.checkNotNullParameter(builder, "builder");
        boolean zIsEmpty = map.isEmpty();
        String str9 = "map";
        String str10 = C3510b4.i.W;
        String str11 = "value";
        String str12 = "<this>";
        if (zIsEmpty) {
            Map mapI = builder.i();
            Intrinsics.checkNotNullExpressionValue(mapI, "getPoolsMap(...)");
            Intrinsics.checkNotNullParameter(new no0(mapI), "<this>");
            Intrinsics.checkNotNullParameter(key, "key");
            builder.a(key);
        } else {
            Map mapI2 = builder.i();
            Intrinsics.checkNotNullExpressionValue(mapI2, "getPoolsMap(...)");
            no0 no0Var = new no0(mapI2);
            qx0 builder2 = rx0.x();
            Intrinsics.checkNotNullExpressionValue(builder2, "newBuilder(...)");
            Intrinsics.checkNotNullParameter(builder2, "builder");
            Map mapI3 = builder2.i();
            Intrinsics.checkNotNullExpressionValue(mapI3, "getAdResponseListsMap(...)");
            Intrinsics.checkNotNullParameter(new no0(mapI3), "<this>");
            Intrinsics.checkNotNullParameter(map, "map");
            builder2.a(map);
            vz0 vz0VarB = builder2.b();
            Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
            rx0 value = (rx0) vz0VarB;
            Intrinsics.checkNotNullParameter(no0Var, "<this>");
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            builder.a(key, value);
        }
        vz0 vz0VarB2 = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB2, "build(...)");
        o1 o1VarA = (o1) vz0VarB2;
        int iA = im2Var3.a(j53Var) - 1;
        String key2 = j53Var.name();
        rx0 rx0Var = (rx0) o1VarA.A().get(key2);
        String str13 = "getResponsesList(...)";
        if (rx0Var == null) {
            im2Var = im2Var3;
            str3 = "value";
            str2 = "toBuilder(...)";
            list = list3;
        } else {
            Map mapV2 = rx0Var.v();
            Intrinsics.checkNotNullExpressionValue(mapV2, "getAdResponseListsMap(...)");
            Map mutableMap = MapsKt.toMutableMap(mapV2);
            while (true) {
                Iterator it = mutableMap.values().iterator();
                int iX = 0;
                while (it.hasNext()) {
                    iX = ((j9) it.next()).x() + iX;
                }
                if (iX <= iA || mutableMap.isEmpty()) {
                    break;
                }
                Iterator it2 = mutableMap.entrySet().iterator();
                if (it2.hasNext()) {
                    next = it2.next();
                    if (it2.hasNext()) {
                        long jW = ((j9) ((Map.Entry) next).getValue()).w();
                        do {
                            Object next4 = it2.next();
                            long jW2 = ((j9) ((Map.Entry) next4).getValue()).w();
                            if (jW > jW2) {
                                next = next4;
                                jW = jW2;
                            }
                        } while (it2.hasNext());
                    }
                } else {
                    next = null;
                }
                Map.Entry entry = (Map.Entry) next;
                String str14 = entry != null ? (String) entry.getKey() : null;
                if (str14 == null || (j9Var = (j9) mutableMap.get(str14)) == null) {
                    break;
                }
                o1 o1Var = o1VarA;
                s11 s11Var = s11.CUI_NAME_PERSISTENT_CACHE_EVICT;
                WeakHashMap weakHashMap = hs3.a;
                int i = iA;
                rx0 rx0Var2 = rx0Var;
                rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                try {
                    if (j9Var.x() > 0) {
                        List listY = j9Var.y();
                        Intrinsics.checkNotNullExpressionValue(listY, "getResponsesList(...)");
                        Iterator it3 = listY.iterator();
                        if (it3.hasNext()) {
                            next2 = it3.next();
                            if (it3.hasNext()) {
                                long jW3 = ((d9) next2).w();
                                do {
                                    Object next5 = it3.next();
                                    long jW4 = ((d9) next5).w();
                                    if (jW3 > jW4) {
                                        next2 = next5;
                                        jW3 = jW4;
                                    }
                                } while (it3.hasNext());
                            }
                        } else {
                            next2 = null;
                        }
                        d9 d9Var = (d9) next2;
                        List listY2 = j9Var.y();
                        Intrinsics.checkNotNullExpressionValue(listY2, "getResponsesList(...)");
                        ArrayList values = new ArrayList();
                        for (Object obj2 : listY2) {
                            im2 im2Var4 = im2Var3;
                            String str15 = str11;
                            if (((d9) obj2) != d9Var) {
                                values.add(obj2);
                            }
                            im2Var3 = im2Var4;
                            str11 = str15;
                        }
                        im2Var2 = im2Var3;
                        str4 = str11;
                        if (values.isEmpty()) {
                            mutableMap.remove(str14);
                            str5 = str;
                        } else {
                            vz0.a aVarU2 = j9Var.u();
                            str5 = str;
                            Intrinsics.checkNotNullExpressionValue(aVarU2, str5);
                            i9 builder3 = (i9) aVarU2;
                            Intrinsics.checkNotNullParameter(builder3, "builder");
                            List listI = builder3.i();
                            Intrinsics.checkNotNullExpressionValue(listI, "getResponsesList(...)");
                            Intrinsics.checkNotNullParameter(new lo0(listI), "<this>");
                            builder3.h();
                            List listI2 = builder3.i();
                            Intrinsics.checkNotNullExpressionValue(listI2, "getResponsesList(...)");
                            Intrinsics.checkNotNullParameter(new lo0(listI2), "<this>");
                            Intrinsics.checkNotNullParameter(values, "values");
                            builder3.a(values);
                            vz0 vz0VarB3 = builder3.b();
                            Intrinsics.checkNotNullExpressionValue(vz0VarB3, "build(...)");
                            mutableMap.put(str14, (j9) vz0VarB3);
                        }
                        if (d9Var != 0) {
                            String strX = d9Var.x();
                            Intrinsics.checkNotNullExpressionValue(strX, "getFilename(...)");
                            list2 = list3;
                            objRemove = Boolean.valueOf(list2.add(strX));
                        } else {
                            list2 = list3;
                            objRemove = null;
                        }
                    } else {
                        im2Var2 = im2Var3;
                        str9 = str9;
                        str4 = str11;
                        str5 = str;
                        list2 = list3;
                        objRemove = mutableMap.remove(str14);
                    }
                    if (objRemove instanceof i01) {
                        xs3.a((i01) objRemove, false);
                    }
                    CloseableKt.closeFinally(rr3VarA, null);
                    list3 = list2;
                    str = str5;
                    o1VarA = o1Var;
                    iA = i;
                    rx0Var = rx0Var2;
                    im2Var3 = im2Var2;
                    str11 = str4;
                    str9 = str9;
                } catch (Throwable th) {
                    try {
                        rr3VarA.b(th);
                        if (th instanceof v24) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                            rr3VarA.a(th);
                        }
                        if (th instanceof TimeoutCancellationException) {
                            throw new i21(th);
                        }
                        if (th instanceof CancellationException) {
                            throw new wz0(th);
                        }
                        if (th instanceof w01) {
                            throw th;
                        }
                        throw new b01(th);
                    } catch (Throwable th2) {
                        try {
                            throw th2;
                        } catch (Throwable th3) {
                            CloseableKt.closeFinally(rr3VarA, th2);
                            throw th3;
                        }
                    }
                }
            }
            im2 im2Var5 = im2Var3;
            rx0 rx0Var3 = rx0Var;
            String str16 = str9;
            String str17 = str11;
            str2 = str;
            list = list3;
            vz0.a aVarU3 = o1VarA.u();
            Intrinsics.checkNotNullExpressionValue(aVarU3, str2);
            n1 builder4 = (n1) aVarU3;
            Intrinsics.checkNotNullParameter(builder4, "builder");
            if (mutableMap.isEmpty()) {
                Map mapI4 = builder4.i();
                Intrinsics.checkNotNullExpressionValue(mapI4, "getPoolsMap(...)");
                Intrinsics.checkNotNullParameter(new no0(mapI4), "<this>");
                Intrinsics.checkNotNullParameter(key2, "key");
                builder4.a(key2);
                str3 = str17;
            } else {
                Map mapI5 = builder4.i();
                Intrinsics.checkNotNullExpressionValue(mapI5, "getPoolsMap(...)");
                no0 no0Var2 = new no0(mapI5);
                vz0.a aVarU4 = rx0Var3.u();
                Intrinsics.checkNotNullExpressionValue(aVarU4, str2);
                qx0 builder5 = (qx0) aVarU4;
                Intrinsics.checkNotNullParameter(builder5, "builder");
                Map mapI6 = builder5.i();
                Intrinsics.checkNotNullExpressionValue(mapI6, "getAdResponseListsMap(...)");
                Intrinsics.checkNotNullParameter(new no0(mapI6), "<this>");
                builder5.h();
                Map mapI7 = builder5.i();
                Intrinsics.checkNotNullExpressionValue(mapI7, "getAdResponseListsMap(...)");
                Intrinsics.checkNotNullParameter(new no0(mapI7), "<this>");
                Intrinsics.checkNotNullParameter(mutableMap, str16);
                builder5.a(mutableMap);
                vz0 vz0VarB4 = builder5.b();
                Intrinsics.checkNotNullExpressionValue(vz0VarB4, "build(...)");
                rx0 rx0Var4 = (rx0) vz0VarB4;
                Intrinsics.checkNotNullParameter(no0Var2, "<this>");
                Intrinsics.checkNotNullParameter(key2, "key");
                str3 = str17;
                Intrinsics.checkNotNullParameter(rx0Var4, str3);
                builder4.a(key2, rx0Var4);
            }
            vz0 vz0VarB5 = builder4.b();
            Intrinsics.checkNotNullExpressionValue(vz0VarB5, "build(...)");
            o1VarA = (o1) vz0VarB5;
            im2Var = im2Var5;
        }
        cl2 cl2Var = im2Var.c;
        cl2Var.getClass();
        Intrinsics.checkNotNullParameter("gads:pc:max_total_cached_ads", C3510b4.i.W);
        int iIntValue = ((Number) cl2Var.a("gads:pc:max_total_cached_ads", 10, yr.f)).intValue() - 1;
        while (true) {
            Iterator it4 = o1VarA.A().values().iterator();
            int i2 = 0;
            while (it4.hasNext()) {
                Iterator it5 = ((rx0) it4.next()).v().values().iterator();
                int iX2 = 0;
                while (it5.hasNext()) {
                    iX2 = ((j9) it5.next()).x() + iX2;
                }
                i2 += iX2;
            }
            if (i2 <= iIntValue) {
                str6 = str12;
                str7 = str13;
                str8 = str10;
                break;
            }
            Set setEntrySet = o1VarA.A().entrySet();
            ArrayList arrayList = new ArrayList();
            Iterator it6 = setEntrySet.iterator();
            while (it6.hasNext()) {
                Map.Entry entry2 = (Map.Entry) it6.next();
                String str18 = (String) entry2.getKey();
                Set setEntrySet2 = ((rx0) entry2.getValue()).v().entrySet();
                int i3 = iIntValue;
                ArrayList arrayList2 = new ArrayList();
                Iterator it7 = setEntrySet2.iterator();
                while (it7.hasNext()) {
                    Map.Entry entry3 = (Map.Entry) it7.next();
                    Iterator it8 = it6;
                    String str19 = (String) entry3.getKey();
                    Iterator it9 = it7;
                    List listY3 = ((j9) entry3.getValue()).y();
                    Intrinsics.checkNotNullExpressionValue(listY3, str13);
                    String str20 = str10;
                    String str21 = str12;
                    String str22 = str13;
                    ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(listY3, 10));
                    Iterator it10 = listY3.iterator();
                    while (it10.hasNext()) {
                        arrayList3.add(new p005kotlin.Triple(str18, str19, (d9) it10.next()));
                    }
                    CollectionsKt.addAll(arrayList2, arrayList3);
                    str13 = str22;
                    str10 = str20;
                    it7 = it9;
                    it6 = it8;
                    str12 = str21;
                }
                CollectionsKt.addAll(arrayList, arrayList2);
                iIntValue = i3;
            }
            str6 = str12;
            int i4 = iIntValue;
            str7 = str13;
            str8 = str10;
            Iterator it11 = arrayList.iterator();
            if (it11.hasNext()) {
                next3 = it11.next();
                if (it11.hasNext()) {
                    long jW5 = ((d9) ((p005kotlin.Triple) next3).getThird()).w();
                    do {
                        Object next6 = it11.next();
                        long jW6 = ((d9) ((p005kotlin.Triple) next6).getThird()).w();
                        if (jW5 > jW6) {
                            next3 = next6;
                            jW5 = jW6;
                        }
                    } while (it11.hasNext());
                }
            } else {
                next3 = null;
            }
            p005kotlin.Triple triple = (p005kotlin.Triple) next3;
            if (triple == null) {
                om2Var = null;
            } else {
                String strX2 = ((d9) triple.getThird()).x();
                Intrinsics.checkNotNullExpressionValue(strX2, "getFilename(...)");
                Object first = triple.getFirst();
                Intrinsics.checkNotNullExpressionValue(first, "<get-first>(...)");
                h53 h53Var = j53.b;
                j53 j53Var2 = (j53) Enum.valueOf(j53.class, (String) first);
                Object second = triple.getSecond();
                Intrinsics.checkNotNullExpressionValue(second, "<get-second>(...)");
                om2Var = new om2(strX2, j53Var2, (String) second);
            }
            if (om2Var == null) {
                break;
            }
            s11 s11Var2 = s11.CUI_NAME_PERSISTENT_CACHE_EVICT;
            WeakHashMap weakHashMap2 = hs3.a;
            rr3 rr3VarA2 = hs3.a(s11Var2, CollectionsKt.emptyList(), true);
            try {
                o1VarA = im2.a(o1VarA, om2Var.b.name(), om2Var.c, om2Var.a);
                Object objValueOf = Boolean.valueOf(list.add(om2Var.a));
                if (objValueOf instanceof i01) {
                    xs3.a((i01) objValueOf, false);
                }
                CloseableKt.closeFinally(rr3VarA2, null);
                str13 = str7;
                iIntValue = i4;
                str10 = str8;
                str12 = str6;
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
                        CloseableKt.closeFinally(rr3VarA2, th5);
                        throw th6;
                    }
                }
            }
        }
        im2 im2Var6 = this.b;
        j53 j53Var3 = this.c;
        String str23 = this.e;
        String str24 = this.f;
        String str25 = this.g;
        long j2 = this.d;
        im2Var6.getClass();
        String strName = j53Var3.name();
        rx0 rx0VarW2 = (rx0) o1VarA.A().get(strName);
        if (rx0VarW2 == null) {
            rx0VarW2 = rx0.w();
        }
        c9 builder6 = d9.z();
        Intrinsics.checkNotNullExpressionValue(builder6, "newBuilder(...)");
        Intrinsics.checkNotNullParameter(builder6, "builder");
        Intrinsics.checkNotNullParameter(str24, str3);
        builder6.b(str24);
        builder6.a(j2);
        Intrinsics.checkNotNullParameter(str25, str3);
        builder6.a(str25);
        b9 b9Var = b9.AVAILABLE;
        Intrinsics.checkNotNullParameter(b9Var, str3);
        builder6.a(b9Var);
        vz0 vz0VarB6 = builder6.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB6, "build(...)");
        d9 d9Var2 = (d9) vz0VarB6;
        vz0.a aVarU5 = o1VarA.u();
        Intrinsics.checkNotNullExpressionValue(aVarU5, str2);
        n1 builder7 = (n1) aVarU5;
        Intrinsics.checkNotNullParameter(builder7, "builder");
        Map mapI8 = builder7.i();
        Intrinsics.checkNotNullExpressionValue(mapI8, "getPoolsMap(...)");
        no0 no0Var3 = new no0(mapI8);
        Intrinsics.checkNotNull(rx0VarW2);
        vz0.a aVarU6 = rx0VarW2.u();
        Intrinsics.checkNotNullExpressionValue(aVarU6, str2);
        qx0 builder8 = (qx0) aVarU6;
        Intrinsics.checkNotNullParameter(builder8, "builder");
        Map mapI9 = builder8.i();
        Intrinsics.checkNotNullExpressionValue(mapI9, "getAdResponseListsMap(...)");
        j9 j9VarV = (j9) new no0(mapI9).get(str23);
        if (j9VarV == null) {
            j9VarV = j9.v();
        }
        Map mapI10 = builder8.i();
        Intrinsics.checkNotNullExpressionValue(mapI10, "getAdResponseListsMap(...)");
        no0 no0Var4 = new no0(mapI10);
        Intrinsics.checkNotNull(j9VarV);
        vz0.a aVarU7 = j9VarV.u();
        Intrinsics.checkNotNullExpressionValue(aVarU7, str2);
        i9 builder9 = (i9) aVarU7;
        Intrinsics.checkNotNullParameter(builder9, "builder");
        List listI3 = builder9.i();
        Intrinsics.checkNotNullExpressionValue(listI3, str7);
        lo0 lo0Var = new lo0(listI3);
        String str26 = str6;
        Intrinsics.checkNotNullParameter(lo0Var, str26);
        Intrinsics.checkNotNullParameter(d9Var2, str3);
        builder9.a(d9Var2);
        builder9.a(j2);
        vz0 vz0VarB7 = builder9.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB7, "build(...)");
        j9 j9Var2 = (j9) vz0VarB7;
        Intrinsics.checkNotNullParameter(no0Var4, str26);
        String str27 = str8;
        Intrinsics.checkNotNullParameter(str23, str27);
        Intrinsics.checkNotNullParameter(j9Var2, str3);
        builder8.a(str23, j9Var2);
        vz0 vz0VarB8 = builder8.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB8, "build(...)");
        rx0 rx0Var5 = (rx0) vz0VarB8;
        Intrinsics.checkNotNullParameter(no0Var3, str26);
        Intrinsics.checkNotNullParameter(strName, str27);
        Intrinsics.checkNotNullParameter(rx0Var5, str3);
        builder7.a(strName, rx0Var5);
        vz0 vz0VarB9 = builder7.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB9, "build(...)");
        return (o1) vz0VarB9;
    }
}
