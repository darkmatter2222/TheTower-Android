.class public abstract Lads_mobile_sdk/p21;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x19

    .line 615
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".mp4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".webm"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ".mkv"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ".3gp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ".m4v"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ".ts"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ".flv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ".ogv"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ".avi"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ".mov"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ".qt"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, ".wmv"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, ".mp3"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, ".aac"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, ".wav"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, ".flac"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, ".ogg"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, ".m4a"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, ".mid"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, ".xmf"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, ".mxmf"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, ".rtttl"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, ".rtx"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, ".ota"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, ".imy"

    aput-object v2, v0, v1

    .line 616
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/p21;->a:Ljava/util/Set;

    return-void
.end method

.method public static final a(Landroid/net/Uri;)Z
    .locals 4

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 582
    :cond_0
    sget-object v1, Lads_mobile_sdk/p21;->a:Ljava/util/Set;

    .line 618
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 619
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    .line 620
    invoke-static {p0, v2, v3}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_3
    :goto_0
    return v0
.end method
