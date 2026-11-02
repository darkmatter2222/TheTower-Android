.class public final Lcom/ironsource/T4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/T4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/T4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/F7;

.field private final b:Lcom/ironsource/T4$a;


# direct methods
.method public constructor <init>(Lcom/ironsource/F7;Lcom/ironsource/T4$a;)V
    .locals 1

    const-string v0, "eventManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventBaseData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/T4$b;->a:Lcom/ironsource/F7;

    .line 3
    iput-object p2, p0, Lcom/ironsource/T4$b;->b:Lcom/ironsource/T4$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/D5;Lcom/ironsource/He;)V
    .locals 2

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/ironsource/T4$b;->b:Lcom/ironsource/T4$a;

    invoke-virtual {v0}, Lcom/ironsource/T4$a;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "ext1"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    new-instance p2, Lcom/ironsource/C5;

    new-instance v1, Lorg/json/JSONObject;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p2, p1, v1}, Lcom/ironsource/C5;-><init>(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 10
    iget-object p1, p0, Lcom/ironsource/T4$b;->a:Lcom/ironsource/F7;

    invoke-interface {p1, p2}, Lcom/ironsource/F7;->a(Lcom/ironsource/C5;)V

    return-void
.end method

.method public a(Lcom/ironsource/D5;Ljava/lang/String;)V
    .locals 2

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instanceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/T4$b;->b:Lcom/ironsource/T4$a;

    invoke-virtual {v0}, Lcom/ironsource/T4$a;->a()Ljava/util/Map;

    move-result-object v0

    .line 2
    const-string v1, "spId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance p2, Lcom/ironsource/C5;

    new-instance v1, Lorg/json/JSONObject;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p2, p1, v1}, Lcom/ironsource/C5;-><init>(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 4
    iget-object p1, p0, Lcom/ironsource/T4$b;->a:Lcom/ironsource/F7;

    invoke-interface {p1, p2}, Lcom/ironsource/F7;->a(Lcom/ironsource/C5;)V

    return-void
.end method
