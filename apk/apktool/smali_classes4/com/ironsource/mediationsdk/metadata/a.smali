.class public Lcom/ironsource/mediationsdk/metadata/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "do_not_sell"

.field public static final b:Ljava/lang/String; = "is_child_directed"

.field public static final c:Ljava/lang/String; = "is_deviceid_optout"

.field public static final d:Ljava/lang/String; = "google_family_self_certified_sdks"

.field public static final e:Ljava/lang/String; = "iiqf"

.field public static final f:Ljava/lang/String; = "is_test_suite"

.field public static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ljava/lang/String; = "true"

.field protected static final i:Ljava/lang/String; = "false"

.field public static final j:Ljava/lang/String; = "google_water_mark"

.field public static final k:Ljava/lang/String; = "enable"

.field static final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:I = 0x800


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v0, 0xe

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "admob_tfcd"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "admob_tfua"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "BidMachine_COPPA"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "chartboost_coppa"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "DT_COPPA"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v7, "is_child_directed"

    aput-object v7, v0, v1

    const/4 v8, 0x6

    const-string v9, "LevelPlay_ChildDirected"

    aput-object v9, v0, v8

    const/4 v8, 0x7

    const-string v9, "meta_mixed_audience"

    aput-object v9, v0, v8

    const/16 v8, 0x8

    const-string v9, "Mintegral_COPPA"

    aput-object v9, v0, v8

    const/16 v8, 0x9

    const-string v9, "Moloco_COPPA"

    aput-object v9, v0, v8

    const/16 v8, 0xa

    const-string v9, "Pangle_COPPA"

    aput-object v9, v0, v8

    const/16 v8, 0xb

    const-string v9, "UnityAds_COPPA"

    aput-object v9, v0, v8

    const/16 v8, 0xc

    const-string v9, "Vungle_COPPA"

    aput-object v9, v0, v8

    const/16 v8, 0xd

    const-string v9, "Yandex_COPPA"

    aput-object v9, v0, v8

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ironsource/mediationsdk/metadata/a;->g:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v1, [Ljava/lang/String;

    aput-object v7, v1, v2

    const-string v7, "is_deviceid_optout"

    aput-object v7, v1, v3

    const-string v8, "is_test_suite"

    aput-object v8, v1, v4

    const-string v9, "google_family_self_certified_sdks"

    aput-object v9, v1, v5

    const-string v10, "iiqf"

    aput-object v10, v1, v6

    .line 31
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/ironsource/mediationsdk/metadata/a;->l:Ljava/util/Set;

    .line 38
    new-instance v1, Ljava/util/HashSet;

    new-array v6, v6, [Ljava/lang/String;

    aput-object v7, v6, v2

    aput-object v9, v6, v3

    aput-object v8, v6, v4

    aput-object v10, v6, v5

    .line 40
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/ironsource/mediationsdk/metadata/a;->m:Ljava/util/Set;

    .line 46
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/ironsource/mediationsdk/metadata/a;->n:Ljava/util/Set;

    .line 49
    const-string v0, "do_not_sell"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
