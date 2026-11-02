package com.ironsource.mediationsdk.adquality;

import com.ironsource.C3695l9;
import com.ironsource.EnumC3939ye;
import com.ironsource.R6;
import java.util.LinkedHashSet;
import org.json.JSONArray;
import org.json.JSONException;
import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class a {
    public static final b a = new b(null);
    private static EnumC1115a b = EnumC1115a.DONT_INITIALIZE;
    private static boolean c;

    /* JADX INFO: renamed from: com.ironsource.mediationsdk.adquality.a$a, reason: collision with other inner class name */
    public enum EnumC1115a {
        DONT_INITIALIZE(0),
        LEVELPLAY_ONLY(1),
        ALL_MEDIATIONS(2),
        OTHER_ONLY(3);

        private final int a;
        private static final /* synthetic */ EnumEntries h = EnumEntriesKt.enumEntries(a());
        public static final C1116a b = new C1116a(null);

        /* JADX INFO: renamed from: com.ironsource.mediationsdk.adquality.a$a$a, reason: collision with other inner class name */
        public static final class C1116a {
            private C1116a() {
            }

            public /* synthetic */ C1116a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* JADX WARN: Code duplicated, block: B:10:0x0017  */
            /* JADX WARN: Code duplicated, block: B:12:0x001a A[RETURN] */
            public final EnumC1115a a(int i) {
                for (EnumC1115a enumC1115a : EnumC1115a.values()) {
                    if (enumC1115a.c() == i) {
                        if (enumC1115a == null) {
                            return EnumC1115a.DONT_INITIALIZE;
                        }
                        return enumC1115a;
                    }
                }
                enumC1115a = null;
                if (enumC1115a == null) {
                    return EnumC1115a.DONT_INITIALIZE;
                }
                return enumC1115a;
            }
        }

        EnumC1115a(int i) {
            this.a = i;
        }

        public static EnumEntries<EnumC1115a> b() {
            return h;
        }

        public final int c() {
            return this.a;
        }
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final EnumC1115a a() {
            return a.b;
        }

        public final void a(EnumC1115a enumC1115a) {
            Intrinsics.checkNotNullParameter(enumC1115a, "<set-?>");
            a.b = enumC1115a;
        }

        public final void a(boolean z) {
            a.c = z;
        }

        public final boolean b() {
            return a.c;
        }
    }

    public /* synthetic */ class c {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[EnumC1115a.values().length];
            try {
                iArr[EnumC1115a.LEVELPLAY_ONLY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EnumC1115a.ALL_MEDIATIONS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[EnumC1115a.OTHER_ONLY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public final void a(int i) {
        b = EnumC1115a.b.a(i);
    }

    public final void b(boolean z) {
        c = z;
    }

    public final boolean c() throws JSONException {
        EnumC3939ye enumC3939ye;
        JSONArray jSONArrayOptJSONArray = new C3695l9().a().optJSONArray(R6.g0);
        if (jSONArrayOptJSONArray == null) {
            return false;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int length = jSONArrayOptJSONArray.length();
        for (int i = 0; i < length; i++) {
            int i2 = jSONArrayOptJSONArray.getInt(i);
            EnumC3939ye[] enumC3939yeArrValues = EnumC3939ye.values();
            int length2 = enumC3939yeArrValues.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length2) {
                    enumC3939ye = null;
                    break;
                }
                enumC3939ye = enumC3939yeArrValues[i3];
                if (enumC3939ye.c() == i2) {
                    break;
                }
                i3++;
            }
            if (enumC3939ye != null) {
                linkedHashSet.add(enumC3939ye);
            }
        }
        int i4 = c.a[b.ordinal()];
        if (i4 == 1) {
            return linkedHashSet.contains(EnumC3939ye.LEVEL_PLAY_INIT);
        }
        if (i4 != 2) {
            if (i4 == 3) {
                return linkedHashSet.contains(EnumC3939ye.EXTERNAL_MEDIATION_INIT);
            }
        } else if (linkedHashSet.contains(EnumC3939ye.LEVEL_PLAY_INIT) || linkedHashSet.contains(EnumC3939ye.EXTERNAL_MEDIATION_INIT)) {
            return true;
        }
        return false;
    }
}
