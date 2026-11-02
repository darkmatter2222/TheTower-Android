package com.tapjoy.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class aj {

    public static final class a<K, V> implements am<K, V> {
        private final ak<K, V> a;

        public a(ak<K, V> akVar) {
            this.a = akVar;
        }

        @Override // com.tapjoy.internal.ah
        public final V a(K k) {
            ai<V> aiVarA;
            V vA;
            synchronized (this.a) {
                aiVarA = this.a.a((Object) k, false);
            }
            if (aiVarA == null) {
                return null;
            }
            synchronized (aiVarA) {
                vA = aiVarA.a();
            }
            return vA;
        }

        @Override // com.tapjoy.internal.ah
        public final void a(K k, V v) {
            ai<V> aiVarA;
            synchronized (this.a) {
                aiVarA = this.a.a((Object) k, true);
            }
            synchronized (aiVarA) {
                aiVarA.a(v);
            }
        }
    }
}
