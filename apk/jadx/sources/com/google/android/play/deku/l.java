package com.google.android.play.deku;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.RemoteException;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class l {
    private final Context a;
    private final AtomicReference b;
    private final ScheduledExecutorService c;
    private ScheduledFuture d;
    private String e;
    private long f;
    private String g;
    private String h;

    public l(Context context) {
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.b = new AtomicReference();
        this.f = 0L;
        this.g = "";
        this.h = "/sidekick/current_game_state.json";
        this.a = context;
        this.c = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
    }

    public static /* synthetic */ void a(l lVar) {
        String str;
        t tVar = (t) lVar.b.get();
        String str2 = null;
        if (tVar == null) {
            Log.w("GameStateManager", "GameStateListener is null, stopping polling.");
            ScheduledFuture scheduledFuture = lVar.d;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
                lVar.d = null;
                return;
            }
            return;
        }
        try {
            File file = new File(String.valueOf(lVar.a.getApplicationInfo().dataDir).concat(String.valueOf(lVar.h)));
            if (!file.exists()) {
                str = "Game state file does not exist.";
            } else {
                if (file.length() <= 51200) {
                    long jLastModified = file.lastModified();
                    if (jLastModified != lVar.f) {
                        byte[] bArr = new byte[(int) file.length()];
                        FileInputStream fileInputStream = new FileInputStream(file);
                        try {
                            fileInputStream.read(bArr);
                            fileInputStream.close();
                            String str3 = new String(bArr, StandardCharsets.UTF_8);
                            try {
                                lVar.f = jLastModified;
                            } catch (IOException | RuntimeException e) {
                                e = e;
                                str2 = str3;
                                Log.e("GameStateManager", "Failed to read game state file: ".concat(String.valueOf(e.getMessage())));
                                str3 = str2;
                            }
                            if (str3 == null || str3.equals(lVar.e)) {
                                return;
                            }
                            lVar.e = str3;
                            lVar.f(tVar, str3);
                            return;
                        } catch (Throwable th) {
                            try {
                                fileInputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    }
                    return;
                }
                str = "Game state file size (" + file.length() + " bytes) exceeds limit (51200 bytes), skipping read.";
            }
            Log.w("GameStateManager", str);
        } catch (IOException e2) {
            e = e2;
        } catch (RuntimeException e3) {
            e = e3;
        }
    }

    private final synchronized void e() {
        ScheduledFuture scheduledFuture = this.d;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
            this.d = null;
        }
        this.b.set(null);
        this.g = "";
        this.e = null;
        this.h = "/sidekick/current_game_state.json";
        this.f = 0L;
    }

    private final void f(t tVar, String str) {
        try {
            Bundle bundle = new Bundle();
            bundle.putString("deku_game_state_text", str);
            tVar.c(this.g, bundle);
        } catch (DeadObjectException e) {
            Log.e("GameStateManager", "Failed to send game state to session " + this.g + ": " + e.getMessage());
            e();
        } catch (RemoteException e2) {
            Log.e("GameStateManager", "Failed to send game state to session " + this.g + ": " + e2.getMessage());
        }
    }

    public final synchronized void b() {
        e();
    }

    public final synchronized void c(t tVar, String str, Bundle bundle) {
        ScheduledFuture scheduledFuture = this.d;
        if (scheduledFuture != null && !scheduledFuture.isDone()) {
            e();
        }
        this.b.set(tVar);
        this.g = str;
        this.h = bundle.getString("deku_game_state_file_path", "/sidekick/current_game_state.json");
        long j = bundle.getLong("deku_game_state_polling_interval_ms", 5000L);
        Log.i("GameStateManager", "Starting game state polling for session: " + this.g + " with interval: " + j + "ms and file path: " + this.h);
        this.d = this.c.scheduleWithFixedDelay(new e(this, 2), 1000L, j, TimeUnit.MILLISECONDS);
    }

    public final synchronized void d(t tVar, String str) {
        Log.i("GameStateManager", "Unregistering game state listener " + String.valueOf(tVar) + " for session: " + str);
        e();
    }
}
