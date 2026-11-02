package com.ironsource;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import p005kotlin.NoWhenBranchMatchedException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.i1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3634i1 implements InterfaceC3777pf<JSONArray> {
    private final List<C3616h1> a = new ArrayList();

    /* JADX INFO: renamed from: com.ironsource.i1$a */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[EnumC3755of.values().length];
            try {
                iArr[EnumC3755of.FullHistory.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EnumC3755of.CurrentlyLoadedAds.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    private final List<C3616h1> a() {
        List<C3616h1> list = this.a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            C3616h1 c3616h1 = (C3616h1) obj;
            if (c3616h1.e() != EnumC3719mf.LoadSuccess && c3616h1.e() != EnumC3719mf.LoadRequest) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((C3616h1) it.next()).a());
        }
        Set set = CollectionsKt.toSet(arrayList2);
        List<C3616h1> list2 = this.a;
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : list2) {
            C3616h1 c3616h2 = (C3616h1) obj2;
            if (c3616h2.e() == EnumC3719mf.LoadSuccess && !set.contains(c3616h2.a())) {
                arrayList3.add(obj2);
            }
        }
        return arrayList3;
    }

    private final List<C3616h1> b() {
        List<C3616h1> list = this.a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((C3616h1) obj).e() != EnumC3719mf.LoadRequest) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final void a(C3616h1 event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.a.add(event);
    }

    @Override // com.ironsource.InterfaceC3604g7
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public JSONArray a(EnumC3755of mode) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        int i = a.a[mode.ordinal()];
        if (i == 1) {
            List<C3616h1> listB = b();
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listB, 10));
            Iterator<T> it = listB.iterator();
            while (it.hasNext()) {
                arrayList.add(((C3616h1) it.next()).d());
            }
            return new JSONArray((Collection) arrayList);
        }
        if (i != 2) {
            throw new NoWhenBranchMatchedException();
        }
        List<C3616h1> listA = a();
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(listA, 10));
        Iterator<T> it2 = listA.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((C3616h1) it2.next()).c());
        }
        return new JSONArray((Collection) arrayList2);
    }
}
