package com.ironsource;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.webkit.WebView;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.na, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3732na extends WebView implements InterfaceC3953za {
    private InterfaceC3935ya a;
    private Xc b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3732na(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3732na(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3732na(Context context, AttributeSet attrs, int i) {
        super(context, attrs, i);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C3732na(Context context, InterfaceC3935ya javascriptEngine) {
        this(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(javascriptEngine, "javascriptEngine");
        this.a = javascriptEngine;
    }

    public /* synthetic */ C3732na(Context context, InterfaceC3935ya interfaceC3935ya, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? new InterfaceC3935ya.a(0, 1, null) : interfaceC3935ya);
    }

    public final void a() {
        this.b = null;
    }

    public final void a(Xc xc) {
        this.b = xc;
    }

    @Override // com.ironsource.InterfaceC3953za
    public void a(String script) {
        Intrinsics.checkNotNullParameter(script, "script");
        InterfaceC3935ya interfaceC3935ya = this.a;
        InterfaceC3935ya interfaceC3935ya2 = null;
        if (interfaceC3935ya == null) {
            Intrinsics.throwUninitializedPropertyAccessException("javascriptEngine");
            interfaceC3935ya = null;
        }
        if (!interfaceC3935ya.a()) {
            InterfaceC3935ya interfaceC3935ya3 = this.a;
            if (interfaceC3935ya3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("javascriptEngine");
                interfaceC3935ya3 = null;
            }
            interfaceC3935ya3.a(this);
        }
        InterfaceC3935ya interfaceC3935ya4 = this.a;
        if (interfaceC3935ya4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("javascriptEngine");
        } else {
            interfaceC3935ya2 = interfaceC3935ya4;
        }
        interfaceC3935ya2.a(script);
    }

    @Override // android.webkit.WebView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent event) {
        Xc xc;
        Intrinsics.checkNotNullParameter(event, "event");
        if (i == 4 && (xc = this.b) != null && xc.onBackButtonPressed()) {
            return true;
        }
        return super.onKeyDown(i, event);
    }
}
