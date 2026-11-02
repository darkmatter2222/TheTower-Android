.class final Lcom/tapjoy/internal/el$1;
.super Lcom/tapjoy/internal/el;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/el;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/el<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ei;Ljava/lang/Class;)V
    .locals 0

    .line 204
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/el;-><init>(Lcom/tapjoy/internal/ei;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final synthetic a(Lcom/tapjoy/internal/em;)Ljava/lang/Object;
    .locals 2

    .line 1214
    invoke-virtual {p1}, Lcom/tapjoy/internal/em;->c()I

    move-result p1

    if-nez p1, :cond_0

    .line 1215
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1216
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 1217
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Invalid boolean value 0x%02x"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic a(Lcom/tapjoy/internal/en;Ljava/lang/Object;)V
    .locals 0

    .line 204
    check-cast p2, Ljava/lang/Boolean;

    .line 2210
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/en;->c(I)V

    return-void
.end method
