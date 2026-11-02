.class public Lcom/google/firebase/database/connection/PersistentConnectionImpl;
.super Ljava/lang/Object;
.source "PersistentConnectionImpl.java"

# interfaces
.implements Lcom/google/firebase/database/connection/Connection$Delegate;
.implements Lcom/google/firebase/database/connection/PersistentConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;,
        Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;,
        Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;,
        Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;,
        Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;,
        Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;,
        Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;
    }
.end annotation


# static fields
.field private static final IDLE_INTERRUPT_REASON:Ljava/lang/String; = "connection_idle"

.field private static final IDLE_TIMEOUT:J = 0xea60L

.field private static final INVALID_APP_CHECK_TOKEN:Ljava/lang/String; = "Invalid appcheck token"

.field private static final INVALID_TOKEN_THRESHOLD:J = 0x3L

.field private static final REQUEST_ACTION:Ljava/lang/String; = "a"

.field private static final REQUEST_ACTION_APPCHECK:Ljava/lang/String; = "appcheck"

.field private static final REQUEST_ACTION_AUTH:Ljava/lang/String; = "auth"

.field private static final REQUEST_ACTION_GAUTH:Ljava/lang/String; = "gauth"

.field private static final REQUEST_ACTION_GET:Ljava/lang/String; = "g"

.field private static final REQUEST_ACTION_MERGE:Ljava/lang/String; = "m"

.field private static final REQUEST_ACTION_ONDISCONNECT_CANCEL:Ljava/lang/String; = "oc"

.field private static final REQUEST_ACTION_ONDISCONNECT_MERGE:Ljava/lang/String; = "om"

.field private static final REQUEST_ACTION_ONDISCONNECT_PUT:Ljava/lang/String; = "o"

.field private static final REQUEST_ACTION_PUT:Ljava/lang/String; = "p"

.field private static final REQUEST_ACTION_QUERY:Ljava/lang/String; = "q"

.field private static final REQUEST_ACTION_QUERY_UNLISTEN:Ljava/lang/String; = "n"

.field private static final REQUEST_ACTION_STATS:Ljava/lang/String; = "s"

.field private static final REQUEST_ACTION_UNAPPCHECK:Ljava/lang/String; = "unappcheck"

.field private static final REQUEST_ACTION_UNAUTH:Ljava/lang/String; = "unauth"

.field private static final REQUEST_APPCHECK_TOKEN:Ljava/lang/String; = "token"

.field private static final REQUEST_AUTHVAR:Ljava/lang/String; = "authvar"

.field private static final REQUEST_COMPOUND_HASH:Ljava/lang/String; = "ch"

.field private static final REQUEST_COMPOUND_HASH_HASHES:Ljava/lang/String; = "hs"

.field private static final REQUEST_COMPOUND_HASH_PATHS:Ljava/lang/String; = "ps"

.field private static final REQUEST_COUNTERS:Ljava/lang/String; = "c"

.field private static final REQUEST_CREDENTIAL:Ljava/lang/String; = "cred"

.field private static final REQUEST_DATA_HASH:Ljava/lang/String; = "h"

.field private static final REQUEST_DATA_PAYLOAD:Ljava/lang/String; = "d"

.field private static final REQUEST_ERROR:Ljava/lang/String; = "error"

.field private static final REQUEST_NUMBER:Ljava/lang/String; = "r"

.field private static final REQUEST_PATH:Ljava/lang/String; = "p"

.field private static final REQUEST_PAYLOAD:Ljava/lang/String; = "b"

.field private static final REQUEST_QUERIES:Ljava/lang/String; = "q"

.field private static final REQUEST_STATUS:Ljava/lang/String; = "s"

.field private static final REQUEST_TAG:Ljava/lang/String; = "t"

.field private static final RESPONSE_FOR_REQUEST:Ljava/lang/String; = "b"

.field private static final SERVER_ASYNC_ACTION:Ljava/lang/String; = "a"

.field private static final SERVER_ASYNC_APP_CHECK_REVOKED:Ljava/lang/String; = "apc"

.field private static final SERVER_ASYNC_AUTH_REVOKED:Ljava/lang/String; = "ac"

.field private static final SERVER_ASYNC_DATA_MERGE:Ljava/lang/String; = "m"

.field private static final SERVER_ASYNC_DATA_RANGE_MERGE:Ljava/lang/String; = "rm"

.field private static final SERVER_ASYNC_DATA_UPDATE:Ljava/lang/String; = "d"

.field private static final SERVER_ASYNC_LISTEN_CANCELLED:Ljava/lang/String; = "c"

.field private static final SERVER_ASYNC_PAYLOAD:Ljava/lang/String; = "b"

.field private static final SERVER_ASYNC_SECURITY_DEBUG:Ljava/lang/String; = "sd"

.field private static final SERVER_DATA_END_PATH:Ljava/lang/String; = "e"

.field private static final SERVER_DATA_RANGE_MERGE:Ljava/lang/String; = "m"

.field private static final SERVER_DATA_START_PATH:Ljava/lang/String; = "s"

.field private static final SERVER_DATA_TAG:Ljava/lang/String; = "t"

.field private static final SERVER_DATA_UPDATE_BODY:Ljava/lang/String; = "d"

.field private static final SERVER_DATA_UPDATE_PATH:Ljava/lang/String; = "p"

.field private static final SERVER_DATA_WARNINGS:Ljava/lang/String; = "w"

.field private static final SERVER_KILL_INTERRUPT_REASON:Ljava/lang/String; = "server_kill"

.field private static final SERVER_RESPONSE_DATA:Ljava/lang/String; = "d"

.field private static final SUCCESSFUL_CONNECTION_ESTABLISHED_DELAY:J = 0x7530L

.field private static final TOKEN_REFRESH_INTERRUPT_REASON:Ljava/lang/String; = "token_refresh"

.field private static connectionIds:J


# instance fields
.field private appCheckToken:Ljava/lang/String;

.field private final appCheckTokenProvider:Lcom/google/firebase/database/connection/ConnectionTokenProvider;

.field private authToken:Ljava/lang/String;

.field private final authTokenProvider:Lcom/google/firebase/database/connection/ConnectionTokenProvider;

.field private cachedHost:Ljava/lang/String;

.field private connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

.field private final context:Lcom/google/firebase/database/connection/ConnectionContext;

