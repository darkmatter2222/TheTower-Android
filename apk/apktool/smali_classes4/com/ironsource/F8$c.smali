.class public final Lcom/ironsource/F8$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/K8$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/F8;->g()Lcom/ironsource/F8$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/F8$c$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/F8;


# direct methods
.method constructor <init>(Lcom/ironsource/F8;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/F8$c;->a:Lcom/ironsource/F8;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/Dg;)V
    .locals 1

    const-string v0, "viewVisibilityParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/ironsource/F8$c;->a:Lcom/ironsource/F8;

    invoke-static {v0}, Lcom/ironsource/F8;->b(Lcom/ironsource/F8;)Lcom/ironsource/ac;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ironsource/ac;->a(Lcom/ironsource/Dg;)V

    return-void
.end method

.method public a(Lcom/ironsource/K8$b;)V
    .locals 3

    const-string v0, "viewName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/ironsource/F8$c$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ironsource/F8$c;->a:Lcom/ironsource/F8;

    invoke-static {p1}, Lcom/ironsource/F8;->b(Lcom/ironsource/F8;)Lcom/ironsource/ac;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/ac;->c()V

    return-void

    .line 4
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/K8$b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/ironsource/F8$c;->a:Lcom/ironsource/F8;

    invoke-static {v0}, Lcom/ironsource/F8;->b(Lcom/ironsource/F8;)Lcom/ironsource/ac;

    move-result-object v0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/ironsource/ac;->a(Lorg/json/JSONObject;)V

    return-void
.end method
