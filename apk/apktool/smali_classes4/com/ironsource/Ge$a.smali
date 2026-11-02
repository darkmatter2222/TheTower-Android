.class public final Lcom/ironsource/Ge$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/xe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/Ge;->a(Landroid/content/Context;Lcom/ironsource/ze;Lcom/ironsource/xe;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/xe;


# direct methods
.method public static synthetic $r8$lambda$hqCvXU0EcyPdFLrxs1P4BaJ_cD4(Lcom/ironsource/qe;Lcom/ironsource/xe;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/Ge$a;->a(Lcom/ironsource/qe;Lcom/ironsource/xe;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zD74ffqpzLpNK4u9z9Oh5ygTYL0(Lcom/ironsource/xe;Lcom/ironsource/se;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/Ge$a;->a(Lcom/ironsource/xe;Lcom/ironsource/se;)V

    return-void
.end method

.method constructor <init>(Lcom/ironsource/xe;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/Ge$a;->a:Lcom/ironsource/xe;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Lcom/ironsource/qe;Lcom/ironsource/xe;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/ironsource/Ge;->a:Lcom/ironsource/Ge;

    invoke-static {v0, p0, p1}, Lcom/ironsource/Ge;->a(Lcom/ironsource/Ge;Lcom/ironsource/qe;Lcom/ironsource/xe;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/xe;Lcom/ironsource/se;)V
    .locals 0

    .line 4
    invoke-interface {p0, p1}, Lcom/ironsource/xe;->a(Lcom/ironsource/se;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/qe;)V
    .locals 3

    const-string v0, "sdkConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/ironsource/Ge;->a()Lcom/ironsource/Ke;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/Ge$a;->a:Lcom/ironsource/xe;

    new-instance v2, Lcom/ironsource/Ge$a$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, v1}, Lcom/ironsource/Ge$a$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/qe;Lcom/ironsource/xe;)V

    invoke-interface {v0, v2}, Lcom/ironsource/Ke;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/ironsource/se;)V
    .locals 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/ironsource/Ge;->a()Lcom/ironsource/Ke;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/Ge$a;->a:Lcom/ironsource/xe;

    new-instance v2, Lcom/ironsource/Ge$a$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Lcom/ironsource/Ge$a$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/xe;Lcom/ironsource/se;)V

    invoke-interface {v0, v2}, Lcom/ironsource/Ke;->b(Ljava/lang/Runnable;)V

    return-void
.end method
