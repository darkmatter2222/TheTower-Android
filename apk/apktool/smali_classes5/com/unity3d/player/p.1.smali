.class public final Lcom/unity3d/player/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/unity3d/player/FirebaseIdentifiersHelper;->-$$Nest$smnativeOnFirebaseAppInstanceIdResult(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 44
    invoke-static {p1}, Lcom/unity3d/player/FirebaseIdentifiersHelper;->-$$Nest$smnativeOnFirebaseAppInstanceIdResult(Ljava/lang/String;)V

    return-void
.end method
