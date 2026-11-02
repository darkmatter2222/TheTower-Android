package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.support.customtabs.ICustomTabsCallback;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.In, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class BinderC1649In extends ICustomTabsCallback.Stub {
    public Handler A00 = new Handler(Looper.getMainLooper());
    public final /* synthetic */ IX A01;
    public final /* synthetic */ AbstractC1650Io A02;

    public BinderC1649In(AbstractC1650Io abstractC1650Io, IX ix) {
        this.A02 = abstractC1650Io;
        this.A01 = ix;
    }

    @Override // android.support.customtabs.ICustomTabsCallback
    public final void extraCallback(String str, Bundle bundle) throws RemoteException {
        if (this.A01 == null) {
            return;
        }
        this.A00.post(new RunnableC1641If(this, str, bundle));
    }

    @Override // android.support.customtabs.ICustomTabsCallback
    public final Bundle extraCallbackWithResult(String str, Bundle bundle) throws RemoteException {
        if (this.A01 == null) {
            return null;
        }
        return this.A01.A00(str, bundle);
    }

    @Override // android.support.customtabs.ICustomTabsCallback
    public final void onActivityLayout(int i, int i2, int i3, int i4, int i5, Bundle bundle) throws RemoteException {
        if (this.A01 == null) {
            return;
        }
        this.A00.post(new RunnableC1647Il(this, i, i2, i3, i4, i5, bundle));
    }

    @Override // android.support.customtabs.ICustomTabsCallback
    public final void onActivityResized(int i, int i2, Bundle bundle) throws RemoteException {
        if (this.A01 == null) {
            return;
        }
        this.A00.post(new RunnableC1645Ij(this, i, i2, bundle));
    }

    @Override // android.support.customtabs.ICustomTabsCallback
    public final void onMessageChannelReady(Bundle bundle) throws RemoteException {
        if (this.A01 == null) {
            return;
        }
        this.A00.post(new RunnableC1642Ig(this, bundle));
    }

    @Override // android.support.customtabs.ICustomTabsCallback
    public final void onMinimized(Bundle bundle) throws RemoteException {
        if (this.A01 == null) {
            return;
        }
        this.A00.post(new RunnableC1648Im(this, bundle));
    }

    @Override // android.support.customtabs.ICustomTabsCallback
    public final void onNavigationEvent(int i, Bundle bundle) {
        if (this.A01 == null) {
            return;
        }
        this.A00.post(new RunnableC1640Ie(this, i, bundle));
    }

    @Override // android.support.customtabs.ICustomTabsCallback
    public final void onPostMessage(String str, Bundle bundle) throws RemoteException {
        if (this.A01 == null) {
            return;
        }
        this.A00.post(new RunnableC1643Ih(this, str, bundle));
    }

    @Override // android.support.customtabs.ICustomTabsCallback
    public final void onRelationshipValidationResult(int i, Uri uri, boolean z, Bundle bundle) throws RemoteException {
        if (this.A01 == null) {
            return;
        }
        this.A00.post(new RunnableC1644Ii(this, i, uri, z, bundle));
    }

    @Override // android.support.customtabs.ICustomTabsCallback
    public final void onUnminimized(Bundle bundle) throws RemoteException {
        if (this.A01 == null) {
            return;
        }
        this.A00.post(new RunnableC1639Id(this, bundle));
    }

    @Override // android.support.customtabs.ICustomTabsCallback
    public final void onWarmupCompleted(Bundle bundle) throws RemoteException {
        if (this.A01 == null) {
            return;
        }
        this.A00.post(new RunnableC1646Ik(this, bundle));
    }
}
