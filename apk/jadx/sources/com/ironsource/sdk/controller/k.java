package com.ironsource.sdk.controller;

import android.content.Context;
import android.content.Intent;
import com.ironsource.InterfaceC3596g;
import com.ironsource.InterfaceC3614h;
import com.unity3d.ironsourceads.internal.services.InlineStoreActivity;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public interface k {

    public static final class a implements InterfaceC3596g {
        @Override // com.ironsource.InterfaceC3596g
        public Intent a() {
            return new Intent("android.intent.action.VIEW");
        }
    }

    public static final class b implements InterfaceC3614h {
        @Override // com.ironsource.InterfaceC3614h
        public Intent a(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return new Intent(context, (Class<?>) InlineStoreActivity.class);
        }
    }

    public static final class c implements InterfaceC3614h {
        @Override // com.ironsource.InterfaceC3614h
        public Intent a(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return new Intent(context, (Class<?>) OpenUrlActivity.class);
        }
    }
}
