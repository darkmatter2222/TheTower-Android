.class public final Lcom/ironsource/sdk/controller/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/sdk/controller/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/ironsource/sdk/controller/p$b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ironsource/Zc;)V
    .locals 2

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "openUrlConfigurations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/ironsource/sdk/controller/k$c;

    invoke-direct {v0}, Lcom/ironsource/sdk/controller/k$c;-><init>()V

    .line 39
    new-instance v1, Lcom/ironsource/sdk/controller/k$a;

    invoke-direct {v1}, Lcom/ironsource/sdk/controller/k$a;-><init>()V

    .line 40
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ironsource/sdk/controller/p$a;-><init>(Ljava/lang/String;Lcom/ironsource/Zc;Lcom/ironsource/h;Lcom/ironsource/g;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ironsource/Zc;Lcom/ironsource/h;Lcom/ironsource/g;)V
    .locals 2

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "openUrlConfigurations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityIntentFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionIntentFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x56c6c54c

    if-eq v0, v1, :cond_4

    const p4, 0x68af8e1

    if-eq v0, p4, :cond_2

    const p4, 0x48fb3bf9

    if-eq v0, p4, :cond_0

    goto :goto_0

    :cond_0
    const-string p4, "webview"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    goto :goto_0

    .line 21
    :cond_1
    new-instance p1, Lcom/ironsource/sdk/controller/p$b$d;

    invoke-direct {p1, p2, p3}, Lcom/ironsource/sdk/controller/p$b$d;-><init>(Lcom/ironsource/Zc;Lcom/ironsource/h;)V

    goto :goto_1

    .line 22
    :cond_2
    const-string p4, "store"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_3

    goto :goto_0

    .line 28
    :cond_3
    new-instance p1, Lcom/ironsource/sdk/controller/p$b$c;

    invoke-direct {p1, p2, p3}, Lcom/ironsource/sdk/controller/p$b$c;-><init>(Lcom/ironsource/Zc;Lcom/ironsource/h;)V

    goto :goto_1

    .line 29
    :cond_4
    const-string p3, "external_browser"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 31
    new-instance p1, Lcom/ironsource/sdk/controller/p$b$a;

    invoke-direct {p1, p2, p4}, Lcom/ironsource/sdk/controller/p$b$a;-><init>(Lcom/ironsource/Zc;Lcom/ironsource/g;)V

    goto :goto_1

    .line 36
    :cond_5
    :goto_0
    new-instance p2, Lcom/ironsource/sdk/controller/p$b$b;

    invoke-direct {p2, p1}, Lcom/ironsource/sdk/controller/p$b$b;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    .line 37
    :goto_1
    iput-object p1, p0, Lcom/ironsource/sdk/controller/p$a;->a:Lcom/ironsource/sdk/controller/p$b;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/ironsource/Yc;)Lcom/ironsource/sdk/controller/p$c;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "openUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/p$a;->a:Lcom/ironsource/sdk/controller/p$b;

    invoke-interface {v0, p1, p2}, Lcom/ironsource/sdk/controller/p$b;->a(Landroid/content/Context;Lcom/ironsource/Yc;)Lcom/ironsource/sdk/controller/p$c;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, ""

    .line 5
    :goto_1
    new-instance p2, Lcom/ironsource/sdk/controller/p$c$a;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Lcom/ironsource/sdk/controller/p$c$a;-><init>(Ljava/lang/String;)V

    return-object p2
.end method
