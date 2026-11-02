.class public Lcom/google/firebase/auth/zzad;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.2.0"

# interfaces
.implements Lcom/google/firebase/auth/internal/InternalAuthProvider;


# instance fields
.field private final zza:Lcom/google/firebase/FirebaseApp;

.field private final zzb:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatController;",
            ">;"
        }
    .end annotation
.end field

.field private final zzd:Ljava/util/concurrent/Executor;

.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Ljava/util/concurrent/Executor;

.field private final zzg:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzh:Ljava/util/concurrent/Executor;

.field private final zzi:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/FirebaseAuth;",
            ">;"
        }
    .end annotation
.end field

.field private zzj:Lcom/google/firebase/auth/zzat;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;",
            ">;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatController;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/auth/zzad;->zzi:Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    iput-object p1, p0, Lcom/google/firebase/auth/zzad;->zza:Lcom/google/firebase/FirebaseApp;

    .line 41
    iput-object p2, p0, Lcom/google/firebase/auth/zzad;->zzb:Lcom/google/firebase/inject/Provider;

    .line 42
    iput-object p3, p0, Lcom/google/firebase/auth/zzad;->zzc:Lcom/google/firebase/inject/Provider;

    .line 43
    iput-object p4, p0, Lcom/google/firebase/auth/zzad;->zzd:Ljava/util/concurrent/Executor;

    .line 44
    iput-object p5, p0, Lcom/google/firebase/auth/zzad;->zze:Ljava/util/concurrent/Executor;

    .line 45
    iput-object p6, p0, Lcom/google/firebase/auth/zzad;->zzf:Ljava/util/concurrent/Executor;

    .line 46
    iput-object p7, p0, Lcom/google/firebase/auth/zzad;->zzg:Ljava/util/concurrent/ScheduledExecutorService;

    .line 47
    iput-object p8, p0, Lcom/google/firebase/auth/zzad;->zzh:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/zzad;
    .locals 1

    .line 32
    const-class v0, Lcom/google/firebase/auth/zzad;

    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/auth/zzad;

    return-object p0
.end method

.method private final zze()Lcom/google/firebase/auth/FirebaseAuth;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/google/firebase/auth/zzad;->zzi:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    const-string v0, "getAuth() called before any FirebaseAuth instance was initialized."

    const-string v1, "FirebaseAuthComponent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    const-string v0, "Creating a default instance to use."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p0}, Lcom/google/firebase/auth/zzad;->zza()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    return-object v0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/zzad;->zzi:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/FirebaseAuth;

    return-object v0
.end method


# virtual methods
.method public addIdTokenListener(Lcom/google/firebase/auth/internal/IdTokenListener;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/google/firebase/auth/zzad;->zze()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    .line 50
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->addIdTokenListener(Lcom/google/firebase/auth/internal/IdTokenListener;)V

    return-void
.end method

.method public getAccessToken(Z)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/GetTokenResult;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/auth/zzad;->zze()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->getAccessToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/google/firebase/auth/zzad;->zze()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeIdTokenListener(Lcom/google/firebase/auth/internal/IdTokenListener;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/google/firebase/auth/zzad;->zze()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->removeIdTokenListener(Lcom/google/firebase/auth/internal/IdTokenListener;)V

    return-void
.end method

.method public final declared-synchronized zza()Lcom/google/firebase/auth/FirebaseAuth;
    .locals 10

    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/auth/zzad;->zzi:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/google/firebase/auth/zzad;->zzi:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/firebase/auth/zzad;->zzi:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 12
    :cond_0
    monitor-exit p0

    return-object v0

    .line 13
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/auth/zzad;->zzi:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    new-instance v1, Lcom/google/firebase/auth/internal/zzab;

    iget-object v2, p0, Lcom/google/firebase/auth/zzad;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v3, p0, Lcom/google/firebase/auth/zzad;->zzb:Lcom/google/firebase/inject/Provider;

    iget-object v4, p0, Lcom/google/firebase/auth/zzad;->zzc:Lcom/google/firebase/inject/Provider;

    iget-object v5, p0, Lcom/google/firebase/auth/zzad;->zzd:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Lcom/google/firebase/auth/zzad;->zze:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Lcom/google/firebase/auth/zzad;->zzf:Ljava/util/concurrent/Executor;

    iget-object v8, p0, Lcom/google/firebase/auth/zzad;->zzg:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v9, p0, Lcom/google/firebase/auth/zzad;->zzh:Ljava/util/concurrent/Executor;

    invoke-direct/range {v1 .. v9}, Lcom/google/firebase/auth/internal/zzab;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V

    .line 16
    iget-object v0, p0, Lcom/google/firebase/auth/zzad;->zzi:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "default"

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    monitor-exit p0

    return-object v1

    .line 14
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FirebaseAuth instance has already been instantiated with different configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zza(Lcom/google/firebase/auth/zzat;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 11

    monitor-enter p0

    .line 18
    :try_start_0
    const-string v0, "tenantConfig cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/google/firebase/auth/zzad;->zzi:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "regional"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/google/firebase/auth/zzad;->zzi:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "regional"

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/internal/zzca;

    if-nez v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/google/firebase/auth/zzad;->zzi:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "regional"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzca;->zzk()Lcom/google/firebase/auth/zzat;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 25
    monitor-exit p0

    return-object v0

    .line 26
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/auth/zzad;->zzi:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    iput-object p1, p0, Lcom/google/firebase/auth/zzad;->zzj:Lcom/google/firebase/auth/zzat;

    .line 29
    new-instance v1, Lcom/google/firebase/auth/internal/zzca;

    iget-object v2, p0, Lcom/google/firebase/auth/zzad;->zza:Lcom/google/firebase/FirebaseApp;

    iget-object v3, p0, Lcom/google/firebase/auth/zzad;->zzb:Lcom/google/firebase/inject/Provider;

    iget-object v4, p0, Lcom/google/firebase/auth/zzad;->zzc:Lcom/google/firebase/inject/Provider;

    iget-object v5, p0, Lcom/google/firebase/auth/zzad;->zzd:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Lcom/google/firebase/auth/zzad;->zze:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Lcom/google/firebase/auth/zzad;->zzf:Ljava/util/concurrent/Executor;

    iget-object v8, p0, Lcom/google/firebase/auth/zzad;->zzg:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v9, p0, Lcom/google/firebase/auth/zzad;->zzh:Ljava/util/concurrent/Executor;

    move-object v10, p1

    invoke-direct/range {v1 .. v10}, Lcom/google/firebase/auth/internal/zzca;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;Lcom/google/firebase/auth/zzat;)V

    .line 30
    iget-object p1, p0, Lcom/google/firebase/auth/zzad;->zzi:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, "regional"

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    monitor-exit p0

    return-object v1

    .line 27
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FirebaseAuth instance has already been instantiated with different configuration."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final zzb()Lcom/google/firebase/auth/zzat;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/firebase/auth/zzad;->zzj:Lcom/google/firebase/auth/zzat;

    return-object v0
.end method

.method public final zzc()Lcom/google/firebase/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/google/firebase/auth/zzad;->zzb:Lcom/google/firebase/inject/Provider;

    return-object v0
.end method

.method public final zzd()Lcom/google/firebase/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatController;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/google/firebase/auth/zzad;->zzc:Lcom/google/firebase/inject/Provider;

    return-object v0
.end method
