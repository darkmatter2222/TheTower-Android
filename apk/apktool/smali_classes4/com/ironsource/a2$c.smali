.class public final Lcom/ironsource/a2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/z3$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/a2;->b(Lcom/ironsource/a2$d;)Lcom/ironsource/z3$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/a2;

.field final synthetic b:Lcom/ironsource/a2$d;


# direct methods
.method public static synthetic $r8$lambda$JpeMmajYuyO925El8WqnJyiCs4o(Lcom/ironsource/a2;JLjava/util/List;Ljava/util/List;Lcom/ironsource/a2$d;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/ironsource/a2$c;->a(Lcom/ironsource/a2;JLjava/util/List;Ljava/util/List;Lcom/ironsource/a2$d;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NvMB_jvxW29NgYFpuB2JyKBcf9s(Lcom/ironsource/a2;Ljava/lang/String;Lcom/ironsource/a2$d;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ironsource/a2$c;->a(Lcom/ironsource/a2;Ljava/lang/String;Lcom/ironsource/a2$d;)V

    return-void
.end method

.method constructor <init>(Lcom/ironsource/a2;Lcom/ironsource/a2$d;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/a2$c;->a:Lcom/ironsource/a2;

    iput-object p2, p0, Lcom/ironsource/a2$c;->b:Lcom/ironsource/a2$d;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Lcom/ironsource/a2;JLjava/util/List;Ljava/util/List;Lcom/ironsource/a2$d;)V
    .locals 0

    .line 2
    invoke-static/range {p0 .. p5}, Lcom/ironsource/a2;->a(Lcom/ironsource/a2;JLjava/util/List;Ljava/util/List;Lcom/ironsource/a2$d;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/a2;Ljava/lang/String;Lcom/ironsource/a2$d;)V
    .locals 1

    .line 3
    invoke-static {p0}, Lcom/ironsource/a2;->a(Lcom/ironsource/a2;)Lcom/ironsource/T0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/E5;->g()Lcom/ironsource/lg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/lg;->a(Ljava/lang/String;)V

    .line 4
    invoke-interface {p2, p0, p1}, Lcom/ironsource/a2$d;->a(Lcom/ironsource/a2;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;JLjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ironsource/A3;",
            ">;J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "biddingDataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reachedTimeout"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/a2$c;->a:Lcom/ironsource/a2;

    invoke-static {v0}, Lcom/ironsource/a2;->a(Lcom/ironsource/a2;)Lcom/ironsource/T0;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/a2$c;->a:Lcom/ironsource/a2;

    iget-object v7, p0, Lcom/ironsource/a2$c;->b:Lcom/ironsource/a2$d;

    new-instance v1, Lcom/ironsource/a2$c$$ExternalSyntheticLambda0;

    move-object v5, p1

    move-wide v3, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/ironsource/a2$c$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/a2;JLjava/util/List;Ljava/util/List;Lcom/ironsource/a2$d;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/yb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 4

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/a2$c;->a:Lcom/ironsource/a2;

    invoke-static {v0}, Lcom/ironsource/a2;->a(Lcom/ironsource/a2;)Lcom/ironsource/T0;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/a2$c;->a:Lcom/ironsource/a2;

    iget-object v2, p0, Lcom/ironsource/a2$c;->b:Lcom/ironsource/a2$d;

    new-instance v3, Lcom/ironsource/a2$c$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, p1, v2}, Lcom/ironsource/a2$c$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/a2;Ljava/lang/String;Lcom/ironsource/a2$d;)V

    invoke-virtual {v0, v3}, Lcom/ironsource/yb;->a(Ljava/lang/Runnable;)V

    return-void
.end method
