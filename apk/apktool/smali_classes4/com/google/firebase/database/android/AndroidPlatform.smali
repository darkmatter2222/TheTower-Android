.class public Lcom/google/firebase/database/android/AndroidPlatform;
.super Ljava/lang/Object;
.source "AndroidPlatform.java"

# interfaces
.implements Lcom/google/firebase/database/core/Platform;


# static fields
.field private static final APP_IN_BACKGROUND_INTERRUPT_REASON:Ljava/lang/String; = "app_in_background"


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final createdPersistenceCaches:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/android/AndroidPlatform;->createdPersistenceCaches:Ljava/util/Set;

    .line 54
    iput-object p1, p0, Lcom/google/firebase/database/android/AndroidPlatform;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/database/android/AndroidPlatform;->applicationContext:Landroid/content/Context;

    return-void

    .line 58
    :cond_0
    const-string p1, "FirebaseDatabase"

    const-string v0, "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v1, "ERROR: You must call FirebaseApp.initializeApp() before using Firebase Database."

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "You need to call FirebaseApp.initializeApp() before using Firebase Database."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/google/firebase/database/android/AndroidPlatform;)Landroid/content/Context;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/firebase/database/android/AndroidPlatform;->applicationContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public createPersistenceManager(Lcom/google/firebase/database/core/Context;Ljava/lang/String;)Lcom/google/firebase/database/core/persistence/PersistenceManager;
    .locals 3

    .line 158
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Context;->getSessionPersistenceKey()Ljava/lang/String;

    move-result-object v0

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "_"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 162
    iget-object v1, p0, Lcom/google/firebase/database/android/AndroidPlatform;->createdPersistenceCaches:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/google/firebase/database/android/AndroidPlatform;->createdPersistenceCaches:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;

    iget-object v1, p0, Lcom/google/firebase/database/android/AndroidPlatform;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;-><init>(Landroid/content/Context;Lcom/google/firebase/database/core/Context;Ljava/lang/String;)V

    .line 169
    new-instance p2, Lcom/google/firebase/database/core/persistence/LRUCachePolicy;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Context;->getPersistenceCacheSizeBytes()J

    move-result-wide v1

    invoke-direct {p2, v1, v2}, Lcom/google/firebase/database/core/persistence/LRUCachePolicy;-><init>(J)V

    .line 170
    new-instance v1, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;

    invoke-direct {v1, p1, v0, p2}, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;-><init>(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;Lcom/google/firebase/database/core/persistence/CachePolicy;)V

    return-object v1

    .line 163
    :cond_0
    new-instance p1, Lcom/google/firebase/database/DatabaseException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "SessionPersistenceKey \'"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\' has already been used."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLCacheDirectory()Ljava/io/File;
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/google/firebase/database/android/AndroidPlatform;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sslcache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent(Lcom/google/firebase/database/core/Context;)Ljava/lang/String;
    .locals 1

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/Android"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public newEventTarget(Lcom/google/firebase/database/core/Context;)Lcom/google/firebase/database/core/EventTarget;
    .locals 0

    .line 76
    new-instance p1, Lcom/google/firebase/database/android/AndroidEventTarget;

    invoke-direct {p1}, Lcom/google/firebase/database/android/AndroidEventTarget;-><init>()V

    return-object p1
.end method

.method public newLogger(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/logging/Logger$Level;Ljava/util/List;)Lcom/google/firebase/database/logging/Logger;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Context;",
            "Lcom/google/firebase/database/logging/Logger$Level;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/database/logging/Logger;"
        }
    .end annotation

    .line 142
    new-instance p1, Lcom/google/firebase/database/logging/AndroidLogger;

    invoke-direct {p1, p2, p3}, Lcom/google/firebase/database/logging/AndroidLogger;-><init>(Lcom/google/firebase/database/logging/Logger$Level;Ljava/util/List;)V

    return-object p1
.end method

.method public newPersistentConnection(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/connection/ConnectionContext;Lcom/google/firebase/database/connection/HostInfo;Lcom/google/firebase/database/connection/PersistentConnection$Delegate;)Lcom/google/firebase/database/connection/PersistentConnection;
    .locals 0

    .line 117
    new-instance p1, Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;-><init>(Lcom/google/firebase/database/connection/ConnectionContext;Lcom/google/firebase/database/connection/HostInfo;Lcom/google/firebase/database/connection/PersistentConnection$Delegate;)V

    .line 122
    iget-object p2, p0, Lcom/google/firebase/database/android/AndroidPlatform;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    new-instance p3, Lcom/google/firebase/database/android/AndroidPlatform$2;

    invoke-direct {p3, p0, p1}, Lcom/google/firebase/database/android/AndroidPlatform$2;-><init>(Lcom/google/firebase/database/android/AndroidPlatform;Lcom/google/firebase/database/connection/PersistentConnection;)V

    invoke-virtual {p2, p3}, Lcom/google/firebase/FirebaseApp;->addBackgroundStateChangeListener(Lcom/google/firebase/FirebaseApp$BackgroundStateChangeListener;)V

    return-object p1
.end method

.method public newRunLoop(Lcom/google/firebase/database/core/Context;)Lcom/google/firebase/database/core/RunLoop;
    .locals 1

    .line 81
    const-string v0, "RunLoop"

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/core/Context;->getLogger(Ljava/lang/String;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object p1

    .line 82
    new-instance v0, Lcom/google/firebase/database/android/AndroidPlatform$1;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/database/android/AndroidPlatform$1;-><init>(Lcom/google/firebase/database/android/AndroidPlatform;Lcom/google/firebase/database/logging/LogWrapper;)V

    return-object v0
.end method
