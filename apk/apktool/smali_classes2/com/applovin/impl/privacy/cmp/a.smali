.class public Lcom/applovin/impl/privacy/cmp/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/privacy/cmp/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/l;

.field private final b:Lcom/applovin/impl/sdk/p;

.field private c:Lcom/google/android/ump/ConsentForm;

.field private d:I


# direct methods
.method public static synthetic $r8$lambda$2j9liPp92mA1c2mCW_pCDV6p7wI(Lcom/applovin/impl/privacy/cmp/a;Lcom/applovin/impl/privacy/cmp/a$a;Lcom/google/android/ump/FormError;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/privacy/cmp/a;->a(Lcom/applovin/impl/privacy/cmp/a$a;Lcom/google/android/ump/FormError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$33yZb1Yb9XyIB5h4msmQWceHb7I(Lcom/applovin/impl/privacy/cmp/a;Landroid/app/Activity;Lcom/applovin/impl/privacy/cmp/a$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/privacy/cmp/a;->a(Landroid/app/Activity;Lcom/applovin/impl/privacy/cmp/a$a;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5fhbJdN0LjlwdcLn1_emP6hl3uo(Lcom/applovin/impl/privacy/cmp/a;Lcom/applovin/impl/privacy/cmp/a$a;Lcom/google/android/ump/FormError;Lcom/google/android/ump/FormError;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/privacy/cmp/a;->a(Lcom/applovin/impl/privacy/cmp/a$a;Lcom/google/android/ump/FormError;Lcom/google/android/ump/FormError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8SEPh2zPRwOUvUlKuSHWNH16lc8(Lcom/applovin/impl/privacy/cmp/a;Lcom/applovin/impl/privacy/cmp/a$a;Lcom/google/android/ump/ConsentForm;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/privacy/cmp/a;->a(Lcom/applovin/impl/privacy/cmp/a$a;Lcom/google/android/ump/ConsentForm;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MUWFviAwG63NAOXs5uRjhC8duTA(Lcom/applovin/impl/privacy/cmp/a;Lcom/applovin/impl/privacy/cmp/a$a;Lcom/google/android/ump/FormError;Lcom/applovin/impl/m0;Lcom/google/android/ump/ConsentForm;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/impl/privacy/cmp/a;->a(Lcom/applovin/impl/privacy/cmp/a$a;Lcom/google/android/ump/FormError;Lcom/applovin/impl/m0;Lcom/google/android/ump/ConsentForm;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SNEkgHNpvC1gSkEtwh6qJ02tFCA(Lcom/applovin/impl/privacy/cmp/a;Lcom/google/android/ump/FormError;Lcom/applovin/impl/m0;Lcom/applovin/impl/privacy/cmp/a$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/privacy/cmp/a;->a(Lcom/google/android/ump/FormError;Lcom/applovin/impl/m0;Lcom/applovin/impl/privacy/cmp/a$a;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gVtXTYSb8ZVmQUSi5yaVb9gi-Uk(Lcom/applovin/impl/privacy/cmp/a;Lcom/applovin/impl/m0;Lcom/applovin/impl/privacy/cmp/a$a;Lcom/google/android/ump/FormError;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/privacy/cmp/a;->a(Lcom/applovin/impl/m0;Lcom/applovin/impl/privacy/cmp/a$a;Lcom/google/android/ump/FormError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$slmmX5Wu6GwiDJZDdHNz7ptcmRg(Lcom/applovin/impl/privacy/cmp/a;Lcom/applovin/impl/privacy/cmp/a$a;Lcom/google/android/ump/FormError;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/privacy/cmp/a;->b(Lcom/applovin/impl/privacy/cmp/a$a;Lcom/google/android/ump/FormError;)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/sdk/l;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/applovin/impl/privacy/cmp/a;->a:Lcom/applovin/impl/sdk/l;

    .line 3
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/privacy/cmp/a;->b:Lcom/applovin/impl/sdk/p;

    .line 5
    invoke-static {}, Lcom/applovin/impl/sdk/l;->p()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/ump/UserMessagingPlatform;->getConsentInformation(Landroid/content/Context;)Lcom/google/android/ump/ConsentInformation;

    move-result-object p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initializing with SDK Version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/impl/privacy/cmp/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", consentStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8
    invoke-interface {p1}, Lcom/google/android/ump/ConsentInformation;->getConsentStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", consentFormAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9
    invoke-interface {p1}, Lcom/google/android/ump/ConsentInformation;->isConsentFormAvailable()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-direct {p0, p1}, Lcom/applovin/impl/privacy/cmp/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/google/android/ump/FormError;Ljava/lang/String;)Lcom/applovin/impl/privacy/cmp/CmpErrorImpl;
    .locals 3

    .line 102
    sget-object v0, Lcom/applovin/sdk/AppLovinCmpError$Code;->UNSPECIFIED:Lcom/applovin/sdk/AppLovinCmpError$Code;

    .line 103
    invoke-virtual {p1}, Lcom/google/android/ump/FormError;->getErrorCode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 106
    :cond_0
    sget-object v0, Lcom/applovin/sdk/AppLovinCmpError$Code;->INTEGRATION_ERROR:Lcom/applovin/sdk/AppLovinCmpError$Code;

    goto :goto_0

    .line 111
    :cond_1
    sget-object v0, Lcom/applovin/sdk/AppLovinCmpError$Code;->FORM_UNAVAILABLE:Lcom/applovin/sdk/AppLovinCmpError$Code;

    .line 115
    :goto_0
    new-instance v1, Lcom/applovin/impl/privacy/cmp/CmpErrorImpl;

    invoke-virtual {p1}, Lcom/google/android/ump/FormError;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/ump/FormError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p2, v2, p1}, Lcom/applovin/impl/privacy/cmp/CmpErrorImpl;-><init>(Lcom/applovin/sdk/AppLovinCmpError$Code;Ljava/lang/String;ILjava/lang/String;)V

    return-object v1
.end method

.method private synthetic a(Landroid/app/Activity;Lcom/applovin/impl/privacy/cmp/a$a;)V
    .locals 4

    .line 26
    invoke-static {p1}, Lcom/google/android/ump/UserMessagingPlatform;->getConsentInformation(Landroid/content/Context;)Lcom/google/android/ump/ConsentInformation;

    move-result-object v0

    .line 27
    invoke-interface {v0}, Lcom/google/android/ump/ConsentInformation;->isConsentFormAvailable()Z

    move-result v1

    .line 28
    invoke-interface {v0}, Lcom/google/android/ump/ConsentInformation;->getConsentStatus()I

    move-result v0

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Loaded parameters consentStatus: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", consentFormAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/applovin/impl/privacy/cmp/a;->a(Ljava/lang/String;)V

    if-nez v1, :cond_0

    .line 34
    const-string p1, "Failed to load form."

    invoke-direct {p0, p1}, Lcom/applovin/impl/privacy/cmp/a;->b(Ljava/lang/String;)V

    .line 36
    new-instance p1, Lcom/applovin/impl/privacy/cmp/CmpErrorImpl;

    sget-object v0, Lcom/applovin/sdk/AppLovinCmpError$Code;->FORM_UNAVAILABLE:Lcom/applovin/sdk/AppLovinCmpError$Code;

    const-string v1, "Consent form unavailable"

    invoke-direct {p1, v0, v1}, Lcom/applovin/impl/privacy/cmp/CmpErrorImpl;-><init>(Lcom/applovin/sdk/AppLovinCmpError$Code;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/applovin/impl/privacy/cmp/a$a;->onFlowLoadFailed(Lcom/applovin/impl/privacy/cmp/CmpErrorImpl;)V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Failed to load with consent status: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/impl/privacy/cmp/a;->b(Ljava/lang/String;)V

    .line 44
    new-instance p1, Lcom/applovin/impl/privacy/cmp/CmpErrorImpl;

    sget-object v1, Lcom/applovin/sdk/AppLovinCmpError$Code;->FORM_NOT_REQUIRED:Lcom/applovin/sdk/AppLovinCmpError$Code;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Consent form not required for consent status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/applovin/impl/privacy/cmp/CmpErrorImpl;-><init>(Lcom/applovin/sdk/AppLovinCmpError$Code;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/applovin/impl/privacy/cmp/a$a;->onFlowLoadFailed(Lcom/applovin/impl/privacy/cmp/CmpErrorImpl;)V

    return-void

    .line 48
    :cond_1
    const-string v0, "Successfully requested consent info"

    invoke-direct {p0, v0}, Lcom/applovin/impl/privacy/cmp/a;->a(Ljava/lang/String;)V

    .line 49
    const-string v0, "Loading consent form..."

    invoke-direct {p0, v0}, Lcom/applovin/impl/privacy/cmp/a;->a(Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/applovin/impl/privacy/cmp/a$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2}, Lcom/applovin/impl/privacy/cmp/a$$ExternalSyntheticLambda5;-><init>(Lcom/applovin/impl/privacy/cmp/a;Lcom/applovin/impl/privacy/cmp/a$a;)V

    new-instance v1, Lcom/applovin/impl/privacy/cmp/a$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2}, Lcom/applovin/impl/privacy/cmp/a$$ExternalSyntheticLambda6;-><init>(Lcom/applovin/impl/privacy/cmp/a;Lcom/applovin/impl/privacy/cmp/a$a;)V

    invoke-static {p1, v0, v1}, Lcom/google/android/ump/UserMessagingPlatform;->loadConsentForm(Landroid/content/Context;Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadSuccessListener;Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadFailureListener;)V

    return-void
.end method

.method private synthetic a(Lcom/applovin/impl/m0;Lcom/applovin/impl/privacy/cmp/a$a;Lcom/google/android/ump/FormError;)V
    .locals 6

    if-eqz p3, :cond_1

    .line 59
    invoke-virtual {p3}, Lcom/google/android/ump/FormError;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {p3}, Lcom/google/android/ump/FormError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 62
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 63
    const-string v3, "error_code"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v3, "error_message"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v3, p0, Lcom/applovin/impl/privacy/cmp/a;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/l;->E()Lcom/applovin/impl/s1;

    move-result-object v3

    sget-object v4, Lcom/applovin/impl/h2;->d1:Lcom/applovin/impl/h2;

    const-string v5, "googleConsentFormDismissed"

    invoke-virtual {v3, v4, v5, v2}, Lcom/applovin/impl/i2;->a(Lcom/applovin/impl/h2;Ljava/lang/String;Ljava/util/Map;)V

    .line 68
    invoke-direct {p0, v0}, Lcom/applovin/impl/privacy/cmp/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Consent form was dismissed due to error: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/applovin/impl/privacy/cmp/a;->a(Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/applovin/impl/privacy/cmp/a$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/applovin/impl/privacy/cmp/a$$ExternalSyntheticLambda7;-><init>(Lcom/applovin/impl/privacy/cmp/a;Lcom/google/android/ump/FormError;Lcom/applovin/impl/m0;Lcom/applovin/impl/privacy/cmp/a$a;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to show with error: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/impl/privacy/cmp/a;->b(Ljava/lang/String;)V

    .line 78
    const-string p1, "Consent form show failed"

    invoke-direct {p0, p3, p1}, Lcom/applovin/impl/privacy/cmp/a;->a(Lcom/google/android/ump/FormError;Ljava/lang/String;)Lcom/applovin/impl/privacy/cmp/CmpErrorImpl;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/applovin/impl/privacy/cmp/a$a;->onFlowShowFailed(Lcom/applovin/impl/privacy/cmp/CmpErrorImpl;)V

    return-void

    .line 82
    :cond_1
    const-string p1, "Consent form finished showing"

    invoke-direct {p0, p1}, Lcom/applovin/impl/privacy/cmp/a;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 83
    invoke-interface {p2, p1}, Lcom/applovin/impl/privacy/cmp/a$a;->onFlowHidden(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic a(Lcom/applovin/impl/privacy/cmp/a$a;Lcom/google/android/ump/ConsentForm;)V
    .locals 1

    .line 52
    const-string v0, "Successfully loaded consent form"

    invoke-direct {p0, v0}, Lcom/applovin/impl/privacy/cmp/a;->a(Ljava/lang/String;)V

    .line 54
    iput-object p2, p0, Lcom/applovin/impl/privacy/cmp/a;->c:Lcom/google/android/ump/ConsentForm;

    const/4 p2, 0x0

    .line 55
    invoke-interface {p1, p2}, Lcom/applovin/impl/privacy/cmp/a$a;->onFlowLoaded(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic a(Lcom/applovin/impl/privacy/cmp/a$a;Lcom/google/android/ump/FormError;)V
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to load with error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/ump/FormError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/applovin/impl/privacy/cmp/a;->b(Ljava/lang/String;)V

    .line 58
    const-string v0, "Consent form load failed"

    invoke-direct {p0, p2, v0}, Lcom/applovin/impl/privacy/cmp/a;->a(Lcom/google/android/ump/FormError;Ljava/lang/String;)Lcom/applovin/impl/privacy/cmp/CmpErrorImpl;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/applovin/impl/privacy/cmp/a$a;->onFlowLoadFailed(Lcom/applovin/impl/privacy/cmp/CmpErrorImpl;)V

    return-void
.end method

.method private synthetic a(Lcom/applovin/impl/privacy/cmp/a$a;Lcom/google/android/ump/FormError;Lcom/applovin/impl/m0;Lcom/google/android/ump/ConsentForm;)V
    .locals 1

    .line 85
    const-string v0, "Successfully re-loaded consent form"

    invoke-direct {p0, v0}, Lcom/applovin/impl/privacy/cmp/a;->a(Ljava/lang/String;)V

    .line 87
    iput-object p4, p0, Lcom/applovin/impl/privacy/cmp/a;->c:Lcom/google/android/ump/ConsentForm;

    .line 89
    iget-object p4, p0, Lcom/applovin/impl/privacy/cmp/a;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p4}, Lcom/applovin/impl/sdk/l;->w0()Landroid/app/Activity;

    move-result-object p4

    if-nez p4, :cond_0

    .line 93
    const-string p3, "Consent form show failed"

    invoke-direct {p0, p2, p3}, Lcom/applovin/impl/privacy/cmp/a;->a(Lcom/google/android/ump/FormError;Ljava/lang/String;)Lcom/applovin/impl/privacy/cmp/CmpErrorImpl;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/applovin/impl/privacy/cmp/a$a;->onFlowShowFailed(Lcom/applovin/impl/privacy/cmp/CmpErrorImpl;)V

    return-void

    .line 97
    :cond_0
    invoke-virtual {p0, p4, p3, p1}, Lcom/applovin/impl/privacy/cmp/a;->b(Landroid/app/Activity;Lcom/applovin/impl/m0;Lcom/applovin/impl/privacy/cmp/a$a;)V

    return-void
.end method

.method private synthetic a(Lcom/applovin/impl/privacy/cmp/a$a;Lcom/google/android/ump/FormError;Lcom/google/android/ump/FormError;)V
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Retry to load failed with error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/google/android/ump/FormError;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/applovin/impl/privacy/cmp/a;->b(Ljava/lang/String;)V

    .line 101
    const-string p3, "Consent form show failed"

    invoke-direct {p0, p2, p3}, Lcom/applovin/impl/privacy/cmp/a;->a(Lcom/google/android/ump/FormError;Ljava/lang/String;)Lcom/applovin/impl/privacy/cmp/CmpErrorImpl;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/applovin/impl/privacy/cmp/a$a;->onFlowShowFailed(Lcom/applovin/impl/privacy/cmp/CmpErrorImpl;)V

    return-void
.end method

.method private synthetic a(Lcom/google/android/ump/FormError;Lcom/applovin/impl/m0;Lcom/applovin/impl/privacy/cmp/a$a;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/privacy/cmp/a;->b(Lcom/google/android/ump/FormError;Lcom/applovin/impl/m0;Lcom/applovin/impl/privacy/cmp/a$a;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 116
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/privacy/cmp/a;->b:Lcom/applovin/impl/sdk/p;

    const-string v1, "GoogleCmpAdapter"

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic b(Lcom/applovin/impl/privacy/cmp/a$a;Lcom/google/android/ump/FormError;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to request consent info with error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/ump/FormError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/applovin/impl/privacy/cmp/a;->b(Ljava/lang/String;)V

    .line 4
    const-string v0, "Consent info update failed"

    invoke-direct {p0, p2, v0}, Lcom/applovin/impl/privacy/cmp/a;->a(Lcom/google/android/ump/FormError;Ljava/lang/String;)Lcom/applovin/impl/privacy/cmp/CmpErrorImpl;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/applovin/impl/privacy/cmp/a$a;->onFlowLoadFailed(Lcom/applovin/impl/privacy/cmp/CmpErrorImpl;)V

    return-void
.end method

.method private b(Lcom/google/android/ump/FormError;Lcom/applovin/impl/m0;Lcom/applovin/impl/privacy/cmp/a$a;)V
    .locals 2

    .line 17
    const-string v0, "Retrying to load and show consent form..."

    invoke-direct {p0, v0}, Lcom/applovin/impl/privacy/cmp/a;->a(Ljava/lang/String;)V

    .line 19
    iget v0, p0, Lcom/applovin/impl/privacy/cmp/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/applovin/impl/privacy/cmp/a;->d:I

    .line 22
    invoke-static {}, Lcom/applovin/impl/sdk/l;->p()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/privacy/cmp/a$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/applovin/impl/privacy/cmp/a$$ExternalSyntheticLambda2;-><init>(Lcom/applovin/impl/privacy/cmp/a;Lcom/applovin/impl/privacy/cmp/a$a;Lcom/google/android/ump/FormError;Lcom/applovin/impl/m0;)V

    new-instance p2, Lcom/applovin/impl/privacy/cmp/a$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p3, p1}, Lcom/applovin/impl/privacy/cmp/a$$ExternalSyntheticLambda3;-><init>(Lcom/applovin/impl/privacy/cmp/a;Lcom/applovin/impl/privacy/cmp/a$a;Lcom/google/android/ump/FormError;)V

    .line 23
    invoke-static {v0, v1, p2}, Lcom/google/android/ump/UserMessagingPlatform;->loadConsentForm(Landroid/content/Context;Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadSuccessListener;Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadFailureListener;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 24
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/privacy/cmp/a;->b:Lcom/applovin/impl/sdk/p;

    const-string v1, "GoogleCmpAdapter"

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/applovin/impl/privacy/cmp/a;->a:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/c5;->s7:Lcom/applovin/impl/c5;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->c(Lcom/applovin/impl/c5;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/applovin/impl/privacy/cmp/a;->a:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/c5;->r7:Lcom/applovin/impl/c5;

    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/applovin/impl/privacy/cmp/a;->d:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge v1, p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/privacy/cmp/a;->c:Lcom/google/android/ump/ConsentForm;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/applovin/impl/privacy/cmp/a;->c:Lcom/google/android/ump/ConsentForm;

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/applovin/impl/privacy/cmp/a;->d:I

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/applovin/impl/m0;Lcom/applovin/impl/privacy/cmp/a$a;)V
    .locals 3

    .line 7
    new-instance v0, Lcom/google/android/ump/ConsentRequestParameters$Builder;

    invoke-direct {v0}, Lcom/google/android/ump/ConsentRequestParameters$Builder;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/applovin/impl/privacy/cmp/a;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {v1}, Lcom/applovin/impl/u7;->c(Lcom/applovin/impl/sdk/l;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {p2}, Lcom/applovin/impl/m0;->a()Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;

    move-result-object p2

    sget-object v1, Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;->GDPR:Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;

    if-ne p2, v1, :cond_0

    .line 11
    iget-object p2, p0, Lcom/applovin/impl/privacy/cmp/a;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/l;->p0()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/sdk/AppLovinSdkSettings;->getExtraParameters()Ljava/util/Map;

    move-result-object p2

    .line 12
    const-string v1, "google_test_device_hashed_id"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/StringUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 13
    new-instance v1, Lcom/google/android/ump/ConsentDebugSettings$Builder;

    invoke-direct {v1, p1}, Lcom/google/android/ump/ConsentDebugSettings$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 14
    invoke-virtual {v1, v2}, Lcom/google/android/ump/ConsentDebugSettings$Builder;->setForceTesting(Z)Lcom/google/android/ump/ConsentDebugSettings$Builder;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v2}, Lcom/google/android/ump/ConsentDebugSettings$Builder;->setDebugGeography(I)Lcom/google/android/ump/ConsentDebugSettings$Builder;

    move-result-object v1

    .line 16
    invoke-virtual {v1, p2}, Lcom/google/android/ump/ConsentDebugSettings$Builder;->addTestDeviceHashedId(Ljava/lang/String;)Lcom/google/android/ump/ConsentDebugSettings$Builder;

    move-result-object p2

    .line 17
    invoke-virtual {p2}, Lcom/google/android/ump/ConsentDebugSettings$Builder;->build()Lcom/google/android/ump/ConsentDebugSettings;

    move-result-object p2

    .line 18
    invoke-virtual {v0, p2}, Lcom/google/android/ump/ConsentRequestParameters$Builder;->setConsentDebugSettings(Lcom/google/android/ump/ConsentDebugSettings;)Lcom/google/android/ump/ConsentRequestParameters$Builder;

    .line 21
    :cond_0
    invoke-static {p1}, Lcom/google/android/ump/UserMessagingPlatform;->getConsentInformation(Landroid/content/Context;)Lcom/google/android/ump/ConsentInformation;

    move-result-object p2

    .line 24
    invoke-virtual {v0}, Lcom/google/android/ump/ConsentRequestParameters$Builder;->build()Lcom/google/android/ump/ConsentRequestParameters;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/privacy/cmp/a$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p3}, Lcom/applovin/impl/privacy/cmp/a$$ExternalSyntheticLambda0;-><init>(Lcom/applovin/impl/privacy/cmp/a;Landroid/app/Activity;Lcom/applovin/impl/privacy/cmp/a$a;)V

    new-instance v2, Lcom/applovin/impl/privacy/cmp/a$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p3}, Lcom/applovin/impl/privacy/cmp/a$$ExternalSyntheticLambda1;-><init>(Lcom/applovin/impl/privacy/cmp/a;Lcom/applovin/impl/privacy/cmp/a$a;)V

    .line 25
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/android/ump/ConsentInformation;->requestConsentInfoUpdate(Landroid/app/Activity;Lcom/google/android/ump/ConsentRequestParameters;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/app/Activity;Lcom/applovin/impl/m0;Lcom/applovin/impl/privacy/cmp/a$a;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/applovin/impl/privacy/cmp/a;->c:Lcom/google/android/ump/ConsentForm;

    if-nez v0, :cond_0

    .line 7
    const-string p1, "Failed to show - not ready yet"

    invoke-direct {p0, p1}, Lcom/applovin/impl/privacy/cmp/a;->b(Ljava/lang/String;)V

    .line 9
    new-instance p1, Lcom/applovin/impl/privacy/cmp/CmpErrorImpl;

    sget-object p2, Lcom/applovin/sdk/AppLovinCmpError$Code;->FORM_UNAVAILABLE:Lcom/applovin/sdk/AppLovinCmpError$Code;

    const-string v0, "Consent form not ready"

    invoke-direct {p1, p2, v0}, Lcom/applovin/impl/privacy/cmp/CmpErrorImpl;-><init>(Lcom/applovin/sdk/AppLovinCmpError$Code;Ljava/lang/String;)V

    .line 10
    invoke-interface {p3, p1}, Lcom/applovin/impl/privacy/cmp/a$a;->onFlowShowFailed(Lcom/applovin/impl/privacy/cmp/CmpErrorImpl;)V

    return-void

    .line 14
    :cond_0
    const-string v0, "Showing consent form..."

    invoke-direct {p0, v0}, Lcom/applovin/impl/privacy/cmp/a;->a(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/applovin/impl/privacy/cmp/a;->c:Lcom/google/android/ump/ConsentForm;

    new-instance v1, Lcom/applovin/impl/privacy/cmp/a$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2, p3}, Lcom/applovin/impl/privacy/cmp/a$$ExternalSyntheticLambda4;-><init>(Lcom/applovin/impl/privacy/cmp/a;Lcom/applovin/impl/m0;Lcom/applovin/impl/privacy/cmp/a$a;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/ump/ConsentForm;->show(Landroid/app/Activity;Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    const-string v0, "Resetting consent information"

    invoke-direct {p0, v0}, Lcom/applovin/impl/privacy/cmp/a;->a(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/applovin/impl/sdk/l;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/ump/UserMessagingPlatform;->getConsentInformation(Landroid/content/Context;)Lcom/google/android/ump/ConsentInformation;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/ump/ConsentInformation;->reset()V

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
