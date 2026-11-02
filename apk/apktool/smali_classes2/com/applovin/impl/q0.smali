.class public abstract Lcom/applovin/impl/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/q0$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/applovin/impl/q0$a;

.field private static final b:Lcom/applovin/impl/q0$a;

.field private static final c:Lcom/applovin/impl/q0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/applovin/impl/q0$a;

    sget-object v1, Lcom/applovin/impl/e5;->r:Lcom/applovin/impl/e5;

    const-string v2, "Age Restricted User"

    invoke-direct {v0, v2, v1}, Lcom/applovin/impl/q0$a;-><init>(Ljava/lang/String;Lcom/applovin/impl/e5;)V

    sput-object v0, Lcom/applovin/impl/q0;->a:Lcom/applovin/impl/q0$a;

    .line 2
    new-instance v0, Lcom/applovin/impl/q0$a;

    sget-object v1, Lcom/applovin/impl/e5;->q:Lcom/applovin/impl/e5;

    const-string v2, "Has User Consent"

    invoke-direct {v0, v2, v1}, Lcom/applovin/impl/q0$a;-><init>(Ljava/lang/String;Lcom/applovin/impl/e5;)V

    sput-object v0, Lcom/applovin/impl/q0;->b:Lcom/applovin/impl/q0$a;

    .line 3
    new-instance v0, Lcom/applovin/impl/q0$a;

    sget-object v1, Lcom/applovin/impl/e5;->s:Lcom/applovin/impl/e5;

    const-string v2, "\"Do Not Sell\""

    invoke-direct {v0, v2, v1}, Lcom/applovin/impl/q0$a;-><init>(Ljava/lang/String;Lcom/applovin/impl/e5;)V

    sput-object v0, Lcom/applovin/impl/q0;->c:Lcom/applovin/impl/q0$a;

    return-void
.end method

.method public static a()Lcom/applovin/impl/q0$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/q0;->c:Lcom/applovin/impl/q0$a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    sget-object v1, Lcom/applovin/impl/q0;->b:Lcom/applovin/impl/q0$a;

    invoke-static {v1, p0}, Lcom/applovin/impl/q0;->a(Lcom/applovin/impl/q0$a;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    sget-object v1, Lcom/applovin/impl/q0;->c:Lcom/applovin/impl/q0$a;

    invoke-static {v1, p0}, Lcom/applovin/impl/q0;->a(Lcom/applovin/impl/q0$a;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/applovin/impl/q0$a;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/applovin/impl/q0$a;->a(Lcom/applovin/impl/q0$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/applovin/impl/q0$a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/applovin/impl/e5;Ljava/lang/Boolean;Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to update compliance value for key: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppLovinSdk"

    invoke-static {p1, p0}, Lcom/applovin/impl/sdk/p;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 14
    :try_start_0
    invoke-static {p0, v1, p2}, Lcom/applovin/impl/f5;->a(Lcom/applovin/impl/e5;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 15
    invoke-static {p0, p1, p2}, Lcom/applovin/impl/f5;->b(Lcom/applovin/impl/e5;Ljava/lang/Object;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    if-eqz v1, :cond_2

    if-eq v1, p1, :cond_1

    return p0

    :cond_1
    return v0

    :cond_2
    return p0

    :catchall_0
    move-exception p0

    .line 20
    const-string p1, "Unable to update compliance"

    const-string p2, "ComplianceManager"

    invoke-static {p2, p1, p0}, Lcom/applovin/impl/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    sget-object p1, Lcom/applovin/impl/sdk/l;->F0:Lcom/applovin/impl/sdk/l;

    if-eqz p1, :cond_3

    .line 24
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->E()Lcom/applovin/impl/s1;

    move-result-object p1

    const-string v1, "updateCompliance"

    invoke-virtual {p1, p2, v1, p0}, Lcom/applovin/impl/s1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return v0
.end method

.method public static a(ZLandroid/content/Context;)Z
    .locals 1

    .line 2
    sget-object v0, Lcom/applovin/impl/e5;->s:Lcom/applovin/impl/e5;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/applovin/impl/q0;->a(Lcom/applovin/impl/e5;Ljava/lang/Boolean;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static b()Lcom/applovin/impl/q0$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/q0;->b:Lcom/applovin/impl/q0$a;

    return-object v0
.end method

.method public static b(ZLandroid/content/Context;)Z
    .locals 1

    .line 2
    sget-object v0, Lcom/applovin/impl/e5;->q:Lcom/applovin/impl/e5;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/applovin/impl/q0;->a(Lcom/applovin/impl/e5;Ljava/lang/Boolean;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static c()Lcom/applovin/impl/q0$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/q0;->a:Lcom/applovin/impl/q0$a;

    return-object v0
.end method
