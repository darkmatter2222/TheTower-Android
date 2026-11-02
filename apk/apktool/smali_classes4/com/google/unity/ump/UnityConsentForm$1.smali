.class Lcom/google/unity/ump/UnityConsentForm$1;
.super Ljava/lang/Object;
.source "UnityConsentForm.java"

# interfaces
.implements Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/unity/ump/UnityConsentForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/unity/ump/UnityConsentForm;


# direct methods
.method constructor <init>(Lcom/google/unity/ump/UnityConsentForm;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/google/unity/ump/UnityConsentForm$1;->this$0:Lcom/google/unity/ump/UnityConsentForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onConsentFormDismissed$0$com-google-unity-ump-UnityConsentForm$1(Lcom/google/android/ump/FormError;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/unity/ump/UnityConsentForm$1;->this$0:Lcom/google/unity/ump/UnityConsentForm;

    invoke-static {v0}, Lcom/google/unity/ump/UnityConsentForm;->-$$Nest$fgetcallback(Lcom/google/unity/ump/UnityConsentForm;)Lcom/google/unity/ump/UnityConsentFormCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/google/unity/ump/UnityConsentForm$1;->this$0:Lcom/google/unity/ump/UnityConsentForm;

    invoke-static {v0}, Lcom/google/unity/ump/UnityConsentForm;->-$$Nest$fgetcallback(Lcom/google/unity/ump/UnityConsentForm;)Lcom/google/unity/ump/UnityConsentFormCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/unity/ump/UnityConsentFormCallback;->onConsentFormDismissed(Lcom/google/android/ump/FormError;)V

    :cond_0
    return-void
.end method

.method public onConsentFormDismissed(Lcom/google/android/ump/FormError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "error"
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/unity/ump/UnityConsentForm$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/unity/ump/UnityConsentForm$1$$ExternalSyntheticLambda0;-><init>(Lcom/google/unity/ump/UnityConsentForm$1;Lcom/google/android/ump/FormError;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 32
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
