package kotlin;

import com.google.gson.JsonElement;
import java.util.ArrayList;
import java.util.Iterator;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class or extends Lambda implements Function1 {
    public static final or a = new or();

    public or() {
        super(1);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        JsonElement jsonElement = (JsonElement) obj;
        Intrinsics.checkNotNullParameter(jsonElement, "jsonElement");
        Iterable iterable = (Iterable) yr.g.invoke(jsonElement);
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterable, 10));
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(Integer.parseInt((String) it.next())));
        }
        return arrayList;
    }
}
