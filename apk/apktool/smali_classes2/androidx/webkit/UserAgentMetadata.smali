.class public final Landroidx/webkit/UserAgentMetadata;
.super Ljava/lang/Object;
.source "UserAgentMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/UserAgentMetadata$Builder;,
        Landroidx/webkit/UserAgentMetadata$BrandVersion;,
        Landroidx/webkit/UserAgentMetadata$FormFactors;
    }
.end annotation


# static fields
.field public static final BITNESS_DEFAULT:I = 0x0

.field public static final FORM_FACTOR_AUTOMOTIVE:Ljava/lang/String; = "Automotive"

.field public static final FORM_FACTOR_DESKTOP:Ljava/lang/String; = "Desktop"

.field public static final FORM_FACTOR_EINK:Ljava/lang/String; = "EInk"

.field public static final FORM_FACTOR_MOBILE:Ljava/lang/String; = "Mobile"

.field public static final FORM_FACTOR_TABLET:Ljava/lang/String; = "Tablet"

.field public static final FORM_FACTOR_WATCH:Ljava/lang/String; = "Watch"

.field public static final FORM_FACTOR_XR:Ljava/lang/String; = "XR"

.field private static final VALID_FORM_FACTORS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mArchitecture:Ljava/lang/String;

.field private mBitness:I

.field private final mBrandVersionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/webkit/UserAgentMetadata$BrandVersion;",
            ">;"
        }
    .end annotation
.end field

.field private final mFormFactors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFullVersion:Ljava/lang/String;

.field private mMobile:Z

.field private final mModel:Ljava/lang/String;

.field private final mPlatform:Ljava/lang/String;

.field private final mPlatformVersion:Ljava/lang/String;

.field private mWow64:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 118
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Desktop"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Automotive"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Mobile"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Tablet"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "XR"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "EInk"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Watch"

    aput-object v3, v1, v2

    .line 119
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/webkit/UserAgentMetadata;->VALID_FORM_FACTORS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/webkit/UserAgentMetadata$BrandVersion;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZIZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Landroidx/webkit/UserAgentMetadata;->mBrandVersionList:Ljava/util/List;

    .line 145
    iput-object p2, p0, Landroidx/webkit/UserAgentMetadata;->mFullVersion:Ljava/lang/String;

    .line 146
    iput-object p3, p0, Landroidx/webkit/UserAgentMetadata;->mPlatform:Ljava/lang/String;

    .line 147
    iput-object p4, p0, Landroidx/webkit/UserAgentMetadata;->mPlatformVersion:Ljava/lang/String;

    .line 148
    iput-object p5, p0, Landroidx/webkit/UserAgentMetadata;->mArchitecture:Ljava/lang/String;

    .line 149
    iput-object p6, p0, Landroidx/webkit/UserAgentMetadata;->mModel:Ljava/lang/String;

    .line 150
    iput-boolean p7, p0, Landroidx/webkit/UserAgentMetadata;->mMobile:Z

    .line 151
    iput p8, p0, Landroidx/webkit/UserAgentMetadata;->mBitness:I

    .line 152
    iput-boolean p9, p0, Landroidx/webkit/UserAgentMetadata;->mWow64:Z

    .line 153
    iput-object p10, p0, Landroidx/webkit/UserAgentMetadata;->mFormFactors:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLjava/util/List;Landroidx/webkit/UserAgentMetadata$1;)V
    .locals 0

    .line 45
    invoke-direct/range {p0 .. p10}, Landroidx/webkit/UserAgentMetadata;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLjava/util/List;)V

    return-void
.end method

