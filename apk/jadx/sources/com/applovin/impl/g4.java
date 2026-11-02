package com.applovin.impl;

import android.os.Process;
import androidx.core.util.Consumer;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class g4 {
    private final PriorityBlockingQueue a = new PriorityBlockingQueue();
    private final com.applovin.impl.sdk.l b;

    /* JADX INFO: Access modifiers changed from: private */
    static class b extends Thread {
        private final BlockingQueue a;
        private final com.applovin.impl.sdk.l b;

        private b(BlockingQueue blockingQueue, int i, com.applovin.impl.sdk.l lVar) {
            super("AppLovinSdk:network");
            if (blockingQueue == null) {
                throw new IllegalArgumentException("No request queue specified");
            }
            if (lVar == null) {
                throw new IllegalArgumentException("No sdk specified");
            }
            this.a = blockingQueue;
            this.b = lVar;
            setPriority(((Integer) lVar.a(c5.T)).intValue());
        }

        private HttpURLConnection a(c cVar) throws ProtocolException {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(cVar.a).openConnection();
            httpURLConnection.setRequestMethod(cVar.b);
            httpURLConnection.setConnectTimeout(cVar.e);
            httpURLConnection.setReadTimeout(cVar.e);
            httpURLConnection.setDefaultUseCaches(false);
            httpURLConnection.setAllowUserInteraction(false);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setInstanceFollowRedirects(true);
            httpURLConnection.setDoInput(true);
            if (!cVar.c.isEmpty()) {
                for (Map.Entry entry : cVar.c.entrySet()) {
                    httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
            }
            return httpURLConnection;
        }

        private void a() {
            b((c) this.a.take());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(c cVar, d dVar) {
            cVar.f.accept(dVar);
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x009f */
        /* JADX WARN: Bottom block not found for handler: all -> 0x0129 */
        /* JADX WARN: Code duplicated, block: B:57:0x00ee A[Catch: all -> 0x019d, TRY_LEAVE, TryCatch #13 {all -> 0x019d, blocks: (B:55:0x00d6, B:57:0x00ee, B:80:0x012f), top: B:111:0x00d6 }] */
        /* JADX WARN: Code duplicated, block: B:82:0x0162  */
        /* JADX WARN: Code duplicated, block: B:96:0x0107 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:98:0x00fb A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void b(final com.applovin.impl.g4.c r20) {
            /*
                Method dump skipped, instruction units count: 420
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.g4.b.b(com.applovin.impl.g4$c):void");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            while (true) {
                try {
                    a();
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    public static class c implements Comparable {
        private static final AtomicInteger i = new AtomicInteger();
        private final String a;
        private final String b;
        private final Map c;
        private final byte[] d;
        private final int e;
        private final Consumer f;
        private final Executor g;
        private final int h;

        public static class a {
            private String a;
            private String b;
            private Map c = new HashMap();
            private byte[] d;
            private int e;
            private Consumer f;
            private Executor g;

            public a a(int i) {
                this.e = i;
                return this;
            }

            public a a(Consumer consumer) {
                this.f = consumer;
                return this;
            }

            public a a(String str) {
                this.a = str;
                return this;
            }

            public a a(String str, String str2) {
                this.c.put(str, str2);
                return this;
            }

            public a a(Map map) {
                if (map == null) {
                    map = new HashMap();
                }
                this.c = map;
                return this;
            }

            public a a(Executor executor) {
                this.g = executor;
                return this;
            }

            public a a(byte[] bArr) {
                this.d = bArr;
                return this;
            }

            public c a() {
                return new c(this);
            }

            public a b(String str) {
                this.b = str;
                return this;
            }
        }

        private c(a aVar) {
            this.a = aVar.a;
            this.b = aVar.b;
            this.c = aVar.c != null ? aVar.c : Collections.EMPTY_MAP;
            this.d = aVar.d;
            this.e = aVar.e;
            this.f = aVar.f;
            this.g = aVar.g;
            this.h = i.incrementAndGet();
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public int compareTo(c cVar) {
            return this.h - cVar.h;
        }
    }

    public static class d {
        private final int a;
        private final byte[] b;
        private final byte[] c;
        private final long d;
        private final Throwable e;

        public static class a {
            private int a;
            private byte[] b;
            private byte[] c;
            private long d;
            private Throwable e;

            public a a(int i) {
                this.a = i;
                return this;
            }

            public a a(long j) {
                this.d = j;
                return this;
            }

            public a a(Throwable th) {
                this.e = th;
                return this;
            }

            public a a(byte[] bArr) {
                this.b = bArr;
                return this;
            }

            public d a() {
                return new d(this);
            }

            public a b(byte[] bArr) {
                this.c = bArr;
                return this;
            }
        }

        private d(a aVar) {
            this.a = aVar.a;
            this.b = aVar.b;
            this.c = aVar.c;
            this.d = aVar.d;
            this.e = aVar.e;
        }

        public static a a() {
            return new a();
        }

        public int b() {
            return this.a;
        }

        public int c() throws Throwable {
            Throwable th = this.e;
            if (th == null) {
                return this.a;
            }
            throw th;
        }

        public byte[] d() throws Throwable {
            Throwable th = this.e;
            if (th == null) {
                return this.b;
            }
            throw th;
        }

        public long e() {
            return this.d;
        }

        public byte[] f() {
            return this.c;
        }
    }

    public g4(com.applovin.impl.sdk.l lVar) {
        this.b = lVar;
    }

    public void a() {
        for (int i = 0; i < ((Integer) this.b.a(c5.S)).intValue(); i++) {
            new b(this.a, i, this.b).start();
        }
    }

    public void a(c cVar) {
        if (cVar == null) {
            throw new IllegalArgumentException("No request specified");
        }
        this.a.add(cVar);
    }
}
