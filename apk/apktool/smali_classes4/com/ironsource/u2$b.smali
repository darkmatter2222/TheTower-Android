.class public final Lcom/ironsource/u2$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/u2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ironsource/u2$b;-><init>()V

    return-void
.end method

.method private final a(Lcom/ironsource/u2;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p1}, Lcom/ironsource/u2;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/u2;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Lcom/ironsource/f8;

    sget-object p2, Lcom/ironsource/z5;->a:Lcom/ironsource/z5;

    invoke-virtual {p2}, Lcom/ironsource/z5;->f()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ironsource/f8;-><init>(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :cond_1
    invoke-virtual {p1, p2}, Lcom/ironsource/u2;->a(Ljava/lang/String;)Lcom/ironsource/y2;

    move-result-object p2

    if-nez p2, :cond_2

    .line 13
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 14
    new-instance p1, Lcom/ironsource/f8;

    sget-object p2, Lcom/ironsource/z5;->a:Lcom/ironsource/z5;

    invoke-virtual {p2}, Lcom/ironsource/z5;->j()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ironsource/f8;-><init>(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 15
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 18
    :cond_2
    invoke-virtual {p2}, Lcom/ironsource/y2;->k()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    .line 22
    :cond_3
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 23
    :cond_4
    :goto_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Lcom/ironsource/f8;

    sget-object p2, Lcom/ironsource/z5;->a:Lcom/ironsource/z5;

    invoke-virtual {p2}, Lcom/ironsource/z5;->e()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ironsource/f8;-><init>(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 24
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Lcom/ironsource/f8;

    sget-object p2, Lcom/ironsource/z5;->a:Lcom/ironsource/z5;

    invoke-virtual {p2}, Lcom/ironsource/z5;->i()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ironsource/f8;-><init>(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "auctionData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instanceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/ironsource/u2$a;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/u2$a;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ironsource/u2$a;->a()Lcom/ironsource/u2;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/ironsource/u2$b;->a(Lcom/ironsource/u2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
