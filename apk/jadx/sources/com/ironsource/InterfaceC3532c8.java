package com.ironsource;

import com.ironsource.environment.thread.IronSourceThreadManager;
import com.ironsource.mediationsdk.logger.IronLog;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.c8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public interface InterfaceC3532c8<T> {

    /* JADX INFO: renamed from: com.ironsource.c8$a */
    public static class a<ListenerType> implements InterfaceC3532c8<ListenerType> {
        private ListenerType a;

        /* JADX INFO: renamed from: com.ironsource.c8$a$a, reason: collision with other inner class name */
        public static final class C1103a extends com.ironsource.environment.thread.a {
            final /* synthetic */ Runnable b;

            C1103a(Runnable runnable) {
                this.b = runnable;
            }

            @Override // com.ironsource.environment.thread.a
            public void a() {
                this.b.run();
            }
        }

        public static /* synthetic */ void a(a aVar, Runnable runnable, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: executeOnUIThreadIfConditionMet");
            }
            if ((i & 2) != 0) {
                z = true;
            }
            aVar.a(runnable, z);
        }

        public final ListenerType a() {
            return this.a;
        }

        @Override // com.ironsource.InterfaceC3532c8
        public void a(ListenerType listenertype) {
            this.a = listenertype;
        }

        public final void a(Runnable runnable, boolean z) {
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            if (z) {
                IronSourceThreadManager.postOnUiThreadTask$default(IronSourceThreadManager.INSTANCE, new C1103a(runnable), 0L, 2, null);
            }
        }

        public final void a(String instanceId, String message) {
            Intrinsics.checkNotNullParameter(instanceId, "instanceId");
            Intrinsics.checkNotNullParameter(message, "message");
            IronLog.CALLBACK.info(message + " instanceId=" + instanceId);
        }

        public final void b(ListenerType listenertype) {
            this.a = listenertype;
        }
    }

    void a(T t);
}
