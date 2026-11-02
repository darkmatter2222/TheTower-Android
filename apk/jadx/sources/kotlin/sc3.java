package kotlin;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class sc3 implements jr0 {
    public static final /* synthetic */ int c = 0;
    public final List a;
    public final List b;

    static {
        vh1.a(Collections.emptySet());
    }

    public sc3(List list, List list2) {
        this.a = list;
        this.b = list2;
    }

    @Override // kotlin.cw2
    public final Object get() {
        int size = this.a.size();
        ArrayList arrayList = new ArrayList(this.b.size());
        int size2 = this.b.size();
        for (int i = 0; i < size2; i++) {
            Collection collection = (Collection) ((dw2) this.b.get(i)).get();
            size += collection.size();
            arrayList.add(collection);
        }
        HashSet hashSet = new HashSet(size < 3 ? size + 1 : size < 1073741824 ? (int) ((size / 0.75f) + 1.0f) : Integer.MAX_VALUE);
        int size3 = this.a.size();
        for (int i2 = 0; i2 < size3; i2++) {
            Object obj = ((dw2) this.a.get(i2)).get();
            obj.getClass();
            hashSet.add(obj);
        }
        int size4 = arrayList.size();
        for (int i3 = 0; i3 < size4; i3++) {
            for (Object obj2 : (Collection) arrayList.get(i3)) {
                obj2.getClass();
                hashSet.add(obj2);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }
}
