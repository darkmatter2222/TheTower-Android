package com.ironsource.lifecycle;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Bundle;

/* JADX INFO: loaded from: classes4.dex */
public class a extends Fragment {
    private static final String b = "com.ironsource.lifecycle.IronsourceLifecycleFragment";
    private InterfaceC1112a a;

    /* JADX INFO: renamed from: com.ironsource.lifecycle.a$a, reason: collision with other inner class name */
    interface InterfaceC1112a {
        void a(Activity activity);

        void b(Activity activity);

        void c(Activity activity);
    }

    static a a(Activity activity) {
        return (a) activity.getFragmentManager().findFragmentByTag(b);
    }

    private void a(InterfaceC1112a interfaceC1112a) {
        if (interfaceC1112a != null) {
            interfaceC1112a.c(getActivity());
        }
    }

    static void b(Activity activity) {
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager == null || fragmentManager.findFragmentByTag(b) != null) {
            return;
        }
        fragmentManager.beginTransaction().add(new a(), b).commit();
        fragmentManager.executePendingTransactions();
    }

    private void b(InterfaceC1112a interfaceC1112a) {
        if (interfaceC1112a != null) {
            interfaceC1112a.a(getActivity());
        }
    }

    private void c(InterfaceC1112a interfaceC1112a) {
        if (interfaceC1112a != null) {
            interfaceC1112a.b(getActivity());
        }
    }

    void d(InterfaceC1112a interfaceC1112a) {
        this.a = interfaceC1112a;
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        a(this.a);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.a = null;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        b(this.a);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        c(this.a);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
    }
}
