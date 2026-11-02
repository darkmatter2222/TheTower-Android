.class public final Lcom/ironsource/Wb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/Wb$a;
    }
.end annotation


# static fields
.field public static final m:Lcom/ironsource/Wb$a;

.field private static final n:I


# instance fields
.field private final a:Z

.field private b:Lcom/ironsource/R1;

.field private c:I

.field private d:J

.field private e:Z

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/hc;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/ironsource/hc;

.field private h:I

.field private i:Lcom/ironsource/A2;

.field private j:J

.field private k:Z

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/Wb$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/Wb$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/Wb;->m:Lcom/ironsource/Wb$a;

    return-void
.end method

.method public constructor <init>(IJZLcom/ironsource/R1;Lcom/ironsource/A2;IJZZZ)V
    .locals 1

    const-string v0, "events"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auctionSettings"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean p12, p0, Lcom/ironsource/Wb;->a:Z

    .line 17
    new-instance p12, Ljava/util/ArrayList;

    invoke-direct {p12}, Ljava/util/ArrayList;-><init>()V

    iput-object p12, p0, Lcom/ironsource/Wb;->f:Ljava/util/ArrayList;

    .line 26
    iput p1, p0, Lcom/ironsource/Wb;->c:I

    .line 27
    iput-wide p2, p0, Lcom/ironsource/Wb;->d:J

    .line 28
    iput-boolean p4, p0, Lcom/ironsource/Wb;->e:Z

    .line 29
    iput-object p5, p0, Lcom/ironsource/Wb;->b:Lcom/ironsource/R1;

    .line 30
    iput p7, p0, Lcom/ironsource/Wb;->h:I

    .line 31
    iput-object p6, p0, Lcom/ironsource/Wb;->i:Lcom/ironsource/A2;

    .line 32
    iput-wide p8, p0, Lcom/ironsource/Wb;->j:J

    .line 33
    iput-boolean p10, p0, Lcom/ironsource/Wb;->k:Z

    .line 34
    iput-boolean p11, p0, Lcom/ironsource/Wb;->l:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/ironsource/hc;
    .locals 3

    const-string v0, "placementName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/ironsource/Wb;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "next(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/ironsource/hc;

    .line 20
    invoke-virtual {v1}, Lcom/ironsource/t3;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ironsource/Wb;->c:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/ironsource/Wb;->d:J

    return-void
.end method

.method public final a(Lcom/ironsource/A2;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/ironsource/Wb;->i:Lcom/ironsource/A2;

    return-void
.end method

.method public final a(Lcom/ironsource/R1;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/ironsource/Wb;->b:Lcom/ironsource/R1;

    return-void
.end method

.method public final a(Lcom/ironsource/hc;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/ironsource/Wb;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Lcom/ironsource/Wb;->g:Lcom/ironsource/hc;

    if-nez v0, :cond_0

    .line 16
    iput-object p1, p0, Lcom/ironsource/Wb;->g:Lcom/ironsource/hc;

    return-void

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/t3;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 18
    iput-object p1, p0, Lcom/ironsource/Wb;->g:Lcom/ironsource/hc;

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/ironsource/Wb;->e:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/ironsource/Wb;->e:Z

    return v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ironsource/Wb;->c:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ironsource/Wb;->h:I

    return-void
.end method

.method public final b(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/ironsource/Wb;->j:J

    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/ironsource/Wb;->k:Z

    return-void
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Wb;->d:J

    return-wide v0
.end method

.method public final c(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ironsource/Wb;->l:Z

    return-void
.end method

.method public final d()Lcom/ironsource/A2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/Wb;->i:Lcom/ironsource/A2;

    return-object v0
.end method

.method public final e()Lcom/ironsource/hc;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Wb;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "next(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/ironsource/hc;

    .line 2
    invoke-virtual {v1}, Lcom/ironsource/t3;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ironsource/Wb;->g:Lcom/ironsource/hc;

    return-object v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ironsource/Wb;->h:I

    return v0
.end method

.method public final g()Lcom/ironsource/R1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/Wb;->b:Lcom/ironsource/R1;

    return-object v0
.end method

.method public final h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Wb;->j:J

    return-wide v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/Wb;->k:Z

    return v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/Wb;->a:Z

    return v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/Wb;->l:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/ironsource/Wb;->c:I

    .line 2
    iget-boolean v1, p0, Lcom/ironsource/Wb;->e:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NativeAdConfigurations{parallelLoad="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", bidderExclusive="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
