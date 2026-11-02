package com.google.android.libraries.ads.mobile.sdk.banner;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import com.google.common.base.Splitter;
import com.ironsource.C3635i2;
import java.util.Objects;
import kotlin.f01;
import p005kotlin.Deprecated;
import p005kotlin.Metadata;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.math.MathKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u001b\u0018\u0000 '2\u00020\u0001:\u0001'B\u0019\b\u0016\u0012\u0006\u0010\u0016\u001a\u00020\u0004\u0012\u0006\u0010\u0019\u001a\u00020\u0004¢\u0006\u0004\b%\u0010&J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\u0006J\r\u0010\t\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0011\u001a\u00020\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0016\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\fR\u0017\u0010\u0019\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0014\u001a\u0004\b\u0018\u0010\fR\u0017\u0010\u001c\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\nR\u0017\u0010\u001e\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001b\u001a\u0004\b\u001e\u0010\nR\u0017\u0010 \u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u001f\u0010\u001b\u001a\u0004\b \u0010\nR\u0017\u0010$\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010\u000f¨\u0006("}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", "", "Landroid/content/Context;", "context", "", "getWidthInPixels", "(Landroid/content/Context;)I", "getHeightInPixels", "", "isFluid", "()Z", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", C3635i2.d, "equals", "(Ljava/lang/Object;)Z", "a", "I", "getWidth", "width", "b", "getHeight", "height", "c", "Z", "isAnchoredAdaptiveBanner", "d", "isInlineAdaptiveBanner", "e", "isLargeAnchoredAdaptiveBanner", "f", "Ljava/lang/String;", "getFormatString", "formatString", "<init>", "(II)V", "Companion", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class AdSize {
    public static final AdSize BANNER;
    public static final int BANNER_HEIGHT = 50;
    public static final int BANNER_WIDTH = 320;
    public static final AdSize FLUID;
    public static final int FULL_BANNER_HEIGHT = 60;
    public static final int FULL_BANNER_WIDTH = 468;
    public static final int LARGE_BANNER_HEIGHT = 100;
    public static final int LARGE_BANNER_WIDTH = 320;
    public static final int LEADERBOARD_HEIGHT = 90;
    public static final int LEADERBOARD_WIDTH = 728;
    public static final int MEDIUM_RECTANGLE_HEIGHT = 250;
    public static final int MEDIUM_RECTANGLE_WIDTH = 300;

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final int width;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final int height;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final boolean isAnchoredAdaptiveBanner;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final boolean isInlineAdaptiveBanner;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private final boolean isLargeAnchoredAdaptiveBanner;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private final String formatString;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(0);
    public static final AdSize FULL_BANNER = new AdSize(468, 60);
    public static final AdSize LARGE_BANNER = new AdSize(320, 100);
    public static final AdSize LEADERBOARD = new AdSize(728, 90);
    public static final AdSize MEDIUM_RECTANGLE = new AdSize(300, 250);

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0006\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0018\b\u0086\u0003\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\t\u0010\bJ\u001f\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\n\u0010\bJ\u001f\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u000b\u0010\bJ\u001f\u0010\f\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\f\u0010\bJ\u001f\u0010\r\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\r\u0010\bJ\u001f\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u000e\u0010\bJ\u001f\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u000f\u0010\bJ\u001f\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0010\u0010\bJ\u001f\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0015\u001a\u00020\u00148\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001b\u0010\u0018R\u0014\u0010\u001c\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001c\u0010\u0018R\u0014\u0010\u001e\u001a\u00020\u001d8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010 \u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b \u0010\u001aR\u0014\u0010!\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b!\u0010\u001aR\u0014\u0010\"\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\"\u0010\u0018R\u0014\u0010#\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b#\u0010\u0018R\u0014\u0010$\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b$\u0010\u0018R\u0014\u0010%\u001a\u00020\u00148\u0002X\u0082T¢\u0006\u0006\n\u0004\b%\u0010\u0016R\u0014\u0010&\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b&\u0010\u001aR\u0014\u0010'\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b'\u0010\u0018R\u0014\u0010(\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b(\u0010\u0018R\u0014\u0010)\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b)\u0010\u001aR\u0014\u0010*\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b*\u0010\u0018R\u0014\u0010+\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b+\u0010\u0018R\u0014\u0010,\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b,\u0010\u0018R\u0014\u0010-\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b-\u0010\u0018R\u0014\u0010.\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b.\u0010\u0018R\u0014\u0010/\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b/\u0010\u001aR\u0014\u00100\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b0\u0010\u0018R\u0014\u00101\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b1\u0010\u0018R\u0014\u00102\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b2\u0010\u0018R\u0014\u00103\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b3\u0010\u0018R\u0014\u00104\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b4\u0010\u0018¨\u00065"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;", "", "Landroid/content/Context;", "context", "", "width", "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", "getLargePortraitAnchoredAdaptiveBannerAdSize", "(Landroid/content/Context;I)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", "getLargeLandscapeAnchoredAdaptiveBannerAdSize", "getLargeAnchoredAdaptiveBannerAdSize", "getPortraitAnchoredAdaptiveBannerAdSize", "getLandscapeAnchoredAdaptiveBannerAdSize", "getCurrentOrientationAnchoredAdaptiveBannerAdSize", "getPortraitInlineAdaptiveBannerAdSize", "getLandscapeInlineAdaptiveBannerAdSize", "getCurrentOrientationInlineAdaptiveBannerAdSize", "maxHeight", "getInlineAdaptiveBannerAdSize", "(II)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", "", "ADAPTIVE_MAXIMUM_PERCENT_HEIGHT", "D", "ANCHORED_ADAPTIVE_MAXIMUM_HEIGHT_PIXELS", "I", "BANNER", "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", "BANNER_HEIGHT", "BANNER_WIDTH", "", "CUSTOM_AD_SIZE_SUFFIX", "Ljava/lang/String;", "FLUID", "FULL_BANNER", "FULL_BANNER_HEIGHT", "FULL_BANNER_WIDTH", "LARGE_ANCHORED_ADAPTIVE_MAXIMUM_HEIGHT_PIXELS", "LARGE_ANCHORED_ADAPTIVE_MAXIMUM_PERCENT_HEIGHT", "LARGE_BANNER", "LARGE_BANNER_HEIGHT", "LARGE_BANNER_WIDTH", "LEADERBOARD", "LEADERBOARD_HEIGHT", "LEADERBOARD_WIDTH", "MATCH_PARENT", "MAXIMALLY_UPSCALED_BANNER_HEIGHT", "MAXIMALLY_UPSCALED_FULL_BANNER_HEIGHT", "MEDIUM_RECTANGLE", "MEDIUM_RECTANGLE_HEIGHT", "MEDIUM_RECTANGLE_WIDTH", "MINIMUM_ADAPTIVE_BANNER_HEIGHT", "MINIMUM_RECOMMENDED_INLINE_HEIGHT", "WRAP_CONTENT", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(int i) {
            this();
        }

        private static int a(Context context, int i) {
            Resources resources = context.getApplicationContext().getResources();
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            return (i == resources.getConfiguration().orientation || i == 0) ? MathKt.roundToInt(displayMetrics.heightPixels / displayMetrics.density) : MathKt.roundToInt(displayMetrics.widthPixels / displayMetrics.density);
        }

        private static AdSize a(Context context, int i, int i2) {
            int iRoundToInt;
            int iMin = Math.min(90, MathKt.roundToInt(((double) a(context, i2)) * 0.15d));
            if (i > 655) {
                iRoundToInt = MathKt.roundToInt((i / 728.0f) * 90);
            } else if (i > 632) {
                iRoundToInt = 81;
            } else if (i > 526) {
                iRoundToInt = MathKt.roundToInt((i / 468.0f) * 60);
            } else {
                iRoundToInt = i > 432 ? 68 : MathKt.roundToInt((i / 320.0f) * 50);
            }
            return new AdSize(i, Math.max(Math.min(iRoundToInt, iMin), 50), null, true, false, false, 52);
        }

        private static AdSize b(Context context, int i, int i2) {
            return new AdSize(i, Math.max(Math.min(Math.max(100, MathKt.roundToInt((i / 320.0f) * 100)), Math.min(150, MathKt.roundToInt(((double) a(context, i2)) * 0.2d))), 50), null, false, false, true, 28);
        }

        @Deprecated(message = "Use AdSize.getLargeAnchoredAdaptiveBannerAdSize instead.")
        @JvmStatic
        public final AdSize getCurrentOrientationAnchoredAdaptiveBannerAdSize(Context context, int width) {
            Intrinsics.checkNotNullParameter(context, "context");
            return a(context, width, 0);
        }

        @JvmStatic
        public final AdSize getCurrentOrientationInlineAdaptiveBannerAdSize(Context context, int width) {
            Intrinsics.checkNotNullParameter(context, "context");
            return getInlineAdaptiveBannerAdSize(width, a(context, 0));
        }

        @JvmStatic
        public final AdSize getInlineAdaptiveBannerAdSize(int width, int maxHeight) {
            if (maxHeight < 50) {
                Splitter splitter = f01.a;
                f01.c("The maximum height set for the inline adaptive ad size was " + maxHeight + " dp, which is below the minimum recommended value of 50 dp.", null);
            }
            if (maxHeight < 1) {
                throw new IllegalArgumentException(("Invalid maxHeight for inline adaptive banner: " + maxHeight).toString());
            }
            return new AdSize(width, maxHeight, null, false, true, false, 44);
        }

        @Deprecated(message = "Use AdSize.getLargeLandscapeAnchoredAdaptiveBannerAdSize instead.")
        @JvmStatic
        public final AdSize getLandscapeAnchoredAdaptiveBannerAdSize(Context context, int width) {
            Intrinsics.checkNotNullParameter(context, "context");
            return a(context, width, 2);
        }

        @JvmStatic
        public final AdSize getLandscapeInlineAdaptiveBannerAdSize(Context context, int width) {
            Intrinsics.checkNotNullParameter(context, "context");
            return getInlineAdaptiveBannerAdSize(width, a(context, 2));
        }

        @JvmStatic
        public final AdSize getLargeAnchoredAdaptiveBannerAdSize(Context context, int width) {
            Intrinsics.checkNotNullParameter(context, "context");
            return b(context, width, 0);
        }

        @JvmStatic
        public final AdSize getLargeLandscapeAnchoredAdaptiveBannerAdSize(Context context, int width) {
            Intrinsics.checkNotNullParameter(context, "context");
            return b(context, width, 2);
        }

        @JvmStatic
        public final AdSize getLargePortraitAnchoredAdaptiveBannerAdSize(Context context, int width) {
            Intrinsics.checkNotNullParameter(context, "context");
            return b(context, width, 1);
        }

        @Deprecated(message = "Use AdSize.getLargePortraitAnchoredAdaptiveBannerAdSize instead.")
        @JvmStatic
        public final AdSize getPortraitAnchoredAdaptiveBannerAdSize(Context context, int width) {
            Intrinsics.checkNotNullParameter(context, "context");
            return a(context, width, 1);
        }

        @JvmStatic
        public final AdSize getPortraitInlineAdaptiveBannerAdSize(Context context, int width) {
            Intrinsics.checkNotNullParameter(context, "context");
            return getInlineAdaptiveBannerAdSize(width, a(context, 1));
        }
    }

    static {
        boolean z = false;
        boolean z2 = false;
        BANNER = new AdSize(320, 50, "320x50_mb", false, z2, z, 56);
        FLUID = new AdSize(-3, -4, "320x50_mb", z2, z, false, 56);
    }

    public AdSize(int i, int i2) {
        this(i, i2, null, false, false, false, 56);
    }

    private AdSize(int i, int i2, String str, boolean z, boolean z2, boolean z3) {
        this.width = i;
        this.height = i2;
        this.isAnchoredAdaptiveBanner = z;
        this.isInlineAdaptiveBanner = z2;
        this.isLargeAnchoredAdaptiveBanner = z3;
        this.formatString = str == null ? i + "x" + i2 + "_as" : str;
        if (i < 0 && i != -3) {
            throw new IllegalArgumentException(("Invalid width for AdSize: " + i).toString());
        }
        if (i2 < 0 && i2 != -4) {
            throw new IllegalArgumentException(("Invalid height for AdSize: " + i2).toString());
        }
        if (z2 && z) {
            throw new IllegalArgumentException("AdSize cannot be both inline and anchored adaptive".toString());
        }
        if (z2 && z3) {
            throw new IllegalArgumentException("AdSize cannot be both inline and large anchored adaptive".toString());
        }
        if (z && z3) {
            throw new IllegalArgumentException("AdSize cannot be both anchored and large anchored adaptive".toString());
        }
        if (z2 && i2 < 1) {
            throw new IllegalArgumentException("An inline AdSize must have a positive height".toString());
        }
    }

    /* synthetic */ AdSize(int i, int i2, String str, boolean z, boolean z2, boolean z3, int i3) {
        this(i, i2, (i3 & 4) != 0 ? null : str, (i3 & 8) != 0 ? false : z, (i3 & 16) != 0 ? false : z2, (i3 & 32) != 0 ? false : z3);
    }

    private static int a(Context context, int i) {
        if (i == -4 || i == -3) {
            return -1;
        }
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(context, "<this>");
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Intrinsics.checkNotNullExpressionValue(displayMetrics, "getDisplayMetrics(...)");
        return (int) Math.ceil(TypedValue.applyDimension(1, i, displayMetrics));
    }

    @Deprecated(message = "Use AdSize.getLargeAnchoredAdaptiveBannerAdSize instead.")
    @JvmStatic
    public static final AdSize getCurrentOrientationAnchoredAdaptiveBannerAdSize(Context context, int i) {
        return INSTANCE.getCurrentOrientationAnchoredAdaptiveBannerAdSize(context, i);
    }

    @JvmStatic
    public static final AdSize getCurrentOrientationInlineAdaptiveBannerAdSize(Context context, int i) {
        return INSTANCE.getCurrentOrientationInlineAdaptiveBannerAdSize(context, i);
    }

    @JvmStatic
    public static final AdSize getInlineAdaptiveBannerAdSize(int i, int i2) {
        return INSTANCE.getInlineAdaptiveBannerAdSize(i, i2);
    }

    @Deprecated(message = "Use AdSize.getLargeLandscapeAnchoredAdaptiveBannerAdSize instead.")
    @JvmStatic
    public static final AdSize getLandscapeAnchoredAdaptiveBannerAdSize(Context context, int i) {
        return INSTANCE.getLandscapeAnchoredAdaptiveBannerAdSize(context, i);
    }

    @JvmStatic
    public static final AdSize getLandscapeInlineAdaptiveBannerAdSize(Context context, int i) {
        return INSTANCE.getLandscapeInlineAdaptiveBannerAdSize(context, i);
    }

    @JvmStatic
    public static final AdSize getLargeAnchoredAdaptiveBannerAdSize(Context context, int i) {
        return INSTANCE.getLargeAnchoredAdaptiveBannerAdSize(context, i);
    }

    @JvmStatic
    public static final AdSize getLargeLandscapeAnchoredAdaptiveBannerAdSize(Context context, int i) {
        return INSTANCE.getLargeLandscapeAnchoredAdaptiveBannerAdSize(context, i);
    }

    @JvmStatic
    public static final AdSize getLargePortraitAnchoredAdaptiveBannerAdSize(Context context, int i) {
        return INSTANCE.getLargePortraitAnchoredAdaptiveBannerAdSize(context, i);
    }

    @Deprecated(message = "Use AdSize.getLargePortraitAnchoredAdaptiveBannerAdSize instead.")
    @JvmStatic
    public static final AdSize getPortraitAnchoredAdaptiveBannerAdSize(Context context, int i) {
        return INSTANCE.getPortraitAnchoredAdaptiveBannerAdSize(context, i);
    }

    @JvmStatic
    public static final AdSize getPortraitInlineAdaptiveBannerAdSize(Context context, int i) {
        return INSTANCE.getPortraitInlineAdaptiveBannerAdSize(context, i);
    }

    public boolean equals(Object other) {
        if (!(other instanceof AdSize)) {
            return false;
        }
        AdSize adSize = (AdSize) other;
        return this.width == adSize.width && this.height == adSize.height && Intrinsics.areEqual(this.formatString, adSize.formatString);
    }

    public final String getFormatString() {
        return this.formatString;
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getHeightInPixels(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return a(context, this.height);
    }

    public final int getWidth() {
        return this.width;
    }

    public final int getWidthInPixels(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return a(context, this.width);
    }

    public int hashCode() {
        return Objects.hash(this.formatString, Boolean.valueOf(isFluid()));
    }

    /* JADX INFO: renamed from: isAnchoredAdaptiveBanner, reason: from getter */
    public final boolean getIsAnchoredAdaptiveBanner() {
        return this.isAnchoredAdaptiveBanner;
    }

    public final boolean isFluid() {
        return this.width == -3 && this.height == -4;
    }

    /* JADX INFO: renamed from: isInlineAdaptiveBanner, reason: from getter */
    public final boolean getIsInlineAdaptiveBanner() {
        return this.isInlineAdaptiveBanner;
    }

    /* JADX INFO: renamed from: isLargeAnchoredAdaptiveBanner, reason: from getter */
    public final boolean getIsLargeAnchoredAdaptiveBanner() {
        return this.isLargeAnchoredAdaptiveBanner;
    }

    public String toString() {
        return this.formatString + " " + (isFluid() ? "fluid" : "");
    }
}
