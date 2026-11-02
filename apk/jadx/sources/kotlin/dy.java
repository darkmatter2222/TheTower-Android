package kotlin;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import com.google.android.libraries.ads.mobile.sdk.R;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class dy extends FrameLayout {
    public Function0 a;
    public final ImageButton b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Code duplicated, block: B:12:0x003f  */
    /* JADX WARN: Code duplicated, block: B:13:0x0048  */
    public dy(Context context, String closeButtonAsset, ey config) {
        Drawable drawable;
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(closeButtonAsset, "closeButtonAsset");
        Intrinsics.checkNotNullParameter(config, "config");
        this.b = new ImageButton(context);
        Resources resources = context.getResources();
        Drawable drawable2 = null;
        try {
            if (!Intrinsics.areEqual(closeButtonAsset, "white")) {
                drawable = Intrinsics.areEqual(closeButtonAsset, "black") ? resources.getDrawable(R.drawable.admob_close_button_black_circle_white_cross, null) : drawable;
                if (drawable2 == null) {
                    this.b.setImageResource(android.R.drawable.btn_dialog);
                } else {
                    this.b.setImageDrawable(drawable2);
                    this.b.setScaleType(ImageView.ScaleType.CENTER);
                }
                this.b.setBackgroundColor(0);
                this.b.setPadding(zn0.a(context, config.a), zn0.a(context, 0), zn0.a(context, config.b), zn0.a(context, config.c));
                this.b.setContentDescription("Fullscreen ad close button");
                setOnClickListener(new View.OnClickListener() { // from class: ads_mobile_sdk.dy$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        dy.a(this.f$0, view);
                    }
                });
                this.b.setOnClickListener(new View.OnClickListener() { // from class: ads_mobile_sdk.dy$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        dy.b(this.f$0, view);
                    }
                });
                addView(this.b, new FrameLayout.LayoutParams(zn0.a(context, config.a + 50 + config.b), zn0.a(context, config.c + 50)));
            }
            drawable = resources.getDrawable(R.drawable.admob_close_button_white_circle_black_cross, null);
            drawable2 = drawable;
        } catch (Resources.NotFoundException unused) {
        }
        if (drawable2 == null) {
            this.b.setImageResource(android.R.drawable.btn_dialog);
        } else {
            this.b.setImageDrawable(drawable2);
            this.b.setScaleType(ImageView.ScaleType.CENTER);
        }
        this.b.setBackgroundColor(0);
        this.b.setPadding(zn0.a(context, config.a), zn0.a(context, 0), zn0.a(context, config.b), zn0.a(context, config.c));
        this.b.setContentDescription("Fullscreen ad close button");
        setOnClickListener(new View.OnClickListener() { // from class: ads_mobile_sdk.dy$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dy.a(this.f$0, view);
            }
        });
        this.b.setOnClickListener(new View.OnClickListener() { // from class: ads_mobile_sdk.dy$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dy.b(this.f$0, view);
            }
        });
        addView(this.b, new FrameLayout.LayoutParams(zn0.a(context, config.a + 50 + config.b), zn0.a(context, config.c + 50)));
    }

    public static final void a(dy this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Function0 function0 = this$0.a;
        if (function0 != null) {
            function0.invoke();
        }
    }

    public static final void b(dy this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Function0 function0 = this$0.a;
        if (function0 != null) {
            function0.invoke();
        }
    }
}
