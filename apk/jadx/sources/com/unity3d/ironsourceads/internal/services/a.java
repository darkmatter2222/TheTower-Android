package com.unity3d.ironsourceads.internal.services;

import android.content.Context;
import com.ironsource.C3824s9;
import com.ironsource.EnumC3862u9;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public interface a {

    /* JADX INFO: renamed from: com.unity3d.ironsourceads.internal.services.a$a, reason: collision with other inner class name */
    public static abstract class AbstractC1144a {

        /* JADX INFO: renamed from: com.unity3d.ironsourceads.internal.services.a$a$a, reason: collision with other inner class name */
        public static final class C1145a extends AbstractC1144a {
            private final String a;

            /* JADX WARN: Multi-variable type inference failed */
            public C1145a() {
                this(null, 1, 0 == true ? 1 : 0);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C1145a(String errorMessage) {
                super(null);
                Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
                this.a = errorMessage;
            }

            public /* synthetic */ C1145a(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? "" : str);
            }

            public static /* synthetic */ C1145a a(C1145a c1145a, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = c1145a.a;
                }
                return c1145a.a(str);
            }

            public final C1145a a(String errorMessage) {
                Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
                return new C1145a(errorMessage);
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
                return (obj instanceof C1145a) && Intrinsics.areEqual(this.a, ((C1145a) obj).a);
            }

            public int hashCode() {
                return this.a.hashCode();
            }

            public String toString() {
                return "Error(errorMessage=" + this.a + ")";
            }
        }

        /* JADX INFO: renamed from: com.unity3d.ironsourceads.internal.services.a$a$b */
        public static final class b extends AbstractC1144a {
            public static final b a = new b();

            private b() {
                super(null);
            }
        }

        private AbstractC1144a() {
        }

        public /* synthetic */ AbstractC1144a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static /* synthetic */ AbstractC1144a a(a aVar, Context context, EnumC3862u9 enumC3862u9, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: destroy");
        }
        if ((i & 2) != 0) {
            enumC3862u9 = EnumC3862u9.APP_ACTIVITY;
        }
        return aVar.a(context, enumC3862u9);
    }

    AbstractC1144a a(Context context, C3824s9 c3824s9);

    AbstractC1144a a(Context context, EnumC3862u9 enumC3862u9);
}
