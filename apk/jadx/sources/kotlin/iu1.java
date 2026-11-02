package kotlin;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class iu1 extends e {
    public static final vh1 b = vh1.a(Collections.emptyMap());

    public iu1(LinkedHashMap linkedHashMap) {
        super(linkedHashMap);
    }

    @Override // kotlin.cw2
    public final Object get() {
        int size = this.a.size();
        LinkedHashMap linkedHashMap = new LinkedHashMap(size < 3 ? size + 1 : size < 1073741824 ? (int) ((size / 0.75f) + 1.0f) : Integer.MAX_VALUE);
        for (Map.Entry entry : this.a.entrySet()) {
            linkedHashMap.put(entry.getKey(), ((dw2) entry.getValue()).get());
        }
        return Collections.unmodifiableMap(linkedHashMap);
    }
}
