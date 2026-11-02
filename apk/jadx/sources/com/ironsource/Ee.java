package com.ironsource;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public interface Ee {

    public static final class a implements Ee {
        private final C3829se a;

        public a(C3829se error) {
            Intrinsics.checkNotNullParameter(error, "error");
            this.a = error;
        }

        public static /* synthetic */ a a(a aVar, C3829se c3829se, int i, Object obj) {
            if ((i & 1) != 0) {
                c3829se = aVar.a;
            }
            return aVar.a(c3829se);
        }

        public final a a(C3829se error) {
            Intrinsics.checkNotNullParameter(error, "error");
            return new a(error);
        }

        public final C3829se a() {
            return this.a;
        }

        public final C3829se b() {
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
            return "Failure(error=" + this.a + ")";
        }
    }

    public static final class b implements Ee {
        private final Ae a;

        public b(Ae sdkInitResponse) {
            Intrinsics.checkNotNullParameter(sdkInitResponse, "sdkInitResponse");
            this.a = sdkInitResponse;
        }

        public static /* synthetic */ b a(b bVar, Ae ae, int i, Object obj) {
            if ((i & 1) != 0) {
                ae = bVar.a;
            }
            return bVar.a(ae);
        }

        public final Ae a() {
            return this.a;
        }

        public final b a(Ae sdkInitResponse) {
            Intrinsics.checkNotNullParameter(sdkInitResponse, "sdkInitResponse");
            return new b(sdkInitResponse);
        }

        public final Ae b() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && Intrinsics.areEqual(this.a, ((b) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return "Success(sdkInitResponse=" + this.a + ")";
        }
    }
}
