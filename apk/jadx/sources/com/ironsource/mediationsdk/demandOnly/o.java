package com.ironsource.mediationsdk.demandOnly;

import com.ironsource.InterfaceC3802r5;
import com.ironsource.Ob;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public interface o extends InterfaceC3802r5<String> {

    public static final class a implements o {
        private final String a;

        public a(String rowAdm) {
            Intrinsics.checkNotNullParameter(rowAdm, "rowAdm");
            this.a = rowAdm;
        }

        @Override // com.ironsource.mediationsdk.demandOnly.o
        public <T> T a(Ob<String, T> mapper) {
            Intrinsics.checkNotNullParameter(mapper, "mapper");
            return mapper.a(this.a);
        }

        @Override // com.ironsource.InterfaceC3802r5
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public String a() {
            return this.a;
        }
    }

    <T> T a(Ob<String, T> ob);
}
