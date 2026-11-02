package com.ironsource;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.a7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public interface InterfaceC3452a7 {

    /* JADX INFO: renamed from: com.ironsource.a7$a */
    public static final class a implements InterfaceC3452a7 {
        private final EnumC3531c7 a;

        public a(EnumC3531c7 strategy) {
            Intrinsics.checkNotNullParameter(strategy, "strategy");
            this.a = strategy;
        }

        @Override // com.ironsource.InterfaceC3452a7
        public String a() {
            return "WebView is unavailable";
        }

        @Override // com.ironsource.InterfaceC3452a7
        public EnumC3531c7 b() {
            return this.a;
        }

        public final EnumC3531c7 c() {
            return this.a;
        }
    }

    String a();

    EnumC3531c7 b();
}
