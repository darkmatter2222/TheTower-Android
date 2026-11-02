package com.tapjoy.internal;

import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class ab {

    static class a implements Iterator<View> {
        private final ViewGroup a;
        private int b;
        private int c = 0;

        public a(ViewGroup viewGroup) {
            this.a = viewGroup;
            this.b = viewGroup.getChildCount();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.c < this.b;
        }

        @Override // java.util.Iterator
        public final /* synthetic */ View next() {
            ViewGroup viewGroup = this.a;
            int i = this.c;
            this.c = i + 1;
            return viewGroup.getChildAt(i);
        }

        @Override // java.util.Iterator
        public final void remove() {
            this.a.removeViewAt(this.c - 1);
        }
    }

    public static Iterable<View> a(ViewGroup viewGroup) {
        final a aVar = new a(viewGroup);
        return new Iterable<T>() { // from class: com.tapjoy.internal.ab.1
            @Override // java.lang.Iterable
            public final Iterator<T> iterator() {
                return aVar;
            }
        };
    }
}
