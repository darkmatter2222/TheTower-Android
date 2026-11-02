package com.tapjoy.internal;

import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: classes5.dex */
public final class bg implements bf {
    public final String a;

    public bg(String str) {
        this.a = str;
    }

    @Override // com.tapjoy.internal.bf
    public final void a(Writer writer) throws IOException {
        writer.write(this.a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof bg) {
            return this.a.equals(((bg) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return this.a;
    }
}
