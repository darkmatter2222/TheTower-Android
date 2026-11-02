package com.google.android.play.deku.j$.util.concurrent;

/* JADX INFO: compiled from: r8-map-id-bb91944b082bf4b7fbd41b6e2b3f121d681bdc5ad0cdf9802a2430155b14e3ec */
/* JADX INFO: loaded from: classes2.dex */
public final class f extends j {
    public final j[] e;

    public f(j[] jVarArr) {
        super(-1, null, null);
        this.e = jVarArr;
    }

    @Override // com.google.android.play.deku.j$.util.concurrent.j
    public final j a(int i, Object obj) {
        j jVarJ;
        Object obj2;
        j[] jVarArr = this.e;
        while (true) {
            int length = jVarArr.length;
            if (length == 0 || (jVarJ = ConcurrentHashMap.j(jVarArr, (length - 1) & i)) == null) {
                return null;
            }
            do {
                int i2 = jVarJ.a;
                if (i2 == i && ((obj2 = jVarJ.b) == obj || (obj2 != null && obj.equals(obj2)))) {
                    return jVarJ;
                }
                if (i2 >= 0) {
                    jVarJ = jVarJ.d;
                } else {
                    if (!(jVarJ instanceof f)) {
                        return jVarJ.a(i, obj);
                    }
                    jVarArr = ((f) jVarJ).e;
                }
            } while (jVarJ != null);
            return null;
        }
    }
}
