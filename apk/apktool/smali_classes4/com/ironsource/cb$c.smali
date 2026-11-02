.class public final Lcom/ironsource/cb$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/cb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/p0;

.field private final b:Lcom/ironsource/j6;

.field private final c:Lcom/ironsource/M7;

.field private final d:Lcom/ironsource/t4;

.field private final e:Lcom/ironsource/z7;

.field private final f:Lcom/ironsource/cb$b;

.field private final g:Lcom/ironsource/X0;


# direct methods
.method public constructor <init>(Lcom/ironsource/p0;Lcom/ironsource/j6;Lcom/ironsource/M7;Lcom/ironsource/t4;Lcom/ironsource/z7;Lcom/ironsource/cb$b;Lcom/ironsource/X0;)V
    .locals 1

    const-string v0, "adTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adControllerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentTimeProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idFactory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitValidator"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/cb$c;->a:Lcom/ironsource/p0;

    .line 3
    iput-object p2, p0, Lcom/ironsource/cb$c;->b:Lcom/ironsource/j6;

    .line 4
    iput-object p3, p0, Lcom/ironsource/cb$c;->c:Lcom/ironsource/M7;

    .line 5
    iput-object p4, p0, Lcom/ironsource/cb$c;->d:Lcom/ironsource/t4;

    .line 6
    iput-object p5, p0, Lcom/ironsource/cb$c;->e:Lcom/ironsource/z7;

    .line 7
    iput-object p6, p0, Lcom/ironsource/cb$c;->f:Lcom/ironsource/cb$b;

    .line 8
    iput-object p7, p0, Lcom/ironsource/cb$c;->g:Lcom/ironsource/X0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/j6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/cb$c;->b:Lcom/ironsource/j6;

    return-object v0
.end method

.method public final b()Lcom/ironsource/p0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/cb$c;->a:Lcom/ironsource/p0;

    return-object v0
.end method

.method public final c()Lcom/ironsource/X0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/cb$c;->g:Lcom/ironsource/X0;

    return-object v0
.end method

.method public final d()Lcom/ironsource/cb$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/cb$c;->f:Lcom/ironsource/cb$b;

    return-object v0
.end method

.method public final e()Lcom/ironsource/t4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/cb$c;->d:Lcom/ironsource/t4;

    return-object v0
.end method

.method public final f()Lcom/ironsource/z7;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/cb$c;->e:Lcom/ironsource/z7;

    return-object v0
.end method

.method public final g()Lcom/ironsource/M7;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/cb$c;->c:Lcom/ironsource/M7;

    return-object v0
.end method
