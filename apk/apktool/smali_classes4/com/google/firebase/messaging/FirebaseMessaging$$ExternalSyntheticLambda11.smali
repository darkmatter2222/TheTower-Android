.class public final synthetic Lcom/google/firebase/messaging/FirebaseMessaging$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/messaging/FirebaseMessaging;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/google/firebase/messaging/Store$Token;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;ZLcom/google/firebase/messaging/Store$Token;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging$$ExternalSyntheticLambda11;->f$0:Lcom/google/firebase/messaging/FirebaseMessaging;

    iput-object p2, p0, Lcom/google/firebase/messaging/FirebaseMessaging$$ExternalSyntheticLambda11;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/firebase/messaging/FirebaseMessaging$$ExternalSyntheticLambda11;->f$2:Z

    iput-object p4, p0, Lcom/google/firebase/messaging/FirebaseMessaging$$ExternalSyntheticLambda11;->f$3:Lcom/google/firebase/messaging/Store$Token;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging$$ExternalSyntheticLambda11;->f$0:Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging$$ExternalSyntheticLambda11;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging$$ExternalSyntheticLambda11;->f$2:Z

    iget-object v3, p0, Lcom/google/firebase/messaging/FirebaseMessaging$$ExternalSyntheticLambda11;->f$3:Lcom/google/firebase/messaging/Store$Token;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->lambda$blockingRegister$16$com-google-firebase-messaging-FirebaseMessaging(Ljava/lang/String;ZLcom/google/firebase/messaging/Store$Token;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
