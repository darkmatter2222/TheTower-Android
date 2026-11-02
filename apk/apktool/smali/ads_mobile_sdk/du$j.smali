.class abstract Lads_mobile_sdk/du$j;
.super Lads_mobile_sdk/du;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/du;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "j"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1172
    invoke-direct {p0}, Lads_mobile_sdk/du;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lads_mobile_sdk/du-IA;)V
    .locals 0

    invoke-direct {p0}, Lads_mobile_sdk/du$j;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lads_mobile_sdk/du;II)Z
.end method

.method public final d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1143
    invoke-super {p0}, Lads_mobile_sdk/du;->f()Lads_mobile_sdk/du$g;

    move-result-object v0

    return-object v0
.end method
