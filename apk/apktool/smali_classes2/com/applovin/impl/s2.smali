.class public Lcom/applovin/impl/s2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/s2$a;,
        Lcom/applovin/impl/s2$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/l;

.field private final b:Lcom/applovin/impl/sdk/p;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/applovin/impl/s2;->a:Lcom/applovin/impl/sdk/l;

    .line 3
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/s2;->b:Lcom/applovin/impl/sdk/p;

    return-void
.end method


# virtual methods
.method public a(J)Lcom/applovin/impl/x4;
    .locals 8

    const-string v1, "LicenseVerificationManager"

    .line 1
    new-instance v4, Lcom/applovin/impl/x4;

    const-string v0, "verify_license"

    invoke-direct {v4, v0}, Lcom/applovin/impl/x4;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    .line 4
    new-instance v5, Ljava/lang/Exception;

    const-string v0, "License Verification Timed Out"

    invoke-direct {v5, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/applovin/impl/s2;->a:Lcom/applovin/impl/sdk/l;

    const-string v6, "verify_license_timeout"

    move-wide v2, p1

    invoke-static/range {v2 .. v7}, Lcom/applovin/impl/o6;->a(JLcom/applovin/impl/x4;Ljava/lang/Object;Ljava/lang/String;Lcom/applovin/impl/sdk/l;)V

    .line 10
    :cond_0
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.vending.licensing.ILicensingService"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.android.vending"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 13
    new-instance p2, Lcom/applovin/impl/s2$a;

    iget-object v0, p0, Lcom/applovin/impl/s2;->b:Lcom/applovin/impl/sdk/p;

    invoke-direct {p2, v0, v4}, Lcom/applovin/impl/s2$a;-><init>(Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/x4;)V

    .line 14
    invoke-static {}, Lcom/applovin/impl/sdk/l;->p()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 17
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Failed to bind to license service"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/applovin/impl/s2;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/applovin/impl/sdk/p;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_1
    invoke-virtual {v4, p1}, Lcom/applovin/impl/x4;->a(Ljava/lang/Object;)Lcom/applovin/impl/x4;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 24
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/applovin/impl/s2;->b:Lcom/applovin/impl/sdk/p;

    const-string v0, "Failed to verify license"

    invoke-virtual {p2, v1, v0, p1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    :cond_2
    invoke-virtual {v4, p1}, Lcom/applovin/impl/x4;->a(Ljava/lang/Object;)Lcom/applovin/impl/x4;

    :cond_3
    return-object v4
.end method
