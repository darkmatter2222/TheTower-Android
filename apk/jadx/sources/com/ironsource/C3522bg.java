package com.ironsource;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdInfo;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: renamed from: com.ironsource.bg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3522bg {
    public static final C3522bg a = new C3522bg();
    private static final String b = ",";
    private static final String c = "[";
    private static final String d = "]";
    private static final int e = 118;

    private C3522bg() {
    }

    private final int a(Context context, int i) {
        Resources resources;
        DisplayMetrics displayMetrics;
        return (int) (i * ((context == null || (resources = context.getResources()) == null || (displayMetrics = resources.getDisplayMetrics()) == null) ? 0.0f : displayMetrics.density));
    }

    private final String a(Object obj) {
        return obj instanceof String ? "'" + obj + "'" : String.valueOf(obj);
    }

    private final String a(List<?> list) {
        Iterator<?> it = list.iterator();
        String str = "[";
        while (it.hasNext()) {
            str = ((Object) str) + a.a(it.next()) + ",";
        }
        return ((Object) StringsKt.removeSuffix(str, (CharSequence) ",")) + "]";
    }

    public final ViewGroup.LayoutParams a(Context context) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12, -1);
        layoutParams.bottomMargin = a(context, e);
        return layoutParams;
    }

    public final AdInfo a(LevelPlayAdInfo levelPlayAdInfo) {
        Intrinsics.checkNotNullParameter(levelPlayAdInfo, "<this>");
        return new AdInfo(new C3533c9(levelPlayAdInfo), null);
    }

    public final IronSourceError a(LevelPlayAdError levelPlayAdError) {
        Intrinsics.checkNotNullParameter(levelPlayAdError, "<this>");
        return new IronSourceError(levelPlayAdError.getErrorCode(), levelPlayAdError.getErrorMessage());
    }

    public final List<Object> a(Object... items) {
        Intrinsics.checkNotNullParameter(items, "items");
        return CollectionsKt.listOf(Arrays.copyOf(items, items.length));
    }

    public final String b(List<? extends Object> methodArgs) {
        Intrinsics.checkNotNullParameter(methodArgs, "methodArgs");
        String str = new String();
        for (Object obj : methodArgs) {
            str = ((Object) (((Object) str) + (obj instanceof List ? a.a((List<?>) obj) : a.a(obj)))) + ",";
        }
        return StringsKt.removeSuffix(str, (CharSequence) ",");
    }
}
