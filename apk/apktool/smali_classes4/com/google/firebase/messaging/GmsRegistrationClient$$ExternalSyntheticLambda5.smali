.class public final synthetic Lcom/google/firebase/messaging/GmsRegistrationClient$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/messaging/GmsRegistrationClient;

.field public final synthetic f$1:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/GmsRegistrationClient;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/GmsRegistrationClient$$ExternalSyntheticLambda5;->f$0:Lcom/google/firebase/messaging/GmsRegistrationClient;

    iput-object p2, p0, Lcom/google/firebase/messaging/GmsRegistrationClient$$ExternalSyntheticLambda5;->f$1:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/firebase/messaging/GmsRegistrationClient$$ExternalSyntheticLambda5;->f$0:Lcom/google/firebase/messaging/GmsRegistrationClient;

    iget-object v1, p0, Lcom/google/firebase/messaging/GmsRegistrationClient$$ExternalSyntheticLambda5;->f$1:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/messaging/GmsRegistrationClient;->lambda$registerInternal$4$com-google-firebase-messaging-GmsRegistrationClient(Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
