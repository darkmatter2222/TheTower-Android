package com.google.firebase.database.core;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.google.firebase.FirebaseApp;
import com.google.firebase.database.DatabaseException;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.InternalHelpers;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class RepoManager {
    private static final RepoManager instance = new RepoManager();
    private final Map<Context, Map<String, Repo>> repos = new HashMap();

    public static void clear() {
        instance.clearRepos();
    }

    private void clearRepos() {
        synchronized (this.repos) {
            this.repos.clear();
        }
    }

    private Repo createLocalRepo(Context context, RepoInfo repoInfo, FirebaseDatabase firebaseDatabase) throws DatabaseException {
        Repo repo;
        context.freeze();
        String str = "https://" + repoInfo.host + DomExceptionUtils.SEPARATOR + repoInfo.namespace;
        synchronized (this.repos) {
            if (!this.repos.containsKey(context)) {
                this.repos.put(context, new HashMap());
            }
            Map<String, Repo> map = this.repos.get(context);
            if (map.containsKey(str)) {
                throw new IllegalStateException("createLocalRepo() called for existing repo.");
            }
            repo = new Repo(repoInfo, context, firebaseDatabase);
            map.put(str, repo);
        }
        return repo;
    }

    public static Repo createRepo(Context context, RepoInfo repoInfo, FirebaseDatabase firebaseDatabase) throws DatabaseException {
        return instance.createLocalRepo(context, repoInfo, firebaseDatabase);
    }

    private Repo getLocalRepo(Context context, RepoInfo repoInfo) throws DatabaseException {
        Repo repo;
        context.freeze();
        String str = "https://" + repoInfo.host + DomExceptionUtils.SEPARATOR + repoInfo.namespace;
        synchronized (this.repos) {
            if (!this.repos.containsKey(context) || !this.repos.get(context).containsKey(str)) {
                InternalHelpers.createDatabaseForTests(FirebaseApp.getInstance(), repoInfo, (DatabaseConfig) context);
            }
            repo = this.repos.get(context).get(str);
        }
        return repo;
    }

    public static Repo getRepo(Context context, RepoInfo repoInfo) throws DatabaseException {
        return instance.getLocalRepo(context, repoInfo);
    }

    public static void interrupt(Context context) {
        instance.interruptInternal(context);
    }

    public static void interrupt(final Repo repo) {
        repo.scheduleNow(new Runnable() { // from class: com.google.firebase.database.core.RepoManager.1
            @Override // java.lang.Runnable
            public void run() {
                repo.interrupt();
            }
        });
    }

    private void interruptInternal(final Context context) {
        RunLoop runLoop = context.getRunLoop();
        if (runLoop != null) {
            runLoop.scheduleNow(new Runnable() { // from class: com.google.firebase.database.core.RepoManager.3
                @Override // java.lang.Runnable
                public void run() {
                    boolean z;
                    synchronized (RepoManager.this.repos) {
                        if (RepoManager.this.repos.containsKey(context)) {
                            Iterator it = ((Map) RepoManager.this.repos.get(context)).values().iterator();
                            loop0: while (true) {
                                z = true;
                                while (true) {
                                    if (!it.hasNext()) {
                                        break loop0;
                                    }
                                    Repo repo = (Repo) it.next();
                                    repo.interrupt();
                                    if (!z || repo.hasListeners()) {
                                        z = false;
                                    }
                                }
                            }
                            if (z) {
                                context.stop();
                            }
                        }
                    }
                }
            });
        }
    }

    public static void resume(Context context) {
        instance.resumeInternal(context);
    }

    public static void resume(final Repo repo) {
        repo.scheduleNow(new Runnable() { // from class: com.google.firebase.database.core.RepoManager.2
            @Override // java.lang.Runnable
            public void run() {
                repo.resume();
            }
        });
    }

    private void resumeInternal(final Context context) {
        RunLoop runLoop = context.getRunLoop();
        if (runLoop != null) {
            runLoop.scheduleNow(new Runnable() { // from class: com.google.firebase.database.core.RepoManager.4
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (RepoManager.this.repos) {
                        if (RepoManager.this.repos.containsKey(context)) {
                            Iterator it = ((Map) RepoManager.this.repos.get(context)).values().iterator();
                            while (it.hasNext()) {
                                ((Repo) it.next()).resume();
                            }
                        }
                    }
                }
            });
        }
    }
}
