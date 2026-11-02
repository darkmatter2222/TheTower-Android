.class public Lcom/google/unity/ump/UnityConsentForm;
.super Ljava/lang/Object;
.source "UnityConsentForm.java"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final callback:Lcom/google/unity/ump/UnityConsentFormCallback;

.field private final onConsentFormDismissedListener:Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetcallback(Lcom/google/unity/ump/UnityConsentForm;)Lcom/google/unity/ump/UnityConsentFormCallback;
    .locals 0

    iget-object p0, p0, Lcom/google/unity/ump/UnityConsentForm;->callback:Lcom/google/unity/ump/UnityConsentFormCallback;

    return-object p0
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/unity/ump/UnityConsentFormCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "callback"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/google/unity/ump/UnityConsentForm$1;

    invoke-direct {v0, p0}, Lcom/google/unity/ump/UnityConsentForm$1;-><init>(Lcom/google/unity/ump/UnityConsentForm;)V

    iput-object v0, p0, Lcom/google/unity/ump/UnityConsentForm;->onConsentFormDismissedListener:Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;

    .line 37
    iput-object p1, p0, Lcom/google/unity/ump/UnityConsentForm;->activity:Landroid/app/Activity;

    .line 38
    iput-object p2, p0, Lcom/google/unity/ump/UnityConsentForm;->callback:Lcom/google/unity/ump/UnityConsentFormCallback;

    return-void
.end method


# virtual methods
.method public loadAndShowConsentFormIfRequired()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/google/unity/ump/UnityConsentForm;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/unity/ump/UnityConsentForm;->onConsentFormDismissedListener:Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;

    invoke-static {v0, v1}, Lcom/google/android/ump/UserMessagingPlatform;->loadAndShowConsentFormIfRequired(Landroid/app/Activity;Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V

    return-void
.end method

.method public show(Lcom/google/android/ump/ConsentForm;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consentForm"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/google/unity/ump/UnityConsentForm;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/unity/ump/UnityConsentForm;->onConsentFormDismissedListener:Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;

    invoke-interface {p1, v0, v1}, Lcom/google/android/ump/ConsentForm;->show(Landroid/app/Activity;Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V

    return-void
.end method

.method public showPrivacyOptionsForm()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/google/unity/ump/UnityConsentForm;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/unity/ump/UnityConsentForm;->onConsentFormDismissedListener:Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;

    invoke-static {v0, v1}, Lcom/google/android/ump/UserMessagingPlatform;->showPrivacyOptionsForm(Landroid/app/Activity;Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V

    return-void
.end method
