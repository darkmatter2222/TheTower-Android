.class public final Lcom/ironsource/u2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/u2$a;,
        Lcom/ironsource/u2$b;
    }
.end annotation


# static fields
.field public static final h:Lcom/ironsource/u2$b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/ironsource/mediationsdk/demandOnly/a;

.field private final c:Lcom/ironsource/y2;

.field private final d:Lorg/json/JSONObject;

.field private final e:Lorg/json/JSONObject;

.field private final f:Lcom/ironsource/o2;

.field private final g:Lcom/ironsource/z2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/u2$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/u2$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/u2;->h:Lcom/ironsource/u2$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ironsource/mediationsdk/demandOnly/a;Lcom/ironsource/y2;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/ironsource/o2;Lcom/ironsource/z2;)V
    .locals 1

    const-string v0, "waterfall"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "genericNotifications"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/u2;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/ironsource/u2;->b:Lcom/ironsource/mediationsdk/demandOnly/a;

    .line 4
    iput-object p3, p0, Lcom/ironsource/u2;->c:Lcom/ironsource/y2;

    .line 5
    iput-object p4, p0, Lcom/ironsource/u2;->d:Lorg/json/JSONObject;

    .line 6
    iput-object p5, p0, Lcom/ironsource/u2;->e:Lorg/json/JSONObject;

    .line 7
    iput-object p6, p0, Lcom/ironsource/u2;->f:Lcom/ironsource/o2;

    .line 8
    iput-object p7, p0, Lcom/ironsource/u2;->g:Lcom/ironsource/z2;

    return-void
.end method

.method private final a(Lcom/ironsource/mediationsdk/demandOnly/a;Ljava/lang/String;)Lcom/ironsource/y2;
    .locals 0

    .line 3
    invoke-interface {p1, p2}, Lcom/ironsource/mediationsdk/demandOnly/a;->a(Ljava/lang/String;)Lcom/ironsource/y2;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/ironsource/y2;
    .locals 1

    const-string v0, "providerName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/u2;->b:Lcom/ironsource/mediationsdk/demandOnly/a;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/u2;->a(Lcom/ironsource/mediationsdk/demandOnly/a;Ljava/lang/String;)Lcom/ironsource/y2;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/u2;->g:Lcom/ironsource/z2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/z2;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/u2;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/ironsource/o2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/u2;->f:Lcom/ironsource/o2;

    return-object v0
.end method

.method public final d()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/u2;->e:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final e()Lcom/ironsource/y2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/u2;->c:Lcom/ironsource/y2;

    return-object v0
.end method

.method public final f()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/u2;->d:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final g()Lcom/ironsource/z2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/u2;->g:Lcom/ironsource/z2;

    return-object v0
.end method

.method public final h()Lcom/ironsource/mediationsdk/demandOnly/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/u2;->b:Lcom/ironsource/mediationsdk/demandOnly/a;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/u2;->b:Lcom/ironsource/mediationsdk/demandOnly/a;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/demandOnly/a;->isEmpty()Z

    move-result v0

    return v0
.end method
