.class public final Lcom/ironsource/g9;
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

    const/16 v0, 0xa

    .line 13
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lat"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "platform"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "asel"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "gaid"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "lnchr"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "lcntry"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mem"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mThreshold"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "osArch"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lang"

    aput-object v2, v0, v1

    .line 14
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/g9;->a:Ljava/util/List;

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
    iget-object v0, p0, Lcom/ironsource/g9;->a:Ljava/util/List;

    return-object v0
.end method
