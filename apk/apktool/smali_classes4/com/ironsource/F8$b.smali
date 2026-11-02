.class public final Lcom/ironsource/F8$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/ac$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/F8;->f()Lcom/ironsource/F8$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/F8;


# direct methods
.method constructor <init>(Lcom/ironsource/F8;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/F8$b;->a:Lcom/ironsource/F8;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/ironsource/F8$b;->a:Lcom/ironsource/F8;

    invoke-virtual {v0}, Lcom/ironsource/F8;->b()Lcom/ironsource/J8$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ironsource/J8$a;->onNativeAdShown()V

    :cond_0
    return-void
.end method

.method public a(Lcom/ironsource/H8;)V
    .locals 4

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/F8$b;->a:Lcom/ironsource/F8;

    invoke-static {v0, p1}, Lcom/ironsource/F8;->a(Lcom/ironsource/F8;Lcom/ironsource/H8;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/F8$b;->a:Lcom/ironsource/F8;

    invoke-static {v0}, Lcom/ironsource/F8;->c(Lcom/ironsource/F8;)Lcom/ironsource/w8;

    move-result-object v0

    sget-object v1, Lcom/ironsource/le;->l:Lcom/ironsource/le$a;

    const-string v2, "loadAdSuccess"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ironsource/F8$b;->a:Lcom/ironsource/F8;

    invoke-static {v2}, Lcom/ironsource/F8;->a(Lcom/ironsource/F8;)Lcom/ironsource/v8;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/v8;->a()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "getData(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/ironsource/w8;->a(Lcom/ironsource/le$a;Ljava/util/Map;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/F8$b;->a:Lcom/ironsource/F8;

    invoke-virtual {v0}, Lcom/ironsource/F8;->b()Lcom/ironsource/J8$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ironsource/J8$a;->onNativeAdLoadSuccess(Lcom/ironsource/H8;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/ironsource/F8$b;->a:Lcom/ironsource/F8;

    invoke-static {v0}, Lcom/ironsource/F8;->a(Lcom/ironsource/F8;)Lcom/ironsource/v8;

    move-result-object v0

    const-string v1, "callfailreason"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/v8;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/v8;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ironsource/F8$b;->a:Lcom/ironsource/F8;

    invoke-static {v1}, Lcom/ironsource/F8;->c(Lcom/ironsource/F8;)Lcom/ironsource/w8;

    move-result-object v1

    sget-object v2, Lcom/ironsource/le;->g:Lcom/ironsource/le$a;

    const-string v3, "loadAdFailed"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ironsource/v8;->a()Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "getData(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v0}, Lcom/ironsource/w8;->a(Lcom/ironsource/le$a;Ljava/util/Map;)V

    .line 7
    iget-object v0, p0, Lcom/ironsource/F8$b;->a:Lcom/ironsource/F8;

    invoke-virtual {v0}, Lcom/ironsource/F8;->b()Lcom/ironsource/J8$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ironsource/J8$a;->onNativeAdLoadFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/F8$b;->a:Lcom/ironsource/F8;

    invoke-virtual {v0}, Lcom/ironsource/F8;->b()Lcom/ironsource/J8$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ironsource/J8$a;->onNativeAdClicked()V

    :cond_0
    return-void
.end method
