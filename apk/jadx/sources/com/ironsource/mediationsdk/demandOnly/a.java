package com.ironsource.mediationsdk.demandOnly;

import com.ironsource.C3927y2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public interface a {

    /* JADX INFO: renamed from: com.ironsource.mediationsdk.demandOnly.a$a, reason: collision with other inner class name */
    public static final class C1117a implements a {
        private final List<C3927y2> a;

        /* JADX WARN: Multi-variable type inference failed */
        public C1117a() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public C1117a(List<C3927y2> waterfall) {
            Intrinsics.checkNotNullParameter(waterfall, "waterfall");
            this.a = waterfall;
        }

        public /* synthetic */ C1117a(List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? new ArrayList() : list);
        }

        @Override // com.ironsource.mediationsdk.demandOnly.a
        public C3927y2 a(String instanceName) {
            Object next;
            Intrinsics.checkNotNullParameter(instanceName, "instanceName");
            Iterator<T> it = this.a.iterator();
            while (it.hasNext()) {
                next = it.next();
                if (Intrinsics.areEqual(((C3927y2) next).c(), instanceName)) {
                    return (C3927y2) next;
                }
            }
            next = null;
            return (C3927y2) next;
        }

        @Override // com.ironsource.mediationsdk.demandOnly.a
        public List<C3927y2> a() {
            return this.a;
        }

        @Override // com.ironsource.mediationsdk.demandOnly.a
        public String b() {
            if (this.a.isEmpty()) {
                return "";
            }
            return "1" + ((C3927y2) CollectionsKt.first((List) this.a)).c();
        }

        @Override // com.ironsource.mediationsdk.demandOnly.a
        public C3927y2 get(int i) {
            if (i < 0 || i >= this.a.size()) {
                return null;
            }
            return this.a.get(i);
        }

        @Override // com.ironsource.mediationsdk.demandOnly.a
        public boolean isEmpty() {
            return this.a.isEmpty();
        }
    }

    C3927y2 a(String str);

    List<C3927y2> a();

    String b();

    C3927y2 get(int i);

    boolean isEmpty();
}
