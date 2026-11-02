.class public final Lcom/ironsource/lc;
.super Lcom/ironsource/x0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/lc$a;
    }
.end annotation


# static fields
.field public static final z:Lcom/ironsource/lc$a;


# instance fields
.field private final u:Lcom/ironsource/g0;

.field private final v:Lcom/ironsource/w0;

.field private final w:Lcom/ironsource/Wb;

.field private final x:Ljava/lang/String;

.field private final y:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/lc$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/lc$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/lc;->z:Lcom/ironsource/lc$a;

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/g0;Lcom/ironsource/w0;Lcom/ironsource/Wb;)V
    .locals 21

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    const-string v3, "adProperties"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "adUnitCommonData"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "configs"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {v0}, Lcom/ironsource/w0;->f()Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/w0;->d()Ljava/util/List;

    move-result-object v4

    .line 3
    invoke-virtual {v0}, Lcom/ironsource/w0;->e()Lcom/ironsource/ta;

    move-result-object v5

    .line 4
    invoke-virtual {v2}, Lcom/ironsource/Wb;->d()Lcom/ironsource/A2;

    move-result-object v6

    .line 5
    invoke-virtual {v2}, Lcom/ironsource/Wb;->b()I

    move-result v7

    .line 6
    invoke-virtual {v2}, Lcom/ironsource/Wb;->c()J

    move-result-wide v8

    const/16 v10, 0x3e8

    int-to-long v10, v10

    div-long/2addr v8, v10

    long-to-int v8, v8

    .line 7
    invoke-virtual {v2}, Lcom/ironsource/Wb;->a()Z

    move-result v9

    .line 8
    invoke-virtual {v2}, Lcom/ironsource/Wb;->f()I

    move-result v10

    .line 10
    new-instance v12, Lcom/ironsource/M0;

    move-object v11, v12

    .line 11
    sget-object v12, Lcom/ironsource/M0$a;->a:Lcom/ironsource/M0$a;

    .line 12
    invoke-virtual {v2}, Lcom/ironsource/Wb;->d()Lcom/ironsource/A2;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ironsource/A2;->j()J

    move-result-wide v13

    .line 13
    invoke-virtual {v2}, Lcom/ironsource/Wb;->d()Lcom/ironsource/A2;

    move-result-object v15

    invoke-virtual {v15}, Lcom/ironsource/A2;->b()J

    move-result-wide v15

    const-wide/16 v17, -0x1

    .line 14
    invoke-direct/range {v11 .. v18}, Lcom/ironsource/M0;-><init>(Lcom/ironsource/M0$a;JJJ)V

    .line 19
    invoke-virtual {v2}, Lcom/ironsource/Wb;->h()J

    move-result-wide v13

    .line 20
    invoke-virtual {v2}, Lcom/ironsource/Wb;->i()Z

    move-result v15

    .line 21
    invoke-virtual {v2}, Lcom/ironsource/Wb;->k()Z

    move-result v16

    .line 22
    invoke-virtual {v2}, Lcom/ironsource/Wb;->j()Z

    move-result v17

    const/high16 v19, 0x10000

    const/16 v20, 0x0

    const/4 v2, 0x1

    move-object v12, v11

    const/4 v11, -0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    .line 23
    invoke-direct/range {v0 .. v20}, Lcom/ironsource/x0;-><init>(Lcom/ironsource/g0;ZLjava/lang/String;Ljava/util/List;Lcom/ironsource/ta;Lcom/ironsource/A2;IIZIILcom/ironsource/M0;JZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 24
    iput-object v1, v0, Lcom/ironsource/lc;->u:Lcom/ironsource/g0;

    move-object/from16 v1, p2

    .line 25
    iput-object v1, v0, Lcom/ironsource/lc;->v:Lcom/ironsource/w0;

    move-object/from16 v2, p3

    .line 26
    iput-object v2, v0, Lcom/ironsource/lc;->w:Lcom/ironsource/Wb;

    .line 49
    const-string v1, "NA"

    iput-object v1, v0, Lcom/ironsource/lc;->x:Ljava/lang/String;

    .line 50
    const-string v1, "MADU_NT"

    iput-object v1, v0, Lcom/ironsource/lc;->y:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/lc;Lcom/ironsource/g0;Lcom/ironsource/w0;Lcom/ironsource/Wb;ILjava/lang/Object;)Lcom/ironsource/lc;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ironsource/lc;->u:Lcom/ironsource/g0;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/ironsource/lc;->v:Lcom/ironsource/w0;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/ironsource/lc;->w:Lcom/ironsource/Wb;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/lc;->a(Lcom/ironsource/g0;Lcom/ironsource/w0;Lcom/ironsource/Wb;)Lcom/ironsource/lc;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()Lcom/ironsource/w0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/lc;->v:Lcom/ironsource/w0;

    return-object v0
.end method

.method public final B()Lcom/ironsource/Wb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/lc;->w:Lcom/ironsource/Wb;

    return-object v0
.end method

.method public final a(Lcom/ironsource/g0;Lcom/ironsource/w0;Lcom/ironsource/Wb;)Lcom/ironsource/lc;
    .locals 1

    .line 1
    const-string v0, "adProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitCommonData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/lc;

    invoke-direct {v0, p1, p2, p3}, Lcom/ironsource/lc;-><init>(Lcom/ironsource/g0;Lcom/ironsource/w0;Lcom/ironsource/Wb;)V

    return-object v0
.end method

.method public b()Lcom/ironsource/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/lc;->u:Lcom/ironsource/g0;

    return-object v0
.end method

.method public b(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "providerSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getNativeAdSettings()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "getNativeAdSettings(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/lc;->x:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/ironsource/lc;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ironsource/lc;

    iget-object v1, p0, Lcom/ironsource/lc;->u:Lcom/ironsource/g0;

    iget-object v3, p1, Lcom/ironsource/lc;->u:Lcom/ironsource/g0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/ironsource/lc;->v:Lcom/ironsource/w0;

    iget-object v3, p1, Lcom/ironsource/lc;->v:Lcom/ironsource/w0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/ironsource/lc;->w:Lcom/ironsource/Wb;

    iget-object p1, p1, Lcom/ironsource/lc;->w:Lcom/ironsource/Wb;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/lc;->u:Lcom/ironsource/g0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/lc;->v:Lcom/ironsource/w0;

    invoke-virtual {v1}, Lcom/ironsource/w0;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/lc;->w:Lcom/ironsource/Wb;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/lc;->y:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/lc;->u:Lcom/ironsource/g0;

    iget-object v1, p0, Lcom/ironsource/lc;->v:Lcom/ironsource/w0;

    iget-object v2, p0, Lcom/ironsource/lc;->w:Lcom/ironsource/Wb;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NativeAdUnitData(adProperties="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", adUnitCommonData="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", configs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x()Lcom/ironsource/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/lc;->u:Lcom/ironsource/g0;

    return-object v0
.end method

.method public final y()Lcom/ironsource/w0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/lc;->v:Lcom/ironsource/w0;

    return-object v0
.end method

.method public final z()Lcom/ironsource/Wb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/lc;->w:Lcom/ironsource/Wb;

    return-object v0
.end method
