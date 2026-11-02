package kotlin;

import p005kotlin.jvm.internal.MutablePropertyReference1Impl;
import p005kotlin.jvm.internal.Reflection;
import p005kotlin.reflect.KMutableProperty1;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class kk {
    public static KMutableProperty1 a(Class cls, String str, String str2, int i) {
        return Reflection.mutableProperty1(new MutablePropertyReference1Impl(cls, str, str2, i));
    }
}
