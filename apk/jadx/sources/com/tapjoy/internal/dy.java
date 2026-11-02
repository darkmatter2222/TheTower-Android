package com.tapjoy.internal;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: loaded from: classes5.dex */
public final class dy {
    final HashMap<View, String> a = new HashMap<>();
    final HashMap<View, a> b = new HashMap<>();
    final HashMap<String, View> c = new HashMap<>();
    final HashSet<View> d = new HashSet<>();
    final HashSet<String> e = new HashSet<>();
    final HashSet<String> f = new HashSet<>();
    final HashMap<String, String> g = new HashMap<>();
    boolean h;

    public static class a {
        public final df a;
        public final ArrayList<String> b = new ArrayList<>();

        public a(df dfVar, String str) {
            this.a = dfVar;
            a(str);
        }

        public final void a(String str) {
            this.b.add(str);
        }
    }

    final void a(cx cxVar) {
        for (df dfVar : cxVar.b) {
            View view = (View) dfVar.a.get();
            if (view != null) {
                a aVar = this.b.get(view);
                if (aVar != null) {
                    aVar.a(cxVar.f);
                } else {
                    this.b.put(view, new a(dfVar, cxVar.f));
                }
            }
        }
    }
}
