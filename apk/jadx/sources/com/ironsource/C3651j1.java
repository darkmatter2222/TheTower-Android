package com.ironsource;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import org.json.JSONObject;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.j1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C3651j1 implements InterfaceC3798r1 {
    private final InterfaceC3705m1 a;
    private final F7 b;
    private final Ob<Integer, Integer> c;
    private final InterfaceC3839t4 d;
    private List<InterfaceC3741o1> e;

    public C3651j1(InterfaceC3705m1 eventBaseData, F7 eventsManager, Ob<Integer, Integer> eventsMapper, InterfaceC3839t4 currentTimeProvider) {
        Intrinsics.checkNotNullParameter(eventBaseData, "eventBaseData");
        Intrinsics.checkNotNullParameter(eventsManager, "eventsManager");
        Intrinsics.checkNotNullParameter(eventsMapper, "eventsMapper");
        Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
        this.a = eventBaseData;
        this.b = eventsManager;
        this.c = eventsMapper;
        this.d = currentTimeProvider;
        this.e = new ArrayList();
    }

    public /* synthetic */ C3651j1(InterfaceC3705m1 interfaceC3705m1, F7 f7, Ob ob, InterfaceC3839t4 interfaceC3839t4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(interfaceC3705m1, f7, ob, (i & 8) != 0 ? new InterfaceC3839t4.a() : interfaceC3839t4);
    }

    private final JSONObject b(List<? extends InterfaceC3741o1> list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<? extends InterfaceC3741o1> it = list.iterator();
        while (it.hasNext()) {
            it.next().a(linkedHashMap);
        }
        return new JSONObject(linkedHashMap);
    }

    @Override // com.ironsource.InterfaceC3798r1
    public void a() {
        this.e.clear();
    }

    @Override // com.ironsource.InterfaceC3798r1
    public void a(int i, List<InterfaceC3741o1> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "arrayList");
        try {
            Iterator<T> it = this.a.a().iterator();
            while (it.hasNext()) {
                arrayList.add((InterfaceC3741o1) it.next());
            }
            Iterator<InterfaceC3741o1> it2 = this.e.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next());
            }
            this.b.a(new C5(this.c.a(Integer.valueOf(i)).intValue(), this.d.a(), b(arrayList)));
        } catch (Exception e) {
            C3801r4.d().a(e);
            System.out.println((Object) ("LogRemote | Exception: " + e.getMessage()));
        }
    }

    public final void a(List<InterfaceC3741o1> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.e = list;
    }

    @Override // com.ironsource.InterfaceC3798r1
    public void a(InterfaceC3741o1... analyticsEventEntity) {
        Intrinsics.checkNotNullParameter(analyticsEventEntity, "analyticsEventEntity");
        for (InterfaceC3741o1 interfaceC3741o1 : analyticsEventEntity) {
            this.e.add(interfaceC3741o1);
        }
    }

    public final List<InterfaceC3741o1> b() {
        return this.e;
    }
}
