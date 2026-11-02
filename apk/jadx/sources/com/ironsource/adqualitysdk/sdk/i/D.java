package com.ironsource.adqualitysdk.sdk.i;

import android.R;
import android.app.Activity;
import android.graphics.Rect;
import android.view.View;
import android.webkit.WebView;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class D extends AbstractC0993 {
    static {
        StringFog.decrypt("mTZVyaFpc6OoOkT/g0x5rL8wVeGzV2K4\n", "/lMhiMU+FsE=\n");
        StringFog.decrypt("cUF+Rfi+N/5rW0pA+A==\n", "GDIoLJ3JYZc=\n");
        StringFog.decrypt("qLdghavHpw==\n", "z9IU08Ki0Mo=\n");
        StringFog.decrypt("Vc0KQ462WSxc3ChphK8=\n", "Mqh+AOHYLUk=\n");
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static boolean m1842(ArrayList arrayList) {
        View view = (View) AbstractC0993.m2388(arrayList, 0, View.class);
        Rect rect = C.f94;
        view.getHitRect(rect);
        return view.getGlobalVisibleRect(rect);
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static View m1843(ArrayList arrayList) {
        View view = (View) AbstractC0993.m2388(arrayList, 0, View.class);
        Class cls = (Class) AbstractC0993.m2388(arrayList, 1, Class.class);
        boolean zBooleanValue = ((Boolean) AbstractC0993.m2388(arrayList, 2, Boolean.class)).booleanValue();
        Rect rect = C.f94;
        ArrayList arrayList2 = new ArrayList();
        C.m1820(view, cls, null, true, zBooleanValue, null, null, arrayList2);
        if (arrayList2.isEmpty()) {
            return null;
        }
        return (View) arrayList2.get(0);
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static View m1844(ArrayList arrayList) {
        Activity activity = (Activity) AbstractC0993.m2388(arrayList, 0, Activity.class);
        Rect rect = C.f94;
        return activity.findViewById(R.id.content);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x005f  */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static WebView m1845(ArrayList arrayList) {
        int iIntValue;
        List list;
        int i;
        String str;
        Activity activity = (Activity) AbstractC0993.m2388(arrayList, 0, Activity.class);
        List arrayList2 = new ArrayList();
        if (arrayList.size() > 1) {
            iIntValue = ((Integer) AbstractC0993.m2388(arrayList, 1, Integer.class)).intValue();
            if (arrayList.size() > 2) {
                String str2 = (String) AbstractC0993.m2388(arrayList, 2, String.class);
                if (arrayList.size() > 3) {
                    arrayList2 = (List) AbstractC0993.m2388(arrayList, 3, List.class);
                }
                list = arrayList2;
                str = str2;
                i = iIntValue;
            }
            Rect rect = C.f94;
            ArrayList arrayList3 = new ArrayList();
            C.m1823(activity, WebView.class, i, str, true, false, null, list, arrayList3);
            return (WebView) (arrayList3.size() > 0 ? (View) arrayList3.get(0) : null);
        }
        iIntValue = -1;
        list = arrayList2;
        i = iIntValue;
        str = null;
        Rect rect2 = C.f94;
        ArrayList arrayList4 = new ArrayList();
        C.m1823(activity, WebView.class, i, str, true, false, null, list, arrayList4);
        return (WebView) (arrayList4.size() > 0 ? (View) arrayList4.get(0) : null);
    }
}
