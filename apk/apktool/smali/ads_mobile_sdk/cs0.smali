.class public final Lads_mobile_sdk/cs0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/co;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lads_mobile_sdk/ds0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 41
    iput-object p1, p0, Lads_mobile_sdk/cs0;->a:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Lads_mobile_sdk/ds0;->a(Landroid/content/Context;)Lads_mobile_sdk/ds0;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/cs0;->b:Lads_mobile_sdk/ds0;

    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Application context cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/bo;)V
    .locals 3

    .line 74
    iget-object v0, p0, Lads_mobile_sdk/cs0;->b:Lads_mobile_sdk/ds0;

    .line 75
    iget-object v1, v0, Lads_mobile_sdk/ds0;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 76
    iget-object v0, v0, Lads_mobile_sdk/ds0;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    .line 79
    :cond_0
    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, v0, Lads_mobile_sdk/ds0;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, v0, Lads_mobile_sdk/ds0;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    :goto_0
    move v0, v1

    goto :goto_1

    .line 84
    :cond_1
    invoke-virtual {v0}, Lads_mobile_sdk/ds0;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 85
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, v0, Lads_mobile_sdk/ds0;->b:Ljava/lang/Boolean;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 89
    :cond_2
    :try_start_1
    iget-object v1, v0, Lads_mobile_sdk/ds0;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_3

    .line 92
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, v0, Lads_mobile_sdk/ds0;->b:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 94
    :cond_3
    :try_start_3
    const-string v2, "com.amazon.privacypass"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lads_mobile_sdk/ds0;->b:Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :goto_1
    if-nez v0, :cond_4

    goto/16 :goto_2

    .line 95
    :cond_4
    iget-object v0, p1, Lads_mobile_sdk/bo;->a:Ljava/util/Map;

    if-nez v0, :cond_5

    goto/16 :goto_2

    .line 96
    :cond_5
    const-string v1, "verifierurl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    iget-object p1, p1, Lads_mobile_sdk/bo;->a:Ljava/util/Map;

    .line 98
    const-string v1, "version"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const-string p1, "1.0"

    :cond_7
    if-eqz v0, :cond_b

    .line 100
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    .line 101
    :cond_8
    :try_start_5
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 102
    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_4

    if-eqz v1, :cond_b

    .line 103
    :cond_9
    :try_start_6
    iget-object v1, p0, Lads_mobile_sdk/cs0;->a:Landroid/content/Context;

    if-nez v1, :cond_a

    goto :goto_2

    .line 108
    :cond_a
    new-instance v1, Lcom/amazon/privacypass/VerificationContext;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amazon/privacypass/VerificationContext;-><init>(Ljava/util/List;)V

    .line 109
    iget-object v0, p0, Lads_mobile_sdk/cs0;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/privacypass/PrivacyPass;->getInstance(Landroid/content/Context;)Lcom/amazon/privacypass/PrivacyPass;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/amazon/privacypass/PrivacyPass;->attest(Lcom/amazon/privacypass/VerificationContext;Lcom/amazon/privacypass/callback/AttestAPICallback;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 113
    const-string v0, "Attestation failed: unexpected error"

    .line 114
    const-string v1, "OMIDLIB"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception p1

    .line 115
    const-string v0, "Attestation failed: Invalid input parameters"

    .line 116
    const-string v1, "OMIDLIB"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_2
    move-exception p1

    .line 117
    :try_start_7
    const-string v1, "Unexpected error when checking attestation capability"

    .line 118
    const-string v2, "OMIDLIB"

    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, v0, Lads_mobile_sdk/ds0;->b:Ljava/lang/Boolean;

    monitor-exit v0

    goto :goto_2

    :catch_3
    move-exception p1

    .line 120
    const-string v1, "Security exception when checking attestation capability"

    .line 121
    const-string v2, "OMIDLIB"

    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, v0, Lads_mobile_sdk/ds0;->b:Ljava/lang/Boolean;

    monitor-exit v0

    :catch_4
    :cond_b
    :goto_2
    return-void

    :catchall_0
    move-exception p1

    .line 127
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method
