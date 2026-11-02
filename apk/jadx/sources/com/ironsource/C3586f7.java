package com.ironsource;

import java.lang.ref.WeakReference;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.properties.ReadWriteProperty;
import p005kotlin.reflect.KProperty;

/* JADX INFO: renamed from: com.ironsource.f7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3586f7 {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.ironsource.f7$a */
    public static final class a<T> implements ReadWriteProperty<Object, T> {
        private WeakReference<T> a;

        a(T t) {
            this.a = new WeakReference<>(t);
        }

        public final WeakReference<T> a() {
            return this.a;
        }

        public final void a(WeakReference<T> weakReference) {
            Intrinsics.checkNotNullParameter(weakReference, "<set-?>");
            this.a = weakReference;
        }

        @Override // p005kotlin.properties.ReadWriteProperty, p005kotlin.properties.ReadOnlyProperty
        public T getValue(Object thisRef, KProperty<?> property) {
            Intrinsics.checkNotNullParameter(thisRef, "thisRef");
            Intrinsics.checkNotNullParameter(property, "property");
            return this.a.get();
        }

        @Override // p005kotlin.properties.ReadWriteProperty
        public void setValue(Object thisRef, KProperty<?> property, T t) {
            Intrinsics.checkNotNullParameter(thisRef, "thisRef");
            Intrinsics.checkNotNullParameter(property, "property");
            this.a = new WeakReference<>(t);
        }
    }

    public static final <T> ReadWriteProperty<Object, T> a(T t) {
        return new a(t);
    }

    public static /* synthetic */ ReadWriteProperty a(Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = null;
        }
        return a(obj);
    }
}
