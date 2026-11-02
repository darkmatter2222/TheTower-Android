package kotlin;

import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.properties.ReadWriteProperty;
import p005kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes.dex */
public final class tn3 implements ReadWriteProperty {
    public final Function1 a;
    public Object b;

    public /* synthetic */ tn3(Object obj) {
        this(null, obj);
    }

    public tn3(Function1 function1, Object obj) {
        this.a = function1;
        this.b = obj;
    }

    @Override // p005kotlin.properties.ReadWriteProperty, p005kotlin.properties.ReadOnlyProperty
    public final Object getValue(Object thisRef, KProperty property) {
        Object obj;
        Intrinsics.checkNotNullParameter(thisRef, "thisRef");
        Intrinsics.checkNotNullParameter(property, "property");
        synchronized (this) {
            obj = this.b;
        }
        return obj;
    }

    @Override // p005kotlin.properties.ReadWriteProperty
    public final void setValue(Object thisRef, KProperty property, Object obj) {
        Intrinsics.checkNotNullParameter(thisRef, "thisRef");
        Intrinsics.checkNotNullParameter(property, "property");
        synchronized (this) {
            this.b = obj;
            Function1 function1 = this.a;
            if (function1 != null) {
                function1.invoke(obj);
                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
            }
        }
    }
}