.method static synthetic access$200()Ljava/util/Set;
    .locals 1

    .line 45
    sget-object v0, Landroidx/webkit/UserAgentMetadata;->VALID_FORM_FACTORS:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 283
    :cond_0
    instance-of v1, p1, Landroidx/webkit/UserAgentMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 284
    :cond_1
    check-cast p1, Landroidx/webkit/UserAgentMetadata;

    .line 285
    iget-boolean v1, p0, Landroidx/webkit/UserAgentMetadata;->mMobile:Z

    iget-boolean v3, p1, Landroidx/webkit/UserAgentMetadata;->mMobile:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/webkit/UserAgentMetadata;->mBitness:I

    iget v3, p1, Landroidx/webkit/UserAgentMetadata;->mBitness:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroidx/webkit/UserAgentMetadata;->mWow64:Z

    iget-boolean v3, p1, Landroidx/webkit/UserAgentMetadata;->mWow64:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroidx/webkit/UserAgentMetadata;->mBrandVersionList:Ljava/util/List;

    iget-object v3, p1, Landroidx/webkit/UserAgentMetadata;->mBrandVersionList:Ljava/util/List;

    .line 286
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/webkit/UserAgentMetadata;->mFullVersion:Ljava/lang/String;

    iget-object v3, p1, Landroidx/webkit/UserAgentMetadata;->mFullVersion:Ljava/lang/String;

    .line 287
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/webkit/UserAgentMetadata;->mPlatform:Ljava/lang/String;

    iget-object v3, p1, Landroidx/webkit/UserAgentMetadata;->mPlatform:Ljava/lang/String;

    .line 288
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/webkit/UserAgentMetadata;->mPlatformVersion:Ljava/lang/String;

    iget-object v3, p1, Landroidx/webkit/UserAgentMetadata;->mPlatformVersion:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/webkit/UserAgentMetadata;->mArchitecture:Ljava/lang/String;

    iget-object v3, p1, Landroidx/webkit/UserAgentMetadata;->mArchitecture:Ljava/lang/String;

    .line 289
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/webkit/UserAgentMetadata;->mModel:Ljava/lang/String;

    iget-object v3, p1, Landroidx/webkit/UserAgentMetadata;->mModel:Ljava/lang/String;

    .line 290
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/webkit/UserAgentMetadata;->mFormFactors:Ljava/util/List;

    iget-object p1, p1, Landroidx/webkit/UserAgentMetadata;->mFormFactors:Ljava/util/List;

    .line 291
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getArchitecture()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata;->mArchitecture:Ljava/lang/String;

    return-object v0
.end method

.method public getBitness()I
    .locals 1

    .line 241
    iget v0, p0, Landroidx/webkit/UserAgentMetadata;->mBitness:I

    return v0
.end method

.method public getBrandVersionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/webkit/UserAgentMetadata$BrandVersion;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata;->mBrandVersionList:Ljava/util/List;

    return-object v0
.end method

.method public getFormFactors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata;->mFormFactors:Ljava/util/List;

    return-object v0
.end method

.method public getFullVersion()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata;->mFullVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata;->mModel:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata;->mPlatform:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata;->mPlatformVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 10

    .line 296
    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata;->mBrandVersionList:Ljava/util/List;

    iget-object v1, p0, Landroidx/webkit/UserAgentMetadata;->mFullVersion:Ljava/lang/String;

    iget-object v2, p0, Landroidx/webkit/UserAgentMetadata;->mPlatform:Ljava/lang/String;

    iget-object v3, p0, Landroidx/webkit/UserAgentMetadata;->mPlatformVersion:Ljava/lang/String;

    iget-object v4, p0, Landroidx/webkit/UserAgentMetadata;->mArchitecture:Ljava/lang/String;

    iget-object v5, p0, Landroidx/webkit/UserAgentMetadata;->mModel:Ljava/lang/String;

    iget-boolean v6, p0, Landroidx/webkit/UserAgentMetadata;->mMobile:Z

    .line 297
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget v7, p0, Landroidx/webkit/UserAgentMetadata;->mBitness:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-boolean v8, p0, Landroidx/webkit/UserAgentMetadata;->mWow64:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-object v9, p0, Landroidx/webkit/UserAgentMetadata;->mFormFactors:Ljava/util/List;

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    .line 296
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMobile()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Landroidx/webkit/UserAgentMetadata;->mMobile:Z

    return v0
.end method

.method public isWow64()Z
    .locals 1

    .line 253
    iget-boolean v0, p0, Landroidx/webkit/UserAgentMetadata;->mWow64:Z

    return v0
.end method
