.class public final Lcom/ironsource/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 7
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "abt"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "auid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "idfi"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "adq_init_blob"

    aput-object v2, v0, v1

    .line 8
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/i0;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/i0;->a:Ljava/util/List;

    return-object v0
.end method
