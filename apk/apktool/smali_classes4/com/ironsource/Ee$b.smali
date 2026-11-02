.class public final Lcom/ironsource/Ee$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Ee;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Ee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/Ae;


# direct methods
.method public constructor <init>(Lcom/ironsource/Ae;)V
    .locals 1

    const-string v0, "sdkInitResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Ee$b;->a:Lcom/ironsource/Ae;

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/Ee$b;Lcom/ironsource/Ae;ILjava/lang/Object;)Lcom/ironsource/Ee$b;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ironsource/Ee$b;->a:Lcom/ironsource/Ae;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ironsource/Ee$b;->a(Lcom/ironsource/Ae;)Lcom/ironsource/Ee$b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/ironsource/Ae;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ee$b;->a:Lcom/ironsource/Ae;

    return-object v0
.end method

.method public final a(Lcom/ironsource/Ae;)Lcom/ironsource/Ee$b;
    .locals 1

    .line 2
    const-string v0, "sdkInitResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/Ee$b;

    invoke-direct {v0, p1}, Lcom/ironsource/Ee$b;-><init>(Lcom/ironsource/Ae;)V

    return-object v0
.end method

.method public final b()Lcom/ironsource/Ae;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ee$b;->a:Lcom/ironsource/Ae;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/ironsource/Ee$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ironsource/Ee$b;

    iget-object v1, p0, Lcom/ironsource/Ee$b;->a:Lcom/ironsource/Ae;

    iget-object p1, p1, Lcom/ironsource/Ee$b;->a:Lcom/ironsource/Ae;

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
    iget-object v0, p0, Lcom/ironsource/Ee$b;->a:Lcom/ironsource/Ae;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ee$b;->a:Lcom/ironsource/Ae;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Success(sdkInitResponse="

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
