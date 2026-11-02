.class public final Lcom/ironsource/i9;
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

    const/16 v0, 0x10

    .line 19
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lat"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "tca"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "tcs"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "tcac"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "conntr"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "lnchr"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "idfi"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mem"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "availMem"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lowM"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mThreshold"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "osArch"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "adqv"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "networks"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "inm"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "kotlinVersion"

    aput-object v2, v0, v1

    .line 20
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/i9;->a:Ljava/util/List;

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
    iget-object v0, p0, Lcom/ironsource/i9;->a:Ljava/util/List;

    return-object v0
.end method