.field private currentGetTokenAttempt:J

.field private final delegate:Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private firstConnection:Z

.field private forceAppCheckTokenRefresh:Z

.field private forceAuthTokenRefresh:Z

.field private hasOnDisconnects:Z

.field private final hostInfo:Lcom/google/firebase/database/connection/HostInfo;

.field private inactivityTimer:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private interruptReasons:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private invalidAppCheckTokenCount:I

.field private invalidAuthTokenCount:I

.field private lastConnectionEstablishedTime:J

.field private lastSessionId:Ljava/lang/String;

.field private lastWriteTimestamp:J

.field private listens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;",
            "Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lcom/google/firebase/database/logging/LogWrapper;

.field private onDisconnectRequestQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;",
            ">;"
        }
    .end annotation
.end field

.field private outstandingGets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;",
            ">;"
        }
    .end annotation
.end field

.field private outstandingPuts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;",
            ">;"
        }
    .end annotation
.end field

.field private readCounter:J

.field private realtime:Lcom/google/firebase/database/connection/Connection;

.field private requestCBHash:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;",
            ">;"
        }
    .end annotation
.end field

.field private requestCounter:J

.field private final retryHelper:Lcom/google/firebase/database/connection/util/RetryHelper;

.field private writeCounter:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/connection/ConnectionContext;Lcom/google/firebase/database/connection/HostInfo;Lcom/google/firebase/database/connection/PersistentConnection$Delegate;)V
    .locals 4

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->interruptReasons:Ljava/util/HashSet;

    const/4 v0, 0x1

    .line 295
    iput-boolean v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->firstConnection:Z

    .line 298
    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Disconnected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    iput-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    const-wide/16 v0, 0x0

    .line 299
    iput-wide v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->writeCounter:J

    .line 300
    iput-wide v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->readCounter:J

    .line 301
    iput-wide v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->requestCounter:J

    .line 322
    iput-wide v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->currentGetTokenAttempt:J

    const/4 v0, 0x0

    .line 324
    iput v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->invalidAuthTokenCount:I

    .line 325
    iput v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->invalidAppCheckTokenCount:I

    const/4 v0, 0x0

    .line 327
    iput-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->inactivityTimer:Ljava/util/concurrent/ScheduledFuture;

    .line 333
    iput-object p3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->delegate:Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    .line 334
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->context:Lcom/google/firebase/database/connection/ConnectionContext;

    .line 335
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/ConnectionContext;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p3

    iput-object p3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 336
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/ConnectionContext;->getAuthTokenProvider()Lcom/google/firebase/database/connection/ConnectionTokenProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authTokenProvider:Lcom/google/firebase/database/connection/ConnectionTokenProvider;

    .line 337
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/ConnectionContext;->getAppCheckTokenProvider()Lcom/google/firebase/database/connection/ConnectionTokenProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->appCheckTokenProvider:Lcom/google/firebase/database/connection/ConnectionTokenProvider;

    .line 338
    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->hostInfo:Lcom/google/firebase/database/connection/HostInfo;

    .line 339
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    .line 340
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->requestCBHash:Ljava/util/Map;

    .line 341
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingPuts:Ljava/util/Map;

    .line 342
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingGets:Ljava/util/Map;

    .line 343
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onDisconnectRequestQueue:Ljava/util/List;

    .line 344
    new-instance p2, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;

    .line 345
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/ConnectionContext;->getLogger()Lcom/google/firebase/database/logging/Logger;

    move-result-object v1

    const-string v2, "ConnectionRetryHelper"

    invoke-direct {p2, p3, v1, v2}, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/database/logging/Logger;Ljava/lang/String;)V

    const-wide/16 v1, 0x3e8

    .line 346
    invoke-virtual {p2, v1, v2}, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;->withMinDelayAfterFailure(J)Lcom/google/firebase/database/connection/util/RetryHelper$Builder;

    move-result-object p2

    const-wide v1, 0x3ff4cccccccccccdL    # 1.3

    .line 347
    invoke-virtual {p2, v1, v2}, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;->withRetryExponent(D)Lcom/google/firebase/database/connection/util/RetryHelper$Builder;

    move-result-object p2

    const-wide/16 v1, 0x7530

    .line 348
    invoke-virtual {p2, v1, v2}, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;->withMaxDelay(J)Lcom/google/firebase/database/connection/util/RetryHelper$Builder;

    move-result-object p2

    const-wide v1, 0x3fe6666666666666L    # 0.7

    .line 349
    invoke-virtual {p2, v1, v2}, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;->withJitterFactor(D)Lcom/google/firebase/database/connection/util/RetryHelper$Builder;

    move-result-object p2

    .line 350
    invoke-virtual {p2}, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;->build()Lcom/google/firebase/database/connection/util/RetryHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->retryHelper:Lcom/google/firebase/database/connection/util/RetryHelper;

    .line 352
    sget-wide p2, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionIds:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p2

    sput-wide v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionIds:J

    .line 353
    new-instance v1, Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/ConnectionContext;->getLogger()Lcom/google/firebase/database/logging/Logger;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pc_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PersistentConnection"

    invoke-direct {v1, p1, p3, p2}, Lcom/google/firebase/database/logging/LogWrapper;-><init>(Lcom/google/firebase/database/logging/Logger;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    .line 354
    iput-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->lastSessionId:Ljava/lang/String;

    .line 355
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->invalidAuthTokenCount:I

    return p0
.end method

.method static synthetic access$1002(Lcom/google/firebase/database/connection/PersistentConnectionImpl;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->invalidAuthTokenCount:I

    return p1
.end method

.method static synthetic access$1008(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)I
    .locals 2

    .line 38
    iget v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->invalidAuthTokenCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->invalidAuthTokenCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAppCheckTokenHelper(Z)V

    return-void
.end method

.method static synthetic access$1202(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->forceAuthTokenRefresh:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/PersistentConnection$Delegate;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->delegate:Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/Connection;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->realtime:Lcom/google/firebase/database/connection/Connection;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/util/RetryHelper;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->retryHelper:Lcom/google/firebase/database/connection/util/RetryHelper;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Ljava/util/Map;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingPuts:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Ljava/util/Map;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingGets:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Ljava/util/List;Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->warnOnListenerWarnings(Ljava/util/List;Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Ljava/util/Map;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->removeListen(Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2802(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->inactivityTimer:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Z
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->idleHasTimedOut()Z

    move-result p0

    return p0
.end method

.method static synthetic access$902(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    return-object p1
.end method

.method private canSendReads()Z
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Connected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private canSendWrites()Z
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Connected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private cancelSentTransactions()V
    .locals 5

    .line 865
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 867
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingPuts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 868
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 869
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 870
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;

    .line 871
    invoke-virtual {v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;->getRequest()Ljava/util/Map;

    move-result-object v3

    const-string v4, "h"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;->wasSent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 872
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 877
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;

    .line 880
    invoke-virtual {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;->getOnComplete()Lcom/google/firebase/database/connection/RequestResultCallback;

    move-result-object v1

    const-string v2, "disconnected"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/google/firebase/database/connection/RequestResultCallback;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private connected()Z
    .locals 2

    .line 573
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Authenticating:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Connected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private doIdleCheck()V
    .locals 5

    .line 1436
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1437
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->inactivityTimer:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1438
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1441
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$9;

    invoke-direct {v1, p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$9;-><init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)V

    const-wide/32 v2, 0xea60

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1442
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->inactivityTimer:Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 1456
    :cond_1
    const-string v0, "connection_idle"

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->isInterrupted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1457
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->isIdle()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(Z)V

    .line 1458
    invoke-virtual {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->resume(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private fetchAppCheckToken(Z)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 799
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 800
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Trying to fetch app check token"

    invoke-virtual {v1, v3, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 802
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->appCheckTokenProvider:Lcom/google/firebase/database/connection/ConnectionTokenProvider;

    new-instance v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$2;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$2;-><init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v1, p1, v2}, Lcom/google/firebase/database/connection/ConnectionTokenProvider;->getToken(ZLcom/google/firebase/database/connection/ConnectionTokenProvider$GetTokenCallback;)V

    .line 815
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private fetchAuthToken(Z)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 780
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 781
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Trying to fetch auth token"

    invoke-virtual {v1, v3, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 782
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authTokenProvider:Lcom/google/firebase/database/connection/ConnectionTokenProvider;

    new-instance v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;-><init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v1, p1, v2}, Lcom/google/firebase/database/connection/ConnectionTokenProvider;->getToken(ZLcom/google/firebase/database/connection/ConnectionTokenProvider$GetTokenCallback;)V

    .line 795
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private getPutObject(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1207
    const-string v1, "p"

    invoke-static {p1}, Lcom/google/firebase/database/connection/ConnectionUtils;->pathToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    const-string p1, "d"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 1210
    const-string p1, "h"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private handleTimestamp(J)V
    .locals 3

    .line 1198
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "handling timestamp"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1199
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 1200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1201
    const-string v1, "serverTimeOffset"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->delegate:Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    invoke-interface {p1, v0}, Lcom/google/firebase/database/connection/PersistentConnection$Delegate;->onServerInfoUpdate(Ljava/util/Map;)V

    return-void
.end method

.method private idleHasTimedOut()Z
    .locals 6

    .line 1475
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1476
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->lastWriteTimestamp:J

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isIdle()Z
    .locals 1

    .line 1467
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingGets:Ljava/util/Map;

    .line 1468
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->requestCBHash:Ljava/util/Map;

    .line 1469
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->hasOnDisconnects:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingPuts:Ljava/util/Map;

    .line 1471
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$get$0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/util/Map;)V
    .locals 2

    .line 420
    const-string v0, "s"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 421
    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "d"

    if-eqz v0, :cond_0

    .line 422
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 423
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    .line 425
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method private nextRequestNumber()J
    .locals 4

    .line 1432
    iget-wide v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->requestCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->requestCounter:J

    return-wide v0
.end method

.method private onAppCheckRevoked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1012
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "App check token revoked: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 1013
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->appCheckToken:Ljava/lang/String;

    const/4 p1, 0x1

    .line 1014
    iput-boolean p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->forceAppCheckTokenRefresh:Z

    return-void
.end method

.method private onAuthRevoked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1003
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Auth token revoked: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array v1, p2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 1004
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authToken:Ljava/lang/String;

    const/4 p1, 0x1

    .line 1005
    iput-boolean p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->forceAuthTokenRefresh:Z

    .line 1006
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->delegate:Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    invoke-interface {p1, p2}, Lcom/google/firebase/database/connection/PersistentConnection$Delegate;->onConnectionStatus(Z)V

    .line 1008
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->realtime:Lcom/google/firebase/database/connection/Connection;

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/Connection;->close()V

    return-void
.end method

.method private onDataPush(Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 933
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleServerMessage: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 934
    :cond_0
    const-string v0, "d"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "t"

    const-string v4, "p"

    const-string v5, "m"

    if-nez v2, :cond_b

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 947
    :cond_1
    const-string v2, "rm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, "s"

    if-eqz v2, :cond_6

    .line 948
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 949
    invoke-static {p1}, Lcom/google/firebase/database/connection/ConnectionUtils;->stringToPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 950
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 951
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/google/firebase/database/connection/ConnectionUtils;->longFromObject(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p2

    .line 953
    check-cast v0, Ljava/util/List;

    .line 954
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 955
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 956
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 957
    const-string v8, "e"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x0

    if-eqz v7, :cond_2

    .line 958
    invoke-static {v7}, Lcom/google/firebase/database/connection/ConnectionUtils;->stringToPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    goto :goto_1

    :cond_2
    move-object v7, v9

    :goto_1
    if-eqz v8, :cond_3

    .line 959
    invoke-static {v8}, Lcom/google/firebase/database/connection/ConnectionUtils;->stringToPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 960
    :cond_3
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 961
    new-instance v8, Lcom/google/firebase/database/connection/RangeMerge;

    invoke-direct {v8, v7, v9, v4}, Lcom/google/firebase/database/connection/RangeMerge;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 963
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 964
    iget-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p2}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring empty range merge for path "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 966
    :cond_5
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->delegate:Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    invoke-interface {p1, v2, v3, p2}, Lcom/google/firebase/database/connection/PersistentConnection$Delegate;->onRangeMergeUpdate(Ljava/util/List;Ljava/util/List;Ljava/lang/Long;)V

    return-void

    .line 968
    :cond_6
    const-string v2, "c"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 969
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 970
    invoke-static {p1}, Lcom/google/firebase/database/connection/ConnectionUtils;->stringToPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 971
    invoke-direct {p0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onListenRevoked(Ljava/util/List;)V

    return-void

    .line 972
    :cond_7
    const-string v2, "ac"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 973
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 974
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 975
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onAuthRevoked(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 976
    :cond_8
    const-string v2, "apc"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 977
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 978
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 979
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onAppCheckRevoked(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 980
    :cond_9
    const-string v0, "sd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 981
    invoke-direct {p0, p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onSecurityDebugPacket(Ljava/util/Map;)V

    return-void

    .line 983
    :cond_a
    iget-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p2}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized action from server: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 935
    :cond_b
    :goto_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 937
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 938
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 939
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/google/firebase/database/connection/ConnectionUtils;->longFromObject(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p2

    if-eqz p1, :cond_d

    .line 941
    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_d

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_d

    .line 942
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ignoring empty merge for path "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    return-void

    .line 944
    :cond_d
    invoke-static {v2}, Lcom/google/firebase/database/connection/ConnectionUtils;->stringToPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 945
    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->delegate:Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    invoke-interface {v2, v1, v0, p1, p2}, Lcom/google/firebase/database/connection/PersistentConnection$Delegate;->onDataUpdate(Ljava/util/List;Ljava/lang/Object;ZLjava/lang/Long;)V

    return-void
.end method

.method private onListenRevoked(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 990
    invoke-direct {p0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->removeListens(Ljava/util/List;)Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 993
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    .line 994
    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->access$800(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)Lcom/google/firebase/database/connection/RequestResultCallback;

    move-result-object v0

    const-string v1, "permission_denied"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/database/connection/RequestResultCallback;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onSecurityDebugPacket(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1019
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string v1, "msg"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/logging/LogWrapper;->info(Ljava/lang/String;)V

    return-void
.end method

.method private putInternal(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/database/connection/RequestResultCallback;",
            ")V"
        }
    .end annotation

    .line 1221
    invoke-direct {p0, p2, p3, p4}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->getPutObject(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    .line 1224
    iget-wide p3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->writeCounter:J

    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->writeCounter:J

    .line 1226
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingPuts:Ljava/util/Map;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, p5, v3}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/RequestResultCallback;Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->canSendWrites()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1228
    invoke-direct {p0, p3, p4}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendPut(J)V

    .line 1230
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->lastWriteTimestamp:J

    .line 1231
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-void
.end method

.method private removeListen(Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;
    .locals 4

    .line 898
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "removing query "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 899
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 900
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 901
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Trying to remove listener for QuerySpec "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " but no listener exists."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 905
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    .line 906
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-object v0
.end method

.method private removeListens(Ljava/util/List;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;",
            ">;"
        }
    .end annotation

    .line 913
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removing all listens at path "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 914
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 915
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 916
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;

    .line 917
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    .line 918
    invoke-static {v3}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->access$100(Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 919
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 923
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    .line 924
    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->getQuery()Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 927
    :cond_3
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-object v0
.end method

.method private restoreState()V
    .locals 6

    .line 1157
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Connected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Should be connected if we\'re restoring state, but we are: %s"

    invoke-static {v0, v3, v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1163
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string v1, "Restoring outstanding listens"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1164
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    .line 1165
    iget-object v3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v3}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Restoring listen "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->getQuery()Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1166
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendListen(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)V

    goto :goto_1

    .line 1169
    :cond_3
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string v1, "Restoring writes."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1171
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingPuts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1173
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1174
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1175
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendPut(J)V

    goto :goto_2

    .line 1179
    :cond_5
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onDisconnectRequestQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;

    .line 1181
    invoke-virtual {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1182
    invoke-virtual {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->getPath()Ljava/util/List;

    move-result-object v4

    .line 1183
    invoke-virtual {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->getData()Ljava/lang/Object;

    move-result-object v5

    .line 1184
    invoke-virtual {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->getOnComplete()Lcom/google/firebase/database/connection/RequestResultCallback;

    move-result-object v1

    .line 1180
    invoke-direct {p0, v3, v4, v5, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendOnDisconnect(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    goto :goto_3

    .line 1186
    :cond_6
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onDisconnectRequestQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1188
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string v1, "Restoring reads."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1190
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingGets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1191
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1192
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1193
    invoke-direct {p0, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendGet(Ljava/lang/Long;)V

    goto :goto_4

    :cond_8
    return-void
.end method

.method private restoreTokens()V
    .locals 5

    .line 1137
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string v2, "calling restore tokens"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    sget-object v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Connecting:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "Wanted to restore tokens, but was in wrong state: %s"

    invoke-static {v0, v4, v2}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1144
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authToken:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1145
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string v2, "Restoring auth."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1146
    :cond_2
    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Authenticating:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    iput-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    .line 1147
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAuthAndRestoreState()V

    return-void

    .line 1149
    :cond_3
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string v2, "Not restoring auth because auth token is null."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1150
    :cond_4
    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Connected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    iput-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    .line 1152
    invoke-direct {p0, v3}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAppCheckTokenHelper(Z)V

    return-void
.end method

.method private sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1414
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendSensitive(Ljava/lang/String;ZLjava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    return-void
.end method

.method private sendAppCheckTokenHelper(Z)V
    .locals 5

    .line 1091
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->appCheckToken:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1092
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->restoreState()V

    return-void

    .line 1096
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connected()Z

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Must be connected to send auth, but was: %s"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1097
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string v2, "Sending app check."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1099
    :cond_1
    new-instance v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Z)V

    .line 1118
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1119
    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->appCheckToken:Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    const-string v4, "App check token must be set!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v4, v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1120
    const-string v1, "token"

    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->appCheckToken:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    const-string v1, "appcheck"

    invoke-direct {p0, v1, v3, p1, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendSensitive(Ljava/lang/String;ZLjava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    return-void
.end method

.method private sendAuthAndRestoreState()V
    .locals 1

    const/4 v0, 0x1

    .line 1031
    invoke-direct {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAuthHelper(Z)V

    return-void
.end method

.method private sendAuthHelper(Z)V
    .locals 5

    .line 1035
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connected()Z

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Must be connected to send auth, but was: %s"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1036
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Sending auth."

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1038
    :cond_0
    new-instance v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;-><init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Z)V

    .line 1076
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1077
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authToken:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/firebase/database/util/GAuthToken;->tryParseFromString(Ljava/lang/String;)Lcom/google/firebase/database/util/GAuthToken;

    move-result-object v1

    const/4 v2, 0x1

    .line 1078
    const-string v3, "cred"

    if-eqz v1, :cond_2

    .line 1079
    invoke-virtual {v1}, Lcom/google/firebase/database/util/GAuthToken;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    invoke-virtual {v1}, Lcom/google/firebase/database/util/GAuthToken;->getAuth()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1081
    const-string v3, "authvar"

    invoke-virtual {v1}, Lcom/google/firebase/database/util/GAuthToken;->getAuth()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    :cond_1
    const-string v1, "gauth"

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendSensitive(Ljava/lang/String;ZLjava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    return-void

    .line 1085
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authToken:Ljava/lang/String;

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    const-string v1, "auth"

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendSensitive(Ljava/lang/String;ZLjava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    return-void
.end method

.method private sendConnectStats()V
    .locals 6

    .line 1402
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1403
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->context:Lcom/google/firebase/database/connection/ConnectionContext;

    invoke-virtual {v1}, Lcom/google/firebase/database/connection/ConnectionContext;->isPersistenceEnabled()Z

    move-result v1

    const/4 v2, 0x1

    .line 1406
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 1404
    const-string v1, "persistence.android.enabled"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "sdk.android."

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->context:Lcom/google/firebase/database/connection/ConnectionContext;

    invoke-virtual {v3}, Lcom/google/firebase/database/connection/ConnectionContext;->getClientSdkVersion()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    const/16 v5, 0x2d

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Sending first connection stats"

    invoke-virtual {v1, v3, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1409
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendStats(Ljava/util/Map;)V

    return-void
.end method

.method private sendGet(Ljava/lang/Long;)V
    .locals 4

    .line 1275
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->canSendReads()Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "sendGet called when we can\'t send gets"

    invoke-static {v0, v3, v2}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1276
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingGets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;

    .line 1277
    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;->access$2100(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1278
    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v2}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " cancelled, ignoring."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1285
    :cond_0
    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;->access$2200(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;-><init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Ljava/lang/Long;Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;)V

    .line 1283
    const-string p1, "g"

    invoke-direct {p0, p1, v1, v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    return-void
.end method

.method private sendListen(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)V
    .locals 6

    .line 1302
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1303
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->getQuery()Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->access$100(Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->pathToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "p"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->getTag()Ljava/lang/Long;

    move-result-object v1

    .line 1306
    const-string v2, "q"

    if-eqz v1, :cond_0

    .line 1307
    invoke-static {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->access$700(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->access$200(Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    const-string v3, "t"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->getHashFunction()Lcom/google/firebase/database/connection/ListenHashProvider;

    move-result-object v1

    .line 1312
    const-string v3, "h"

    invoke-interface {v1}, Lcom/google/firebase/database/connection/ListenHashProvider;->getSimpleHash()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    invoke-interface {v1}, Lcom/google/firebase/database/connection/ListenHashProvider;->shouldIncludeCompoundHash()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1315
    invoke-interface {v1}, Lcom/google/firebase/database/connection/ListenHashProvider;->getCompoundHash()Lcom/google/firebase/database/connection/CompoundHash;

    move-result-object v1

    .line 1317
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1318
    invoke-virtual {v1}, Lcom/google/firebase/database/connection/CompoundHash;->getPosts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1319
    invoke-static {v5}, Lcom/google/firebase/database/connection/ConnectionUtils;->pathToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1321
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1322
    const-string v5, "hs"

    invoke-virtual {v1}, Lcom/google/firebase/database/connection/CompoundHash;->getHashes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    const-string v1, "ps"

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    const-string v1, "ch"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    :cond_2
    new-instance v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$7;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$7;-><init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)V

    invoke-direct {p0, v2, v0, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    return-void
.end method

.method private sendOnDisconnect(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/firebase/database/connection/RequestResultCallback;",
            ")V"
        }
    .end annotation

    .line 839
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 840
    const-string v1, "p"

    invoke-static {p2}, Lcom/google/firebase/database/connection/ConnectionUtils;->pathToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    const-string p2, "d"

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    new-instance p2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;

    invoke-direct {p2, p0, p4}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;-><init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    return-void
.end method

.method private sendPut(J)V
    .locals 8

    .line 1236
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->canSendWrites()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1235
    const-string v2, "sendPut called when we can\'t send writes (we\'re disconnected or writes are paused)."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1238
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingPuts:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;

    .line 1239
    invoke-virtual {v6}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;->getOnComplete()Lcom/google/firebase/database/connection/RequestResultCallback;

    move-result-object v7

    .line 1240
    invoke-virtual {v6}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1242
    invoke-virtual {v6}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;->markSent()V

    .line 1245
    invoke-virtual {v6}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;->getRequest()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;-><init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Ljava/lang/String;JLcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    .line 1243
    invoke-direct {p0, v3, v0, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    return-void
.end method

.method private sendSensitive(Ljava/lang/String;ZLjava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;",
            ")V"
        }
    .end annotation

    .line 1422
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->nextRequestNumber()J

    move-result-wide v0

    .line 1423
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1424
    const-string v3, "r"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    const-string v3, "a"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    const-string p1, "b"

    invoke-interface {v2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->realtime:Lcom/google/firebase/database/connection/Connection;

    invoke-virtual {p1, v2, p2}, Lcom/google/firebase/database/connection/Connection;->sendRequest(Ljava/util/Map;Z)V

    .line 1428
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->requestCBHash:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private sendStats(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1363
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1364
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1365
    const-string v1, "c"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    new-instance p1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$8;

    invoke-direct {p1, p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$8;-><init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)V

    const-string v1, "s"

    invoke-direct {p0, v1, v0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    return-void

    .line 1383
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Not sending stats because stats are empty"

    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private sendUnAppCheck()V
    .locals 4

    .line 1131
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connected()Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Must be connected to send unauth."

    invoke-static {v0, v3, v2}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1132
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->appCheckToken:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "App check token must not be set."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1133
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "unappcheck"

    invoke-direct {p0, v2, v0, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    return-void
.end method

.method private sendUnauth()V
    .locals 4

    .line 1125
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connected()Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Must be connected to send unauth."

    invoke-static {v0, v3, v2}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1126
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authToken:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "Auth token must not be set."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1127
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "unauth"

    invoke-direct {p0, v2, v0, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    return-void
.end method

.method private sendUnlisten(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)V
    .locals 3

    .line 885
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 886
    invoke-static {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->access$700(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->access$100(Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->pathToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "p"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->getTag()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 890
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->getQuery()Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->access$200(Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)Ljava/util/Map;

    move-result-object p1

    const-string v2, "q"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    const-string p1, "t"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    :cond_0
    const-string p1, "n"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    return-void
.end method

.method private tryScheduleReconnect()V
    .locals 6

    .line 720
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->shouldReconnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 721
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Disconnected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Not in disconnected state: %s"

    invoke-static {v0, v3, v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 725
    iget-boolean v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->forceAuthTokenRefresh:Z

    .line 726
    iget-boolean v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->forceAppCheckTokenRefresh:Z

    .line 727
    iget-object v3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string v4, "Scheduling connection attempt"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 728
    iput-boolean v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->forceAuthTokenRefresh:Z

    .line 729
    iput-boolean v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->forceAppCheckTokenRefresh:Z

    .line 730
    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->retryHelper:Lcom/google/firebase/database/connection/util/RetryHelper;

    new-instance v3, Lcom/google/firebase/database/connection/PersistentConnectionImpl$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$$ExternalSyntheticLambda4;-><init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;ZZ)V

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/connection/util/RetryHelper;->retry(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private upgradeAppCheck()V
    .locals 1

    const/4 v0, 0x0

    .line 1027
    invoke-direct {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAppCheckTokenHelper(Z)V

    return-void
.end method

.method private upgradeAuth()V
    .locals 1

    const/4 v0, 0x0

    .line 1023
    invoke-direct {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAuthHelper(Z)V

    return-void
.end method

.method private warnOnListenerWarnings(Ljava/util/List;Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;",
            ")V"
        }
    .end annotation

    .line 1389
    const-string v0, "no_index"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1390
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\".indexOn\": \""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->access$200(Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "i"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1391
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Using an unspecified index. Your data will be downloaded and filtered on the client. Consider adding \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' at "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1396
    invoke-static {p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->access$100(Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/google/firebase/database/connection/ConnectionUtils;->pathToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " to your security and Firebase Database rules for better performance"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1391
    invoke-virtual {v0, p1}, Lcom/google/firebase/database/logging/LogWrapper;->warn(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public compareAndPut(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/database/connection/RequestResultCallback;",
            ")V"
        }
    .end annotation

    .line 455
    const-string v1, "p"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->putInternal(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    return-void
.end method

.method public get(Ljava/util/List;Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 406
    new-instance v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;-><init>(Ljava/util/List;Ljava/util/Map;)V

    .line 407
    new-instance p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 409
    iget-wide v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->readCounter:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->readCounter:J

    .line 411
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 412
    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->access$100(Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/database/connection/ConnectionUtils;->pathToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "p"

    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    const-string v3, "q"

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->access$200(Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    new-instance v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;

    new-instance v3, Lcom/google/firebase/database/connection/PersistentConnectionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    const/4 v4, 0x0

    const-string v5, "g"

    invoke-direct {v0, v5, p2, v3, v4}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;)V

    .line 428
    iget-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingGets:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->canSendReads()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 431
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendGet(Ljava/lang/Long;)V

    .line 433
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    .line 434
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public initialize()V
    .locals 0

    .line 439
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->tryScheduleReconnect()V

    return-void
.end method

.method public injectConnectionFailure()V
    .locals 1

    .line 1481
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->realtime:Lcom/google/firebase/database/connection/Connection;

    if-eqz v0, :cond_0

    .line 1482
    invoke-virtual {v0}, Lcom/google/firebase/database/connection/Connection;->injectConnectionFailure()V

    :cond_0
    return-void
.end method

.method public interrupt(Ljava/lang/String;)V
    .locals 3

    .line 626
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection interrupted for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->interruptReasons:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 629
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->realtime:Lcom/google/firebase/database/connection/Connection;

    if-eqz p1, :cond_1

    .line 631
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/Connection;->close()V

    const/4 p1, 0x0

    .line 632
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->realtime:Lcom/google/firebase/database/connection/Connection;

    goto :goto_0

    .line 634
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->retryHelper:Lcom/google/firebase/database/connection/util/RetryHelper;

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/util/RetryHelper;->cancel()V

    .line 635
    sget-object p1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Disconnected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    .line 638
    :goto_0
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->retryHelper:Lcom/google/firebase/database/connection/util/RetryHelper;

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/util/RetryHelper;->signalSuccess()V

    return-void
.end method

.method public isInterrupted(Ljava/lang/String;)Z
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->interruptReasons:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$sendAppCheckTokenHelper$4$com-google-firebase-database-connection-PersistentConnectionImpl(ZLjava/util/Map;)V
    .locals 5

    .line 1101
    const-string v0, "s"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1102
    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1103
    iput v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->invalidAppCheckTokenCount:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1105
    iput-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->appCheckToken:Ljava/lang/String;

    const/4 v1, 0x1

    .line 1106
    iput-boolean v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->forceAppCheckTokenRefresh:Z

    .line 1107
    const-string v1, "d"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1108
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "App check failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p2, v0}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-eqz p1, :cond_1

    .line 1114
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->restoreState()V

    :cond_1
    return-void
.end method

.method synthetic lambda$tryScheduleReconnect$1$com-google-firebase-database-connection-PersistentConnectionImpl(JLcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;Ljava/lang/Void;)V
    .locals 2

    .line 747
    iget-wide v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->currentGetTokenAttempt:J

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_2

    .line 748
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    sget-object p5, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->GettingToken:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    if-ne p1, p5, :cond_0

    .line 749
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string p5, "Successfully fetched token, opening connection"

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p5, p2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 750
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->openNetworkConnection(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 751
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    sget-object p3, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Disconnected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    if-ne p1, p3, :cond_1

    .line 752
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string p3, "Not opening connection after token refresh, because connection was set to disconnected"

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p3, p2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 757
    :cond_2
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string p3, "Ignoring getToken result, because this was not the latest attempt."

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p3, p2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$tryScheduleReconnect$2$com-google-firebase-database-connection-PersistentConnectionImpl(JLjava/lang/Exception;)V
    .locals 2

    .line 765
    iget-wide v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->currentGetTokenAttempt:J

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 766
    sget-object p1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Disconnected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    .line 767
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error fetching token: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p3, p2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 768
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->tryScheduleReconnect()V

    return-void

    .line 770
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string p3, "Ignoring getToken error, because this was not the latest attempt."

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p3, p2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$tryScheduleReconnect$3$com-google-firebase-database-connection-PersistentConnectionImpl(ZZ)V
    .locals 12

    .line 732
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Disconnected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "Not in disconnected state: %s"

    invoke-static {v0, v4, v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 736
    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->GettingToken:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    iput-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    .line 737
    iget-wide v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->currentGetTokenAttempt:J

    const-wide/16 v4, 0x1

    add-long v8, v0, v4

    iput-wide v8, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->currentGetTokenAttempt:J

    .line 740
    invoke-direct {p0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->fetchAuthToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v10

    .line 741
    invoke-direct {p0, p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->fetchAppCheckToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v11

    const/4 p1, 0x2

    .line 743
    new-array p1, p1, [Lcom/google/android/gms/tasks/Task;

    aput-object v10, p1, v3

    aput-object v11, p1, v2

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->whenAll([Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v6, Lcom/google/firebase/database/connection/PersistentConnectionImpl$$ExternalSyntheticLambda2;

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;JLcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)V

    .line 744
    invoke-virtual {p1, p2, v6}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object p2, v7, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, v8, v9}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$$ExternalSyntheticLambda3;-><init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;J)V

    .line 762
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public listen(Ljava/util/List;Ljava/util/Map;Lcom/google/firebase/database/connection/ListenHashProvider;Ljava/lang/Long;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/firebase/database/connection/ListenHashProvider;",
            "Ljava/lang/Long;",
            "Lcom/google/firebase/database/connection/RequestResultCallback;",
            ")V"
        }
    .end annotation

    .line 387
    new-instance v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;

    invoke-direct {v2, p1, p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;-><init>(Ljava/util/List;Ljava/util/Map;)V

    .line 388
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Listening on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, p2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string v0, "listen() called twice for same QuerySpec."

    new-array v1, p2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 393
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding listen query: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    :cond_1
    new-instance v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    const/4 v5, 0x0

    move-object v4, p3

    move-object v3, p4

    move-object v1, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;-><init>(Lcom/google/firebase/database/connection/RequestResultCallback;Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;Ljava/lang/Long;Lcom/google/firebase/database/connection/ListenHashProvider;Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;)V

    .line 396
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connected()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 398
    invoke-direct {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendListen(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)V

    .line 400
    :cond_2
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-void
.end method

.method public merge(Ljava/util/List;Ljava/util/Map;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/firebase/database/connection/RequestResultCallback;",
            ")V"
        }
    .end annotation

    .line 460
    const-string v1, "m"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->putInternal(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    return-void
.end method

.method public onCacheHost(Ljava/lang/String;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->cachedHost:Ljava/lang/String;

    return-void
.end method

.method public onDataMessage(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 487
    const-string v0, "r"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "b"

    if-eqz v1, :cond_0

    .line 490
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 491
    iget-object v3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->requestCBHash:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;

    if-eqz v0, :cond_3

    .line 495
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 496
    invoke-interface {v0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;->onResponse(Ljava/util/Map;)V

    return-void

    .line 498
    :cond_0
    const-string v0, "error"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 500
    :cond_1
    const-string v0, "a"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 501
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 504
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 505
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onDataPush(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 507
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring unknown message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDisconnect(Lcom/google/firebase/database/connection/Connection$DisconnectReason;)V
    .locals 8

    .line 513
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got on disconnect due to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/Connection$DisconnectReason;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    :cond_0
    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Disconnected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    iput-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    const/4 v0, 0x0

    .line 515
    iput-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->realtime:Lcom/google/firebase/database/connection/Connection;

    .line 516
    iput-boolean v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->hasOnDisconnects:Z

    .line 517
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->requestCBHash:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 518
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->cancelSentTransactions()V

    .line 519
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->shouldReconnect()Z

    move-result v0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_4

    .line 521
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->lastConnectionEstablishedTime:J

    sub-long/2addr v4, v6

    cmp-long v0, v6, v2

    if-lez v0, :cond_1

    const-wide/16 v6, 0x7530

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 529
    :cond_1
    sget-object v0, Lcom/google/firebase/database/connection/Connection$DisconnectReason;->SERVER_RESET:Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    if-eq p1, v0, :cond_2

    if-eqz v1, :cond_3

    .line 530
    :cond_2
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->retryHelper:Lcom/google/firebase/database/connection/util/RetryHelper;

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/util/RetryHelper;->signalSuccess()V

    .line 532
    :cond_3
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->tryScheduleReconnect()V

    .line 534
    :cond_4
    iput-wide v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->lastConnectionEstablishedTime:J

    .line 535
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->delegate:Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    invoke-interface {p1}, Lcom/google/firebase/database/connection/PersistentConnection$Delegate;->onDisconnect()V

    return-void
.end method

.method public onDisconnectCancel(Ljava/util/List;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/firebase/database/connection/RequestResultCallback;",
            ")V"
        }
    .end annotation

    .line 615
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->canSendWrites()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    const-string v0, "oc"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendOnDisconnect(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    goto :goto_0

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onDisconnectRequestQueue:Ljava/util/List;

    new-instance v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v2, "oc"

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-void
.end method

.method public onDisconnectMerge(Ljava/util/List;Ljava/util/Map;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/firebase/database/connection/RequestResultCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 600
    iput-boolean v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->hasOnDisconnects:Z

    .line 601
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->canSendWrites()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    const-string v0, "om"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendOnDisconnect(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    goto :goto_0

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onDisconnectRequestQueue:Ljava/util/List;

    new-instance v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;

    const-string v2, "om"

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-void
.end method

.method public onDisconnectPut(Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/firebase/database/connection/RequestResultCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 579
    iput-boolean v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->hasOnDisconnects:Z

    .line 580
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->canSendWrites()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    const-string v0, "o"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendOnDisconnect(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    goto :goto_0

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onDisconnectRequestQueue:Ljava/util/List;

    new-instance v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;

    const-string v2, "o"

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-void
.end method

.method public onKill(Ljava/lang/String;)V
    .locals 5

    .line 540
    const-string v0, "Invalid appcheck token"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->invalidAppCheckTokenCount:I

    int-to-long v1, v0

    const-wide/16 v3, 0x3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 542
    iput v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->invalidAppCheckTokenCount:I

    .line 543
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Detected invalid AppCheck token. Reconnecting ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->invalidAppCheckTokenCount:I

    int-to-long v1, v1

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " attempts remaining)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/logging/LogWrapper;->warn(Ljava/lang/String;)V

    return-void

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Firebase Database connection was forcefully killed by the server. Will not attempt reconnect. Reason: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/logging/LogWrapper;->warn(Ljava/lang/String;)V

    .line 553
    const-string p1, "server_kill"

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->interrupt(Ljava/lang/String;)V

    return-void
.end method

.method public onReady(JLjava/lang/String;)V
    .locals 4

    .line 361
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string v2, "onReady"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->lastConnectionEstablishedTime:J

    .line 363
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->handleTimestamp(J)V

    .line 365
    iget-boolean p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->firstConnection:Z

    if-eqz p1, :cond_1

    .line 366
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendConnectStats()V

    .line 369
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->restoreTokens()V

    .line 370
    iput-boolean v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->firstConnection:Z

    .line 371
    iput-object p3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->lastSessionId:Ljava/lang/String;

    .line 372
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->delegate:Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    invoke-interface {p1}, Lcom/google/firebase/database/connection/PersistentConnection$Delegate;->onConnect()V

    return-void
.end method

.method public openNetworkConnection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 819
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->GettingToken:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Trying to open network connection while in the wrong state: %s"

    invoke-static {v0, v3, v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_1

    .line 826
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->delegate:Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    invoke-interface {v0, v2}, Lcom/google/firebase/database/connection/PersistentConnection$Delegate;->onConnectionStatus(Z)V

    .line 828
    :cond_1
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authToken:Ljava/lang/String;

    .line 829
    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->appCheckToken:Ljava/lang/String;

    .line 830
    sget-object p1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Connecting:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    .line 831
    new-instance v0, Lcom/google/firebase/database/connection/Connection;

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->context:Lcom/google/firebase/database/connection/ConnectionContext;

    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->hostInfo:Lcom/google/firebase/database/connection/HostInfo;

    iget-object v3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->cachedHost:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->lastSessionId:Ljava/lang/String;

    move-object v4, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/database/connection/Connection;-><init>(Lcom/google/firebase/database/connection/ConnectionContext;Lcom/google/firebase/database/connection/HostInfo;Ljava/lang/String;Lcom/google/firebase/database/connection/Connection$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v4, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->realtime:Lcom/google/firebase/database/connection/Connection;

    .line 834
    invoke-virtual {v0}, Lcom/google/firebase/database/connection/Connection;->open()V

    return-void
.end method

.method public purgeOutstandingWrites()V
    .locals 5

    .line 465
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingPuts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "write_canceled"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;

    .line 466
    invoke-static {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;->access$400(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;)Lcom/google/firebase/database/connection/RequestResultCallback;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 467
    invoke-static {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;->access$400(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;)Lcom/google/firebase/database/connection/RequestResultCallback;

    move-result-object v1

    invoke-interface {v1, v3, v2}, Lcom/google/firebase/database/connection/RequestResultCallback;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onDisconnectRequestQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;

    .line 471
    invoke-static {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->access$500(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;)Lcom/google/firebase/database/connection/RequestResultCallback;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 472
    invoke-static {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->access$500(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;)Lcom/google/firebase/database/connection/RequestResultCallback;

    move-result-object v1

    invoke-interface {v1, v3, v2}, Lcom/google/firebase/database/connection/RequestResultCallback;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 475
    :cond_3
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingPuts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 476
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onDisconnectRequestQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 479
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connected()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 480
    iput-boolean v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->hasOnDisconnects:Z

    .line 482
    :cond_4
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-void
.end method

.method public put(Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/firebase/database/connection/RequestResultCallback;",
            ")V"
        }
    .end annotation

    .line 449
    const-string v1, "p"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->putInternal(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    return-void
.end method

.method public refreshAppCheckToken()V
    .locals 3

    .line 697
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "App check token refresh requested"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 702
    const-string v0, "token_refresh"

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->interrupt(Ljava/lang/String;)V

    .line 703
    invoke-virtual {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->resume(Ljava/lang/String;)V

    return-void
.end method

.method public refreshAppCheckToken(Ljava/lang/String;)V
    .locals 3

    .line 708
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "App check token refreshed."

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 709
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->appCheckToken:Ljava/lang/String;

    .line 710
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connected()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 712
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->upgradeAppCheck()V

    return-void

    .line 714
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendUnAppCheck()V

    :cond_1
    return-void
.end method

.method public refreshAuthToken()V
    .locals 3

    .line 673
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Auth token refresh requested"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 678
    const-string v0, "token_refresh"

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->interrupt(Ljava/lang/String;)V

    .line 679
    invoke-virtual {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->resume(Ljava/lang/String;)V

    return-void
.end method

.method public refreshAuthToken(Ljava/lang/String;)V
    .locals 3

    .line 684
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Auth token refreshed."

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 685
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authToken:Ljava/lang/String;

    .line 686
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connected()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 688
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->upgradeAuth()V

    return-void

    .line 690
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendUnauth()V

    :cond_1
    return-void
.end method

.method public resume(Ljava/lang/String;)V
    .locals 3

    .line 643
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection no longer interrupted for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->interruptReasons:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 649
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->shouldReconnect()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Disconnected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    if-ne p1, v0, :cond_1

    .line 650
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->tryScheduleReconnect()V

    :cond_1
    return-void
.end method

.method shouldReconnect()Z
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->interruptReasons:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public shutdown()V
    .locals 1

    .line 444
    const-string v0, "shutdown"

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->interrupt(Ljava/lang/String;)V

    return-void
.end method

.method public unlisten(Ljava/util/List;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 559
    new-instance v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;-><init>(Ljava/util/List;Ljava/util/Map;)V

    .line 560
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "unlistening on "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->removeListen(Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 566
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connected()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 567
    invoke-direct {p0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendUnlisten(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)V

    .line 569
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-void
.end method
