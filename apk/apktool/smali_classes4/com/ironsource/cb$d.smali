.class public final Lcom/ironsource/cb$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/v6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/cb;->b()Lcom/ironsource/i6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/cb;

.field final synthetic b:Lcom/ironsource/g0;


# direct methods
.method constructor <init>(Lcom/ironsource/cb;Lcom/ironsource/g0;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/cb$d;->a:Lcom/ironsource/cb;

    iput-object p2, p0, Lcom/ironsource/cb$d;->b:Lcom/ironsource/g0;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/ironsource/x6;)Lcom/ironsource/u6;
    .locals 13

    const-string v0, "listener"

    move-object v5, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/cb$d;->a:Lcom/ironsource/cb;

    invoke-virtual {v0}, Lcom/ironsource/cb;->g()Lcom/ironsource/y0;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/cb$d;->b:Lcom/ironsource/g0;

    invoke-interface {v0, p1, v1}, Lcom/ironsource/y0;->a(ZLcom/ironsource/g0;)Lcom/ironsource/x0;

    move-result-object v4

    .line 2
    new-instance v3, Lcom/ironsource/T0;

    iget-object v0, p0, Lcom/ironsource/cb$d;->a:Lcom/ironsource/cb;

    invoke-virtual {v0}, Lcom/ironsource/cb;->f()Lcom/ironsource/p0;

    move-result-object v0

    sget-object v1, Lcom/ironsource/E0$b;->a:Lcom/ironsource/E0$b;

    invoke-direct {v3, v0, v4, v1}, Lcom/ironsource/T0;-><init>(Lcom/ironsource/p0;Lcom/ironsource/x0;Lcom/ironsource/E0$b;)V

    .line 3
    new-instance v1, Lcom/ironsource/u6;

    .line 4
    sget-object v0, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {v0}, Lcom/ironsource/Pb$a;->c()Lcom/ironsource/Pb;

    move-result-object v2

    .line 8
    iget-object v0, p0, Lcom/ironsource/cb$d;->a:Lcom/ironsource/cb;

    invoke-static {v0}, Lcom/ironsource/cb;->b(Lcom/ironsource/cb;)Lcom/ironsource/d9;

    move-result-object v6

    const/16 v11, 0x1e0

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 9
    invoke-direct/range {v1 .. v12}, Lcom/ironsource/u6;-><init>(Lcom/ironsource/Pb;Lcom/ironsource/T0;Lcom/ironsource/x0;Lcom/ironsource/x6;Lcom/ironsource/d9;Lcom/ironsource/Jg;Lkotlin/jvm/functions/Function2;Lcom/ironsource/Ff;Lcom/ironsource/t4;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
