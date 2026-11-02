package kotlin;

import android.R;
import android.content.Context;
import android.util.TypedValue;
import android.view.ViewGroup;
import android.widget.TableRow;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseAdRequestBuilder;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class sh2 {
    public final Context a;
    public final o21 b;
    public final f0 c;
    public final if1 d;
    public final cw2 e;
    public final cw2 f;
    public final cw2 g;
    public final cw2 h;
    public final cw2 i;
    public final Mutex j;
    public final LinkedHashMap k;

    public sh2(Context applicationContext, o21 gmaUtil, f0 activityTracker, if1 inspectorManager, dw2 appOpenComponentProvider, dw2 bannerComponentProvider, dw2 interstitialComponentProvider, dw2 nativeComponentProvider, dw2 rewardedComponentProvider) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(inspectorManager, "inspectorManager");
        Intrinsics.checkNotNullParameter(appOpenComponentProvider, "appOpenComponentProvider");
        Intrinsics.checkNotNullParameter(bannerComponentProvider, "bannerComponentProvider");
        Intrinsics.checkNotNullParameter(interstitialComponentProvider, "interstitialComponentProvider");
        Intrinsics.checkNotNullParameter(nativeComponentProvider, "nativeComponentProvider");
        Intrinsics.checkNotNullParameter(rewardedComponentProvider, "rewardedComponentProvider");
        this.a = applicationContext;
        this.b = gmaUtil;
        this.c = activityTracker;
        this.d = inspectorManager;
        this.e = appOpenComponentProvider;
        this.f = bannerComponentProvider;
        this.g = interstitialComponentProvider;
        this.h = nativeComponentProvider;
        this.i = rewardedComponentProvider;
        this.j = MutexKt.Mutex$default(false, 1, null);
        this.k = new LinkedHashMap();
    }

    public static final TextView a(sh2 sh2Var, Context context, String str, String str2) {
        sh2Var.getClass();
        TextView textView = new TextView(context);
        textView.setTag(str2);
        textView.setText(str);
        textView.setTextAppearance(R.style.TextAppearance.Small);
        textView.setTextColor(-9210245);
        ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new TableRow.LayoutParams();
        } else {
            Intrinsics.checkNotNull(layoutParams);
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(layoutParams);
        marginLayoutParams.width = -2;
        marginLayoutParams.height = -2;
        marginLayoutParams.bottomMargin = (int) TypedValue.applyDimension(1, 0.0f, textView.getResources().getDisplayMetrics());
        textView.setLayoutParams(marginLayoutParams);
        return textView;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x009f  */
    /* JADX WARN: Code duplicated, block: B:36:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:39:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:40:0x00be  */
    /* JADX WARN: Code duplicated, block: B:42:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:43:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:45:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:46:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:48:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:49:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:51:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:52:0x0114  */
    /* JADX WARN: Code duplicated, block: B:54:0x0118  */
    /* JADX WARN: Code duplicated, block: B:55:0x0135  */
    /* JADX WARN: Code duplicated, block: B:57:0x0139  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0164, code lost:
    
        if (kotlin.if1.d(r10, r0) == r1) goto L60;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object a(kotlin.sh2 r10, kotlin.uh2 r11, p005kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 367
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.sh2.a(ads_mobile_sdk.sh2, ads_mobile_sdk.uh2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(AdRequest adRequest, BaseAdRequestBuilder baseAdRequestBuilder) {
        Iterator<T> it = adRequest.getKeywords().iterator();
        while (it.hasNext()) {
            baseAdRequestBuilder.addKeyword((String) it.next());
        }
        baseAdRequestBuilder.setGoogleExtrasBundle(adRequest.getGoogleExtrasBundle());
        for (Map.Entry<String, String> entry : adRequest.getCustomTargeting().entrySet()) {
            baseAdRequestBuilder.putCustomTargeting(entry.getKey(), entry.getValue());
        }
        String contentUrl = adRequest.getContentUrl();
        if (contentUrl != null) {
        }
        baseAdRequestBuilder.setNeighboringContentUrls(adRequest.getNeighboringContentUrls());
        String publisherProvidedId = adRequest.getPublisherProvidedId();
        if (publisherProvidedId != null) {
        }
        Iterator<T> it2 = adRequest.getCategoryExclusions().iterator();
        while (it2.hasNext()) {
            baseAdRequestBuilder.addCategoryExclusion((String) it2.next());
        }
    }

    public static final TextView b(sh2 sh2Var, Context context, String str, String str2) {
        sh2Var.getClass();
        TextView textView = new TextView(context);
        textView.setTag(str2);
        textView.setText(str);
        textView.setTextAppearance(R.style.TextAppearance.Medium);
        textView.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new TableRow.LayoutParams();
        } else {
            Intrinsics.checkNotNull(layoutParams);
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(layoutParams);
        marginLayoutParams.width = -2;
        marginLayoutParams.height = -2;
        marginLayoutParams.bottomMargin = (int) TypedValue.applyDimension(1, 12.0f, textView.getResources().getDisplayMetrics());
        textView.setLayoutParams(marginLayoutParams);
        return textView;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0102, code lost:
    
        if (r11.a(r0) == r1) goto L43;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.g03 r11, kotlin.uh2 r12, p005kotlin.coroutines.Continuation r13) {
        /*
            Method dump skipped, instruction units count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.sh2.a(ads_mobile_sdk.g03, ads_mobile_sdk.uh2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object a(uh2 uh2Var, Continuation continuation) {
        j53 j53Var = uh2Var.b;
        AdRequest adRequestBuild = uh2Var.d;
        if (adRequestBuild == null) {
            adRequestBuild = new AdRequest.Builder(uh2Var.a).build();
        }
        li0 li0Var = (li0) ((s03) ((li0) ((s03) ((li0) ((s03) this.i.get())).a(j53Var))).a(adRequestBuild));
        li0Var.c = adRequestBuild;
        Object objA = a(((li0) ((s03) ((li0) ((s03) li0Var.b(true))).a(false))).b(), uh2Var, continuation);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }
}
