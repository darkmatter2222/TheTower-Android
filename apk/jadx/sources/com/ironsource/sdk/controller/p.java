package com.ironsource.sdk.controller;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.ironsource.C3510b4;
import com.ironsource.C3801r4;
import com.ironsource.InterfaceC3596g;
import com.ironsource.InterfaceC3614h;
import com.ironsource.Yc;
import com.ironsource.Zc;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public interface p {

    public static final class a implements p {
        private b a;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public a(String method, Zc openUrlConfigurations) {
            this(method, openUrlConfigurations, new k.c(), new k.a());
            Intrinsics.checkNotNullParameter(method, "method");
            Intrinsics.checkNotNullParameter(openUrlConfigurations, "openUrlConfigurations");
        }

        /* JADX WARN: Code duplicated, block: B:20:0x0057  */
        public a(String method, Zc openUrlConfigurations, InterfaceC3614h activityIntentFactory, InterfaceC3596g actionIntentFactory) {
            b aVar;
            Intrinsics.checkNotNullParameter(method, "method");
            Intrinsics.checkNotNullParameter(openUrlConfigurations, "openUrlConfigurations");
            Intrinsics.checkNotNullParameter(activityIntentFactory, "activityIntentFactory");
            Intrinsics.checkNotNullParameter(actionIntentFactory, "actionIntentFactory");
            int iHashCode = method.hashCode();
            if (iHashCode != -1455867212) {
                if (iHashCode != 109770977) {
                    if (iHashCode == 1224424441 && method.equals(C3510b4.i.K)) {
                        aVar = new b.d(openUrlConfigurations, activityIntentFactory);
                    } else {
                        aVar = new b.C1124b(method);
                    }
                } else if (method.equals("store")) {
                    aVar = new b.c(openUrlConfigurations, activityIntentFactory);
                } else {
                    aVar = new b.C1124b(method);
                }
            } else if (method.equals(C3510b4.i.J)) {
                aVar = new b.a(openUrlConfigurations, actionIntentFactory);
            } else {
                aVar = new b.C1124b(method);
            }
            this.a = aVar;
        }

        @Override // com.ironsource.sdk.controller.p
        public c a(Context context, Yc openUrl) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(openUrl, "openUrl");
            try {
                return this.a.a(context, openUrl);
            } catch (Exception e) {
                C3801r4.d().a(e);
                String message = e.getMessage();
                String message2 = (message == null || message.length() == 0) ? "" : e.getMessage();
                Intrinsics.checkNotNull(message2);
                return new c.a(message2);
            }
        }
    }

    public interface b {

        public static final class a implements b {
            private final Zc a;
            private final InterfaceC3596g b;

            public a(Zc configurations, InterfaceC3596g intentFactory) {
                Intrinsics.checkNotNullParameter(configurations, "configurations");
                Intrinsics.checkNotNullParameter(intentFactory, "intentFactory");
                this.a = configurations;
                this.b = intentFactory;
            }

            @Override // com.ironsource.sdk.controller.p.b
            public c a(Context context, Yc openUrl) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(openUrl, "openUrl");
                if (TextUtils.isEmpty(openUrl.d())) {
                    return new c.a("url is empty");
                }
                Intent intentA = this.b.a();
                intentA.setData(Uri.parse(openUrl.d()));
                String strC = openUrl.c();
                if (strC != null && strC.length() != 0) {
                    intentA = intentA.setPackage(openUrl.c());
                    Intrinsics.checkNotNullExpressionValue(intentA, "setPackage(...)");
                }
                if (!(context instanceof Activity)) {
                    intentA = intentA.addFlags(this.a.c());
                }
                Intrinsics.checkNotNullExpressionValue(intentA, "run(...)");
                context.startActivity(intentA);
                return c.b.a;
            }
        }

        /* JADX INFO: renamed from: com.ironsource.sdk.controller.p$b$b, reason: collision with other inner class name */
        public static final class C1124b implements b {
            private final String a;

            public C1124b(String method) {
                Intrinsics.checkNotNullParameter(method, "method");
                this.a = method;
            }

            @Override // com.ironsource.sdk.controller.p.b
            public c a(Context context, Yc openUrl) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(openUrl, "openUrl");
                return new c.a("method " + this.a + " is unsupported");
            }
        }

        public static final class c implements b {
            private final Zc a;
            private final InterfaceC3614h b;

            public c(Zc configurations, InterfaceC3614h intentFactory) {
                Intrinsics.checkNotNullParameter(configurations, "configurations");
                Intrinsics.checkNotNullParameter(intentFactory, "intentFactory");
                this.a = configurations;
                this.b = intentFactory;
            }

            @Override // com.ironsource.sdk.controller.p.b
            public c a(Context context, Yc openUrl) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(openUrl, "openUrl");
                context.startActivity(new OpenUrlActivity.e(this.b).a(this.a.c()).a(openUrl.d()).b(true).c(true).a(context));
                return c.b.a;
            }
        }

        public static final class d implements b {
            private final Zc a;
            private final InterfaceC3614h b;

            public d(Zc configurations, InterfaceC3614h intentFactory) {
                Intrinsics.checkNotNullParameter(configurations, "configurations");
                Intrinsics.checkNotNullParameter(intentFactory, "intentFactory");
                this.a = configurations;
                this.b = intentFactory;
            }

            @Override // com.ironsource.sdk.controller.p.b
            public c a(Context context, Yc openUrl) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(openUrl, "openUrl");
                context.startActivity(new OpenUrlActivity.e(this.b).a(this.a.c()).a(openUrl.d()).a(this.a.d()).b(true).a(context));
                return c.b.a;
            }
        }

        c a(Context context, Yc yc);
    }

    public static abstract class c {

        public static final class a extends c {
            private final String a;

            /* JADX WARN: Multi-variable type inference failed */
            public a() {
                this(null, 1, 0 == true ? 1 : 0);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(String errorMessage) {
                super(null);
                Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
                this.a = errorMessage;
            }

            public /* synthetic */ a(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? "" : str);
            }

            public static /* synthetic */ a a(a aVar, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = aVar.a;
                }
                return aVar.a(str);
            }

            public final a a(String errorMessage) {
                Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
                return new a(errorMessage);
            }

            public final String a() {
                return this.a;
            }

            public final String b() {
                return this.a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof a) && Intrinsics.areEqual(this.a, ((a) obj).a);
            }

            public int hashCode() {
                return this.a.hashCode();
            }

            public String toString() {
                return "Error(errorMessage=" + this.a + ")";
            }
        }

        public static final class b extends c {
            public static final b a = new b();

            private b() {
                super(null);
            }
        }

        private c() {
        }

        public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    c a(Context context, Yc yc);
}
