package com.unity3d.ironsourceads;

import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes5.dex */
public final class AdSize {
    public static final Companion Companion = new Companion(null);
    private final int a;
    private final int b;
    private final String c;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final AdSize banner() {
            return new AdSize(320, 50, "BANNER", null);
        }

        @JvmStatic
        public final AdSize large() {
            return new AdSize(320, 90, "LARGE", null);
        }

        @JvmStatic
        public final AdSize leaderboard() {
            return new AdSize(728, 90, "LEADERBOARD", null);
        }

        @JvmStatic
        public final AdSize mediumRectangle() {
            return new AdSize(300, 250, "MEDIUM_RECTANGLE", null);
        }
    }

    private AdSize(int i, int i2, String str) {
        this.a = i;
        this.b = i2;
        this.c = str;
    }

    public /* synthetic */ AdSize(int i, int i2, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, str);
    }

    @JvmStatic
    public static final AdSize banner() {
        return Companion.banner();
    }

    @JvmStatic
    public static final AdSize large() {
        return Companion.large();
    }

    @JvmStatic
    public static final AdSize leaderboard() {
        return Companion.leaderboard();
    }

    @JvmStatic
    public static final AdSize mediumRectangle() {
        return Companion.mediumRectangle();
    }

    public final int getHeight() {
        return this.b;
    }

    public final String getSizeDescription() {
        return this.c;
    }

    public final int getWidth() {
        return this.a;
    }
}
