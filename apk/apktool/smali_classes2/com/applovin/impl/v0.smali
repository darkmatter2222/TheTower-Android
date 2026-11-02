.class public Lcom/applovin/impl/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;
.implements Lcom/applovin/communicator/AppLovinCommunicatorPublisher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/v0$b;,
        Lcom/applovin/impl/v0$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/l;

.field private final b:Lcom/applovin/impl/a1;


# direct methods
.method public static synthetic $r8$lambda$Dg1Do7l9AKlccjhJCBlux0uVGwg(Lcom/applovin/impl/v0;Lcom/applovin/impl/v0$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/v0;->a(Lcom/applovin/impl/v0$b;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IQyOKe35onV-SG4ac51hos6CIS0(Lcom/applovin/impl/v0;Landroid/net/Uri;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/v0;->a(Landroid/net/Uri;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$N4ufWqZAFVdrBZdsdFSBdAbba34(Lcom/applovin/impl/v0;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/v0;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_mOq0nYsrOl1o0qmAVNPwGooVto(Landroid/net/Uri;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/applovin/impl/v0;->b(Landroid/net/Uri;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$uHPxsw2e-XOvTbrZJ8u1Te7TrNw(Lcom/applovin/impl/v0;Lcom/applovin/impl/v0$c;Lcom/applovin/impl/v0$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/v0;->a(Lcom/applovin/impl/v0$c;Lcom/applovin/impl/v0$b;)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/sdk/l;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/applovin/impl/v0;->a:Lcom/applovin/impl/sdk/l;

    .line 3
    new-instance v0, Lcom/applovin/impl/a1;

    invoke-direct {v0, p1}, Lcom/applovin/impl/a1;-><init>(Lcom/applovin/impl/sdk/l;)V

    iput-object v0, p0, Lcom/applovin/impl/v0;->b:Lcom/applovin/impl/a1;

    .line 5
    invoke-static {}, Lcom/applovin/impl/sdk/l;->p()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/impl/u7;->k(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-static {}, Lcom/applovin/impl/sdk/l;->p()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/communicator/AppLovinCommunicator;->getInstance(Landroid/content/Context;)Lcom/applovin/communicator/AppLovinCommunicator;

    move-result-object p1

    const-string v0, "start_sdk_consent_flow"

    invoke-virtual {p1, p0, v0}, Lcom/applovin/communicator/AppLovinCommunicator;->subscribe(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a()Landroid/net/Uri;
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/applovin/impl/v0;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->K0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/applovin/impl/c5;->p7:Lcom/applovin/impl/c5;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/applovin/impl/c5;->o7:Lcom/applovin/impl/c5;

    .line 82
    :goto_0
    iget-object v1, p0, Lcom/applovin/impl/v0;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/applovin/impl/privacy/consentFlow/TermsAndPrivacyPolicyFlowSettingsImpl;
    .locals 11

    if-nez p0, :cond_0

    .line 1
    const-string p0, "ConsentFlowManager"

    const-string v0, "Failed to get default Terms and Privacy Policy flow settings."

    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/p;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/applovin/impl/privacy/consentFlow/TermsAndPrivacyPolicyFlowSettingsImpl;

    sget-object v4, Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;->UNKNOWN:Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/privacy/consentFlow/TermsAndPrivacyPolicyFlowSettingsImpl;-><init>(ZZLcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v1

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "applovin_settings"

    const-string v3, "raw"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 6
    invoke-static {v0, p0, v1}, Lcom/applovin/impl/u7;->a(ILandroid/content/Context;Lcom/applovin/impl/sdk/l;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->jsonObjectFromJsonString(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "consent_flow_settings"

    invoke-static {p0, v2, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    .line 10
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "consent_flow_enabled"

    invoke-static {p0, v2, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    .line 11
    const-string v3, "consent_flow_show_terms_and_privacy_policy_alert_in_gdpr"

    invoke-static {p0, v3, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    .line 12
    const-string v3, "consent_flow_debug_user_geography"

    const-string v4, ""

    invoke-static {p0, v3, v4}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 14
    const-string v4, "consent_flow_terms_of_service"

    invoke-static {p0, v4, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-static {v4}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object v10, v4

    goto :goto_1

    :cond_2
    move-object v10, v1

    .line 17
    :goto_1
    const-string v4, "consent_flow_privacy_policy"

    invoke-static {p0, v4, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-static {p0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_3
    move-object v9, v1

    .line 20
    new-instance v5, Lcom/applovin/impl/privacy/consentFlow/TermsAndPrivacyPolicyFlowSettingsImpl;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {v3}, Lcom/applovin/impl/v0;->a(Ljava/lang/String;)Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;

    move-result-object v8

    invoke-direct/range {v5 .. v10}, Lcom/applovin/impl/privacy/consentFlow/TermsAndPrivacyPolicyFlowSettingsImpl;-><init>(ZZLcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v5
.end method

.method private static a(Ljava/lang/String;)Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;
    .locals 1

    .line 54
    const-string v0, "gdpr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    sget-object p0, Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;->GDPR:Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;

    return-object p0

    .line 58
    :cond_0
    const-string v0, "other"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 60
    sget-object p0, Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;->OTHER:Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;

    return-object p0

    .line 64
    :cond_1
    sget-object p0, Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;->UNKNOWN:Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;

    return-object p0
.end method

.method private synthetic a(Landroid/app/Activity;)V
    .locals 3

    .line 65
    invoke-direct {p0}, Lcom/applovin/impl/v0;->a()Landroid/net/Uri;

    move-result-object v0

    .line 67
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 68
    const-string p1, "Missing Privacy Policy URL"

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 69
    const-string v1, "You cannot use the AppLovin SDK\'s consent flow without defining a Privacy Policy URL"

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/applovin/impl/v0$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/applovin/impl/v0$$ExternalSyntheticLambda0;-><init>(Lcom/applovin/impl/v0;Landroid/net/Uri;)V

    .line 70
    const-string v2, "Go To Documentation"

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/applovin/impl/v0$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/applovin/impl/v0$$ExternalSyntheticLambda1;-><init>(Landroid/net/Uri;)V

    .line 74
    const-string v0, "DISMISS"

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private synthetic a(Landroid/net/Uri;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 79
    invoke-static {}, Lcom/applovin/impl/sdk/l;->p()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/applovin/impl/v0;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {p1, p2, p3}, Lcom/applovin/impl/q7;->a(Landroid/net/Uri;Landroid/content/Context;Lcom/applovin/impl/sdk/l;)Z

    .line 80
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "You cannot use the AppLovin SDK\'s consent flow without defining a Privacy Policy URL Please refer to "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private synthetic a(Lcom/applovin/impl/v0$b;)V
    .locals 2

    .line 46
    invoke-static {p1}, Lcom/applovin/impl/v0$b;->a(Lcom/applovin/impl/v0$b;)Lcom/applovin/impl/t0;

    move-result-object p1

    if-nez p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/applovin/impl/v0;->a:Lcom/applovin/impl/sdk/l;

    sget-object v0, Lcom/applovin/impl/e5;->t:Lcom/applovin/impl/e5;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/l;->b(Lcom/applovin/impl/e5;Ljava/lang/Object;)V

    .line 52
    :cond_0
    new-instance p1, Lcom/applovin/communicator/AppLovinCommunicatorMessage;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sdk_consent_flow_finished"

    invoke-direct {p1, v0, v1, p0}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;-><init>(Landroid/os/Bundle;Ljava/lang/String;Lcom/applovin/communicator/AppLovinCommunicatorPublisher;)V

    .line 53
    invoke-static {}, Lcom/applovin/impl/sdk/l;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/communicator/AppLovinCommunicator;->getInstance(Landroid/content/Context;)Lcom/applovin/communicator/AppLovinCommunicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/communicator/AppLovinCommunicator;->getMessagingService()Lcom/applovin/communicator/AppLovinCommunicatorMessagingService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessagingService;->publish(Lcom/applovin/communicator/AppLovinCommunicatorMessage;)V

    return-void
.end method

.method private synthetic a(Lcom/applovin/impl/v0$c;Lcom/applovin/impl/v0$b;)V
    .locals 3

    .line 39
    invoke-static {p2}, Lcom/applovin/impl/v0$b;->a(Lcom/applovin/impl/v0$b;)Lcom/applovin/impl/t0;

    move-result-object v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/applovin/impl/v0;->a:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/e5;->t:Lcom/applovin/impl/e5;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/l;->b(Lcom/applovin/impl/e5;Ljava/lang/Object;)V

    .line 45
    :cond_0
    invoke-interface {p1, p2}, Lcom/applovin/impl/v0$c;->a(Lcom/applovin/impl/v0$b;)V

    return-void
.end method

.method private b(Landroid/app/Activity;)V
    .locals 1

    .line 8
    new-instance v0, Lcom/applovin/impl/v0$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/v0$$ExternalSyntheticLambda4;-><init>(Lcom/applovin/impl/v0;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic b(Landroid/net/Uri;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "You cannot use the AppLovin SDK\'s consent flow without defining a Privacy Policy URL Please refer to "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c()Lcom/applovin/impl/privacy/consentFlow/TermsAndPrivacyPolicyFlowSettingsImpl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v0;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->p0()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdkSettings;->getTermsAndPrivacyPolicyFlowSettings()Lcom/applovin/sdk/AppLovinTermsAndPrivacyPolicyFlowSettings;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/privacy/consentFlow/TermsAndPrivacyPolicyFlowSettingsImpl;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/applovin/impl/v0$c;)V
    .locals 2

    .line 21
    invoke-virtual {p0}, Lcom/applovin/impl/v0;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    new-instance p1, Lcom/applovin/impl/t0;

    sget v0, Lcom/applovin/impl/t0;->c:I

    const-string v1, "Failed to start consent flow. Please make sure that the consent flow is enabled."

    invoke-direct {p1, v0, v1}, Lcom/applovin/impl/t0;-><init>(ILjava/lang/String;)V

    .line 24
    new-instance v0, Lcom/applovin/impl/v0$b;

    invoke-direct {v0, p1}, Lcom/applovin/impl/v0$b;-><init>(Lcom/applovin/impl/t0;)V

    .line 26
    invoke-interface {p2, v0}, Lcom/applovin/impl/v0$c;->a(Lcom/applovin/impl/v0$b;)V

    return-void

    .line 32
    :cond_0
    invoke-direct {p0}, Lcom/applovin/impl/v0;->c()Lcom/applovin/impl/privacy/consentFlow/TermsAndPrivacyPolicyFlowSettingsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/privacy/consentFlow/TermsAndPrivacyPolicyFlowSettingsImpl;->getPrivacyPolicyUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 34
    invoke-direct {p0, p1}, Lcom/applovin/impl/v0;->b(Landroid/app/Activity;)V

    return-void

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/v0;->b:Lcom/applovin/impl/a1;

    new-instance v1, Lcom/applovin/impl/v0$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2}, Lcom/applovin/impl/v0$$ExternalSyntheticLambda3;-><init>(Lcom/applovin/impl/v0;Lcom/applovin/impl/v0$c;)V

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/a1;->a(Landroid/app/Activity;Lcom/applovin/impl/v0$c;)V

    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/v0;->c()Lcom/applovin/impl/privacy/consentFlow/TermsAndPrivacyPolicyFlowSettingsImpl;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/applovin/impl/privacy/consentFlow/TermsAndPrivacyPolicyFlowSettingsImpl;->getPrivacyPolicyUri()Landroid/net/Uri;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/privacy/consentFlow/TermsAndPrivacyPolicyFlowSettingsImpl;->getTermsOfServiceUri()Landroid/net/Uri;

    move-result-object v0

    .line 4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 5
    invoke-virtual {p0}, Lcom/applovin/impl/v0;->j()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enabled"

    invoke-static {v2, v4, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-string v3, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v4, "privacy_policy_url"

    invoke-static {v2, v4, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    const-string v0, "terms_of_service_url"

    invoke-static {v2, v0, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public d()Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/v0;->c()Lcom/applovin/impl/privacy/consentFlow/TermsAndPrivacyPolicyFlowSettingsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/privacy/consentFlow/TermsAndPrivacyPolicyFlowSettingsImpl;->getDebugUserGeography()Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/v0;->f()Landroid/net/Uri;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/applovin/impl/v0;->h()Landroid/net/Uri;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\nConsent Flow Enabled - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/impl/v0;->j()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nTerms of Service - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "undefined"

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 4
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nPrivacy Policy - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v3

    .line 5
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Landroid/net/Uri;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/v0;->c()Lcom/applovin/impl/privacy/consentFlow/TermsAndPrivacyPolicyFlowSettingsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/privacy/consentFlow/TermsAndPrivacyPolicyFlowSettingsImpl;->getPrivacyPolicyUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Migrate to the new Terms and Privacy Policy Flow by following these steps:\n\t1. Delete the \'terms_flow_settings\' entry from your \'applovin_settings.xml\' file.\n\t2. Follow the integration instructions in our documentation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/applovin/impl/v0;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommunicatorId()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "consent_flow_manager"

    return-object v0
.end method

.method public h()Landroid/net/Uri;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/v0;->c()Lcom/applovin/impl/privacy/consentFlow/TermsAndPrivacyPolicyFlowSettingsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/privacy/consentFlow/TermsAndPrivacyPolicyFlowSettingsImpl;->getTermsOfServiceUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v0;->b:Lcom/applovin/impl/a1;

    invoke-virtual {v0}, Lcom/applovin/impl/a1;->a()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v0;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->p0()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdkSettings;->getExtraParameters()Ljava/util/Map;

    move-result-object v0

    .line 2
    const-string v1, "consent_flow_enabled"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/applovin/impl/v0;->c()Lcom/applovin/impl/privacy/consentFlow/TermsAndPrivacyPolicyFlowSettingsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/privacy/consentFlow/TermsAndPrivacyPolicyFlowSettingsImpl;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v0;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {v0}, Lcom/applovin/impl/u7;->c(Lcom/applovin/impl/sdk/l;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/applovin/impl/v0;->d()Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;

    move-result-object v0

    .line 4
    sget-object v3, Lcom/applovin/impl/v0$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    return v2

    .line 16
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/v0;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->w()Lcom/applovin/impl/sdk/SdkConfigurationImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/SdkConfigurationImpl;->getConsentFlowUserGeography()Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;

    move-result-object v0

    sget-object v3, Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;->GDPR:Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;

    if-ne v0, v3, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v0;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->p0()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdkSettings;->getExtraParameters()Ljava/util/Map;

    move-result-object v0

    const-string v1, "terms_flow_settings"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/v0;->c()Lcom/applovin/impl/privacy/consentFlow/TermsAndPrivacyPolicyFlowSettingsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/privacy/consentFlow/TermsAndPrivacyPolicyFlowSettingsImpl;->shouldShowTermsAndPrivacyPolicyAlertInGdpr()Z

    move-result v0

    return v0
.end method

.method public onMessageReceived(Lcom/applovin/communicator/AppLovinCommunicatorMessage;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/applovin/impl/v0;->b:Lcom/applovin/impl/a1;

    iget-object v0, p0, Lcom/applovin/impl/v0;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->w0()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/v0$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/applovin/impl/v0$$ExternalSyntheticLambda2;-><init>(Lcom/applovin/impl/v0;)V

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/a1;->a(Landroid/app/Activity;Lcom/applovin/impl/v0$c;)V

    return-void
.end method
