package kotlin;

import android.content.Context;
import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class cl3 implements bt3 {
    public final ArrayList a = new ArrayList();

    @Override // kotlin.bt3
    public final void a(HashMap map) {
    }

    @Override // kotlin.bt3
    public final synchronized void a(HashMap map, Context context, View view) {
        map.put("vst", new ArrayList(this.a));
        this.a.clear();
    }

    @Override // kotlin.bt3
    public final void b(HashMap map) {
    }
}
