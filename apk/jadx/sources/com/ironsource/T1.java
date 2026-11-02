package com.ironsource;

import java.util.Map;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class T1 {
    private final Map<String, String> a;

    /* JADX WARN: Multi-variable type inference failed */
    public T1() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public T1(Map<String, String> mediationTypes) {
        Intrinsics.checkNotNullParameter(mediationTypes, "mediationTypes");
        this.a = mediationTypes;
    }

    public /* synthetic */ T1(Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? MapsKt.emptyMap() : map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ T1 a(T1 t1, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            map = t1.a;
        }
        return t1.a(map);
    }

    public final T1 a(Map<String, String> mediationTypes) {
        Intrinsics.checkNotNullParameter(mediationTypes, "mediationTypes");
        return new T1(mediationTypes);
    }

    public final Map<String, String> a() {
        return this.a;
    }

    public final Map<String, String> b() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof T1) && Intrinsics.areEqual(this.a, ((T1) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return "ApplicationExternalSettings(mediationTypes=" + this.a + ")";
    }
}
