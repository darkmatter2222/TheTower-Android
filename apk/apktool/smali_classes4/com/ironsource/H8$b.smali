.class public final Lcom/ironsource/H8$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/H8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/H8$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nISNNativeAdData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ISNNativeAdData.kt\ncom/ironsource/sdk/nativeAd/ISNNativeAdData$Report\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,110:1\n1#2:111\n*E\n"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/H8$b$a;


# direct methods
.method public constructor <init>(Lcom/ironsource/H8$b$a;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/H8$b;->a:Lcom/ironsource/H8$b$a;

    return-void
.end method

.method private static final a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "success"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private static final a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    invoke-static {p2}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "success"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 5
    invoke-static {p2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "unknown reason"

    :cond_0
    const-string v1, "reason"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    :cond_1
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/H8$b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/H8$b;->a:Lcom/ironsource/H8$b$a;

    return-object v0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/ironsource/H8$b;->a:Lcom/ironsource/H8$b$a;

    invoke-virtual {v1}, Lcom/ironsource/H8$b$a;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "title"

    invoke-static {v0, v1}, Lcom/ironsource/H8$b;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/ironsource/H8$b;->a:Lcom/ironsource/H8$b$a;

    invoke-virtual {v1}, Lcom/ironsource/H8$b$a;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "advertiser"

    invoke-static {v0, v1}, Lcom/ironsource/H8$b;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/ironsource/H8$b;->a:Lcom/ironsource/H8$b$a;

    invoke-virtual {v1}, Lcom/ironsource/H8$b$a;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "body"

    invoke-static {v0, v1}, Lcom/ironsource/H8$b;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/ironsource/H8$b;->a:Lcom/ironsource/H8$b$a;

    invoke-virtual {v1}, Lcom/ironsource/H8$b$a;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "cta"

    invoke-static {v0, v1}, Lcom/ironsource/H8$b;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 6
    :cond_3
    iget-object v1, p0, Lcom/ironsource/H8$b;->a:Lcom/ironsource/H8$b$a;

    invoke-virtual {v1}, Lcom/ironsource/H8$b$a;->l()Lkotlin/Result;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "icon"

    invoke-static {v0, v2, v1}, Lcom/ironsource/H8$b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    :cond_4
    iget-object v1, p0, Lcom/ironsource/H8$b;->a:Lcom/ironsource/H8$b$a;

    invoke-virtual {v1}, Lcom/ironsource/H8$b$a;->m()Lkotlin/Result;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "media"

    invoke-static {v0, v2, v1}, Lcom/ironsource/H8$b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    return-object v0
.end method
