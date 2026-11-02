.class public final Lcom/ironsource/m3$a;
.super Lcom/ironsource/m3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/m3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/m3$b;


# direct methods
.method public constructor <init>(Lcom/ironsource/m3$b;)V
    .locals 1

    const-string v0, "firstReason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/ironsource/m3;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/ironsource/m3$a;->a:Lcom/ironsource/m3$b;

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/m3$a;Lcom/ironsource/m3$b;ILjava/lang/Object;)Lcom/ironsource/m3$a;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ironsource/m3$a;->a:Lcom/ironsource/m3$b;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ironsource/m3$a;->a(Lcom/ironsource/m3$b;)Lcom/ironsource/m3$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/ironsource/m3$b;)Lcom/ironsource/m3$a;
    .locals 1

    .line 1
    const-string v0, "firstReason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/m3$a;

    invoke-direct {v0, p1}, Lcom/ironsource/m3$a;-><init>(Lcom/ironsource/m3$b;)V

    return-object v0
.end method

.method public final d()Lcom/ironsource/m3$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/m3$a;->a:Lcom/ironsource/m3$b;

    return-object v0
.end method

.method public final e()Lcom/ironsource/m3$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/m3$a;->a:Lcom/ironsource/m3$b;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/ironsource/m3$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ironsource/m3$a;

    iget-object v1, p0, Lcom/ironsource/m3$a;->a:Lcom/ironsource/m3$b;

    iget-object p1, p1, Lcom/ironsource/m3$a;->a:Lcom/ironsource/m3$b;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/m3$a;->a:Lcom/ironsource/m3$b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/m3$a;->a:Lcom/ironsource/m3$b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "First(firstReason="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
