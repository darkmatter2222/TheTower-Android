package com.ironsource;

import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes4.dex */
public interface Sd {

    public static final class a implements Sd {
        public static final a a = new a();

        private a() {
        }
    }

    public static final class b implements Sd {
        private final long a;

        private b(long j) {
            this.a = j;
        }

        public /* synthetic */ b(long j, DefaultConstructorMarker defaultConstructorMarker) {
            this(j);
        }

        public static /* synthetic */ b a(b bVar, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                j = bVar.a;
            }
            return bVar.a(j);
        }

        public final long a() {
            return this.a;
        }

        public final b a(long j) {
            return new b(j, null);
        }

        public final long b() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && Duration.m4372equalsimpl0(this.a, ((b) obj).a);
        }

        public int hashCode() {
            return Duration.m4388hashCodeimpl(this.a);
        }

        public String toString() {
            return "Retry(delay=" + Duration.m4407toStringimpl(this.a) + ")";
        }
    }
}
