.class Lcom/google/firebase/messaging/GmsRegistrationClient;
.super Ljava/lang/Object;
.source "GmsRegistrationClient.java"


# static fields
.field private static final FCM_SDK_VERSION_PREFIX:Ljava/lang/String; = "fcm-"

.field private static final GMS_VERSION_Y2026W12:I = 0xf919880

.field static final MANIFEST_METADATA_FIREBASE_MESSAGING_INSTALLATION_ID_ENABLED:Ljava/lang/String; = "firebase_messaging_installation_id_enabled"


# instance fields
.field private final app:Lcom/google/firebase/FirebaseApp;

.field private final client:Lcom/google/android/gms/cloudmessaging/CloudMessagingClient;

.field private final firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

.field private final gmsRpc:Lcom/google/firebase/messaging/GmsRpc;

.field private final metadata:Lcom/google/firebase/messaging/Metadata;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/messaging/GmsRpc;Lcom/google/firebase/messaging/Metadata;)V
    .locals 6

    .line 57
    invoke-static {p1}, Lcom/google/android/gms/cloudmessaging/CloudMessaging;->getClient(Landroid/content/Context;)Lcom/google/android/gms/cloudmessaging/CloudMessagingClient;

    move-result-object v4

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/messaging/GmsRegistrationClient;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/messaging/GmsRpc;Lcom/google/android/gms/cloudmessaging/CloudMessagingClient;Lcom/google/firebase/messaging/Metadata;)V

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/messaging/GmsRpc;Lcom/google/android/gms/cloudmessaging/CloudMessagingClient;Lcom/google/firebase/messaging/Metadata;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p4, p0, Lcom/google/firebase/messaging/GmsRegistrationClient;->client:Lcom/google/android/gms/cloudmessaging/CloudMessagingClient;

    .line 68
    iput-object p1, p0, Lcom/google/firebase/messaging/GmsRegistrationClient;->app:Lcom/google/firebase/FirebaseApp;

    .line 69
    iput-object p2, p0, Lcom/google/firebase/messaging/GmsRegistrationClient;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 70
    iput-object p3, p0, Lcom/google/firebase/messaging/GmsRegistrationClient;->gmsRpc:Lcom/google/firebase/messaging/GmsRpc;

    .line 71
    iput-object p5, p0, Lcom/google/firebase/messaging/GmsRegistrationClient;->metadata:Lcom/google/firebase/messaging/Metadata;

    return-void
.end method

