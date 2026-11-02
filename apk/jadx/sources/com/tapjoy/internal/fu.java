package com.tapjoy.internal;

import java.util.Observable;

/* JADX INFO: loaded from: classes5.dex */
public final class fu {
    public static final a a = new a();
    public static final a b = new a();
    public static final a c = new a();
    public static final a d = new a();
    public static final a e = new a();

    public static class a extends Observable {
        @Override // java.util.Observable
        public final void notifyObservers() {
            setChanged();
            super.notifyObservers();
        }

        @Override // java.util.Observable
        public final void notifyObservers(Object obj) {
            setChanged();
            super.notifyObservers(obj);
        }
    }
}
