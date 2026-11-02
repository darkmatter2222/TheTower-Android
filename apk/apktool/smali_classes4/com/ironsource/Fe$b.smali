.class public final Lcom/ironsource/Fe$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/xe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/Fe;->a(Landroid/content/Context;Lcom/ironsource/ze;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/Fe;

.field final synthetic b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/ironsource/qe;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/ironsource/se;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$GPJjvq0i-59A7111ELZUJLlYvfY(Lkotlin/jvm/functions/Function1;Lcom/ironsource/se;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/Fe$b;->a(Lkotlin/jvm/functions/Function1;Lcom/ironsource/se;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KysZc99723B_XOIsZtNc0oiZDhc(Lkotlin/jvm/functions/Function1;Lcom/ironsource/qe;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/Fe$b;->a(Lkotlin/jvm/functions/Function1;Lcom/ironsource/qe;)V

    return-void
.end method

.method constructor <init>(Lcom/ironsource/Fe;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/Fe;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/ironsource/qe;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/ironsource/se;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ironsource/Fe$b;->a:Lcom/ironsource/Fe;

    iput-object p2, p0, Lcom/ironsource/Fe$b;->b:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/ironsource/Fe$b;->c:Lkotlin/jvm/functions/Function1;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Lkotlin/jvm/functions/Function1;Lcom/ironsource/qe;)V
    .locals 0

    .line 2
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final a(Lkotlin/jvm/functions/Function1;Lcom/ironsource/se;)V
    .locals 0

    .line 4
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/qe;)V
    .locals 3

    const-string v0, "sdkConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/Fe$b;->a:Lcom/ironsource/Fe;

    invoke-static {v0}, Lcom/ironsource/Fe;->a(Lcom/ironsource/Fe;)Lcom/ironsource/Ke;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/Fe$b;->b:Lkotlin/jvm/functions/Function1;

    new-instance v2, Lcom/ironsource/Fe$b$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Lcom/ironsource/Fe$b$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/ironsource/qe;)V

    invoke-interface {v0, v2}, Lcom/ironsource/Ke;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/ironsource/se;)V
    .locals 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/Fe$b;->a:Lcom/ironsource/Fe;

    invoke-static {v0}, Lcom/ironsource/Fe;->a(Lcom/ironsource/Fe;)Lcom/ironsource/Ke;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/Fe$b;->c:Lkotlin/jvm/functions/Function1;

    new-instance v2, Lcom/ironsource/Fe$b$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Lcom/ironsource/Fe$b$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Lcom/ironsource/se;)V

    invoke-interface {v0, v2}, Lcom/ironsource/Ke;->c(Ljava/lang/Runnable;)V

    return-void
.end method
