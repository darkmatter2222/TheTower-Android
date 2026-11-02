package com.google.android.libraries.ads.mobile.sdk.common;

import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.ComponentActivity;
import com.google.common.base.Splitter;
import java.util.concurrent.CancellationException;
import kotlin.a01;
import kotlin.as3;
import kotlin.f01;
import kotlin.h0;
import kotlin.i0;
import kotlin.k0;
import kotlin.ur3;
import kotlin.vf0;
import kotlin.ws3;
import kotlin.zz0;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import p005kotlin.Metadata;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/AdActivity;", "Landroidx/activity/ComponentActivity;", "<init>", "()V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class AdActivity extends ComponentActivity {
    private h0 a;

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        h0 h0Var = this.a;
        if (h0Var != null) {
            h0Var.onConfigurationChanged(newConfig);
        }
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected final void onCreate(Bundle bundle) {
        Job job;
        Bundle bundle2;
        super.onCreate(bundle);
        a01.a.getClass();
        if (!zz0.b.b()) {
            finish();
            return;
        }
        Bundle extras = getIntent().getExtras();
        Integer numValueOf = (extras == null || (bundle2 = extras.getBundle("ad_activity_delegate_bundle")) == null) ? null : Integer.valueOf(bundle2.getInt("ad_activity_delegate"));
        if (numValueOf == null) {
            ((as3) ((ur3) ((vf0) zz0.a()).F.get())).a("AdActivityMissingDelegateKey", (Throwable) new Exception("AdActivityMissingDelegateKey"));
            Splitter splitter = f01.a;
            f01.a("Could not retrieve AdActivityDelegate key", (Throwable) null);
            finish();
            return;
        }
        i0 i0Var = (i0) ((k0) ((vf0) zz0.a()).S.get()).d.remove(numValueOf);
        if (i0Var != null && (job = i0Var.b) != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        h0 h0Var = i0Var != null ? i0Var.a : null;
        if (h0Var == null) {
            ((as3) ((ur3) ((vf0) zz0.a()).F.get())).a("AdActivityMissingDelegate", (Throwable) new Exception("AdActivityMissingDelegate"));
            Splitter splitter2 = f01.a;
            f01.a("No AdActivityDelegate associated with key", (Throwable) null);
            finish();
            return;
        }
        this.a = h0Var;
        requestWindowFeature(1);
        try {
            Intrinsics.checkNotNullExpressionValue(getWindow().getDecorView(), "getDecorView(...)");
            h0Var.a(this);
        } catch (Exception e) {
            a01.a.getClass();
            ((as3) ((ur3) ((vf0) zz0.a()).F.get())).a("AdActivityDecorViewWorkaround", (Throwable) e);
            Splitter splitter3 = f01.a;
            f01.a("Failed to get DecorView", e);
            CoroutineScope coroutineScope = (CoroutineScope) ((vf0) zz0.a()).u.get();
            a block = new a(h0Var, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onDestroy() {
        h0 h0Var = this.a;
        if (h0Var != null) {
            h0Var.onDestroy();
        }
        this.a = null;
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected final void onPause() {
        h0 h0Var = this.a;
        if (h0Var != null) {
            h0Var.onPause();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    protected final void onRestart() {
        super.onRestart();
        h0 h0Var = this.a;
        if (h0Var != null) {
            h0Var.c();
        }
    }

    @Override // android.app.Activity
    protected final void onResume() {
        super.onResume();
        h0 h0Var = this.a;
        if (h0Var != null) {
            h0Var.onResume();
        }
    }

    @Override // android.app.Activity
    protected final void onStart() {
        super.onStart();
        h0 h0Var = this.a;
        if (h0Var != null) {
            h0Var.a();
        }
    }

    @Override // android.app.Activity
    protected final void onStop() {
        h0 h0Var = this.a;
        if (h0Var != null) {
            h0Var.onStop();
        }
        super.onStop();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected final void onUserLeaveHint() {
        super.onUserLeaveHint();
        h0 h0Var = this.a;
        if (h0Var != null) {
            h0Var.b();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void setContentView(int i) {
        super.setContentView(i);
        h0 h0Var = this.a;
        if (h0Var != null) {
            h0Var.e();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void setContentView(View view) {
        super.setContentView(view);
        h0 h0Var = this.a;
        if (h0Var != null) {
            h0Var.e();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        h0 h0Var = this.a;
        if (h0Var != null) {
            h0Var.e();
        }
    }
}