.method private fetchFidCredentials(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/google/firebase/messaging/GmsRegistrationClient;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    const/4 v1, 0x0

    .line 132
    invoke-interface {v0, v1}, Lcom/google/firebase/installations/FirebaseInstallationsApi;->getToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/messaging/GmsRegistrationClient$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/messaging/GmsRegistrationClient$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/messaging/GmsRegistrationClient;Ljava/util/concurrent/ExecutorService;)V

    .line 133
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private getOrCreateException(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Exception;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "*>;)",
            "Ljava/lang/Exception;"
        }
    .end annotation

    .line 116
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    return-object p1

    .line 118
    :cond_0
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected Error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private haveV1RegistrationSupport()Z
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/google/firebase/messaging/GmsRegistrationClient;->metadata:Lcom/google/firebase/messaging/Metadata;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/Metadata;->getGmsVersionCode()I

    move-result v0

    const v1, 0xf919880

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isFidAlreadyUsedException(Ljava/lang/Exception;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FID_ALREADY_USED:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$registerInternal$3(Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 208
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 220
    :cond_0
    new-instance p0, Ljava/util/concurrent/ExecutionException;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected Error: FID NOT matching!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 209
    :cond_1
    new-instance p0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method private registerInternal()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lcom/google/firebase/messaging/GmsRegistrationClient;->isV1RegistrationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-direct {p0}, Lcom/google/firebase/messaging/GmsRegistrationClient;->haveV1RegistrationSupport()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    invoke-static {}, Lcom/google/firebase/messaging/FcmExecutors;->newNetworkIOExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 193
    invoke-direct {p0, v0}, Lcom/google/firebase/messaging/GmsRegistrationClient;->fetchFidCredentials(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/messaging/GmsRegistrationClient$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/messaging/GmsRegistrationClient$$ExternalSyntheticLambda5;-><init>(Lcom/google/firebase/messaging/GmsRegistrationClient;Ljava/util/concurrent/ExecutorService;)V

    .line 194
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 188
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/messaging/GmsRegistrationClient;->gmsRpc:Lcom/google/firebase/messaging/GmsRpc;

    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/GmsRpc;->getToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method private registerOverV1(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/google/firebase/messaging/GmsRegistrationClient;->app:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    move-result-object v4

    .line 230
    iget-object v0, p0, Lcom/google/firebase/messaging/GmsRegistrationClient;->app:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    .line 231
    iget-object v0, p0, Lcom/google/firebase/messaging/GmsRegistrationClient;->app:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/messaging/Metadata;->getDefaultSenderId(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v2

    .line 234
    new-instance v1, Lcom/google/android/gms/cloudmessaging/RegisterRequest;

    const-string v7, "fcm-25.1.3"

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/cloudmessaging/RegisterRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object p1, p0, Lcom/google/firebase/messaging/GmsRegistrationClient;->client:Lcom/google/android/gms/cloudmessaging/CloudMessagingClient;

    invoke-interface {p1, v1}, Lcom/google/android/gms/cloudmessaging/CloudMessagingClient;->register(Lcom/google/android/gms/cloudmessaging/RegisterRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private unregisterOverV1()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 257
    invoke-static {}, Lcom/google/firebase/messaging/FcmExecutors;->newNetworkIOExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 259
    invoke-direct {p0, v0}, Lcom/google/firebase/messaging/GmsRegistrationClient;->fetchFidCredentials(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/messaging/GmsRegistrationClient$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/google/firebase/messaging/GmsRegistrationClient$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/messaging/GmsRegistrationClient;)V

    .line 260
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isV1RegistrationEnabled()Z
    .locals 4

    .line 85
    const-string v0, "firebase_messaging_installation_id_enabled"

    iget-object v1, p0, Lcom/google/firebase/messaging/GmsRegistrationClient;->app:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 87
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    .line 90
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 92
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 93
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$fetchFidCredentials$0$com-google-firebase-messaging-GmsRegistrationClient(Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 145
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-direct {p0, p2}, Lcom/google/firebase/messaging/GmsRegistrationClient;->getOrCreateException(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 148
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 149
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$fetchFidCredentials$1$com-google-firebase-messaging-GmsRegistrationClient(Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-direct {p0, p2}, Lcom/google/firebase/messaging/GmsRegistrationClient;->getOrCreateException(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 139
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/installations/InstallationTokenResult;

    invoke-virtual {p2}, Lcom/google/firebase/installations/InstallationTokenResult;->getToken()Ljava/lang/String;

    move-result-object p2

    .line 140
    iget-object v0, p0, Lcom/google/firebase/messaging/GmsRegistrationClient;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 141
    invoke-interface {v0}, Lcom/google/firebase/installations/FirebaseInstallationsApi;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/messaging/GmsRegistrationClient$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lcom/google/firebase/messaging/GmsRegistrationClient$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/messaging/GmsRegistrationClient;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$register$2$com-google-firebase-messaging-GmsRegistrationClient(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 165
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 171
    invoke-static {v0}, Lcom/google/firebase/messaging/GmsRegistrationClient;->isFidAlreadyUsedException(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    const-string p1, "FirebaseMessaging"

    const-string v0, "FID_ALREADY_USED Detected. Retrying with FID cache clearing!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object p1, p0, Lcom/google/firebase/messaging/GmsRegistrationClient;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    invoke-interface {p1}, Lcom/google/firebase/installations/FirebaseInstallationsApi;->clearFidCache()V

    .line 175
    invoke-direct {p0}, Lcom/google/firebase/messaging/GmsRegistrationClient;->registerInternal()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method synthetic lambda$registerInternal$4$com-google-firebase-messaging-GmsRegistrationClient(Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 197
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    invoke-direct {p0, p2}, Lcom/google/firebase/messaging/GmsRegistrationClient;->getOrCreateException(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 201
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 202
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    .line 204
    invoke-direct {p0, v0, p2}, Lcom/google/firebase/messaging/GmsRegistrationClient;->registerOverV1(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v1, Lcom/google/firebase/messaging/GmsRegistrationClient$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/google/firebase/messaging/GmsRegistrationClient$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$unregisterOverV1$5$com-google-firebase-messaging-GmsRegistrationClient(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 263
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/GmsRegistrationClient;->getOrCreateException(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 267
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 268
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 269
    iget-object v1, p0, Lcom/google/firebase/messaging/GmsRegistrationClient;->app:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    move-result-object v1

    .line 270
    iget-object v2, p0, Lcom/google/firebase/messaging/GmsRegistrationClient;->app:Lcom/google/firebase/FirebaseApp;

    invoke-static {v2}, Lcom/google/firebase/messaging/Metadata;->getDefaultSenderId(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v2

    .line 272
    new-instance v3, Lcom/google/android/gms/cloudmessaging/UnregisterRequest;

    invoke-direct {v3, v2, v1, v0, p1}, Lcom/google/android/gms/cloudmessaging/UnregisterRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object p1, p0, Lcom/google/firebase/messaging/GmsRegistrationClient;->client:Lcom/google/android/gms/cloudmessaging/CloudMessagingClient;

    invoke-interface {p1, v3}, Lcom/google/android/gms/cloudmessaging/CloudMessagingClient;->unregister(Lcom/google/android/gms/cloudmessaging/UnregisterRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public register()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Lcom/google/firebase/messaging/GmsRegistrationClient;->registerInternal()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 163
    invoke-static {}, Lcom/google/firebase/messaging/FcmExecutors;->newTaskExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/messaging/GmsRegistrationClient$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/google/firebase/messaging/GmsRegistrationClient$$ExternalSyntheticLambda3;-><init>(Lcom/google/firebase/messaging/GmsRegistrationClient;)V

    .line 162
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public unregister()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "*>;"
        }
    .end annotation

    .line 245
    invoke-virtual {p0}, Lcom/google/firebase/messaging/GmsRegistrationClient;->isV1RegistrationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    invoke-direct {p0}, Lcom/google/firebase/messaging/GmsRegistrationClient;->haveV1RegistrationSupport()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/messaging/GmsRegistrationClient;->unregisterOverV1()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 249
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/messaging/GmsRegistrationClient;->gmsRpc:Lcom/google/firebase/messaging/GmsRpc;

    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/GmsRpc;->deleteToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
