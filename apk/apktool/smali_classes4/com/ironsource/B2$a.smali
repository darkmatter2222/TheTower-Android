.class public final Lcom/ironsource/B2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/D2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/B2;->a(Lcom/ironsource/D;Lcom/ironsource/Lg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/B2;

.field final synthetic b:Lcom/ironsource/D;

.field final synthetic c:Lcom/ironsource/Lg;


# direct methods
.method public static synthetic $r8$lambda$AnjpRc9T3qqxWQX7P3Yy5NqahjY(Lcom/ironsource/B2;Lcom/ironsource/D;Lcom/ironsource/Lg;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lcom/ironsource/y2;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;Lcom/ironsource/A;)V
    .locals 0

    invoke-static/range {p0 .. p14}, Lcom/ironsource/B2$a;->a(Lcom/ironsource/B2;Lcom/ironsource/D;Lcom/ironsource/Lg;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lcom/ironsource/y2;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;Lcom/ironsource/A;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FyB2NRQ6ezM7wwQe_Eo8LHP-Y_Q(Lcom/ironsource/B2;Lcom/ironsource/D;Lcom/ironsource/Lg;ILjava/lang/String;ILjava/lang/String;JLcom/ironsource/A;)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/ironsource/B2$a;->a(Lcom/ironsource/B2;Lcom/ironsource/D;Lcom/ironsource/Lg;ILjava/lang/String;ILjava/lang/String;JLcom/ironsource/A;)V

    return-void
.end method

.method constructor <init>(Lcom/ironsource/B2;Lcom/ironsource/D;Lcom/ironsource/Lg;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/B2$a;->a:Lcom/ironsource/B2;

    iput-object p2, p0, Lcom/ironsource/B2$a;->b:Lcom/ironsource/D;

    iput-object p3, p0, Lcom/ironsource/B2$a;->c:Lcom/ironsource/Lg;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Lcom/ironsource/B2;Lcom/ironsource/D;Lcom/ironsource/Lg;ILjava/lang/String;ILjava/lang/String;JLcom/ironsource/A;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0}, Lcom/ironsource/B2;->a(Lcom/ironsource/B2;Lcom/ironsource/D2;)V

    .line 6
    invoke-static/range {p0 .. p9}, Lcom/ironsource/B2;->a(Lcom/ironsource/B2;Lcom/ironsource/D;Lcom/ironsource/Lg;ILjava/lang/String;ILjava/lang/String;JLcom/ironsource/A;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/B2;Lcom/ironsource/D;Lcom/ironsource/Lg;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lcom/ironsource/y2;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;Lcom/ironsource/A;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/ironsource/B2;->a(Lcom/ironsource/B2;Lcom/ironsource/D2;)V

    .line 3
    invoke-static/range {p0 .. p14}, Lcom/ironsource/B2;->a(Lcom/ironsource/B2;Lcom/ironsource/D;Lcom/ironsource/Lg;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lcom/ironsource/y2;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;Lcom/ironsource/A;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    const-string v0, "errorReason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/ironsource/B2$a;->c:Lcom/ironsource/Lg;

    invoke-interface {v0, p1, p2}, Lcom/ironsource/Lg;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;ILjava/lang/String;JLcom/ironsource/A;)V
    .locals 12

    const-string v0, "auctionFallback"

    move-object/from16 v8, p4

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/ironsource/B2$a;->a:Lcom/ironsource/B2;

    invoke-static {v0}, Lcom/ironsource/B2;->a(Lcom/ironsource/B2;)Lcom/ironsource/T0;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/B2$a;->a:Lcom/ironsource/B2;

    iget-object v3, p0, Lcom/ironsource/B2$a;->b:Lcom/ironsource/D;

    iget-object v4, p0, Lcom/ironsource/B2$a;->c:Lcom/ironsource/Lg;

    new-instance v1, Lcom/ironsource/B2$a$$ExternalSyntheticLambda1;

    move v5, p1

    move-object v6, p2

    move v7, p3

    move-wide/from16 v9, p5

    move-object/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lcom/ironsource/B2$a$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/B2;Lcom/ironsource/D;Lcom/ironsource/Lg;ILjava/lang/String;ILjava/lang/String;JLcom/ironsource/A;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/yb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lcom/ironsource/y2;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;Lcom/ironsource/A;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/y2;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/H;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ironsource/y2;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "IJI",
            "Ljava/lang/String;",
            "Lcom/ironsource/A;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "newWaterfall"

    move-object/from16 v6, p1

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adInstancePayloads"

    move-object/from16 v7, p2

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "auctionId"

    move-object/from16 v8, p3

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v0, Lcom/ironsource/B2$a;->a:Lcom/ironsource/B2;

    invoke-static {v1}, Lcom/ironsource/B2;->a(Lcom/ironsource/B2;)Lcom/ironsource/T0;

    move-result-object v1

    iget-object v3, v0, Lcom/ironsource/B2$a;->a:Lcom/ironsource/B2;

    iget-object v4, v0, Lcom/ironsource/B2$a;->b:Lcom/ironsource/D;

    iget-object v5, v0, Lcom/ironsource/B2$a;->c:Lcom/ironsource/Lg;

    new-instance v2, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move-wide/from16 v13, p8

    move/from16 v15, p10

    move-object/from16 v16, p11

    move-object/from16 v17, p12

    invoke-direct/range {v2 .. v17}, Lcom/ironsource/B2$a$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/B2;Lcom/ironsource/D;Lcom/ironsource/Lg;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lcom/ironsource/y2;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;Lcom/ironsource/A;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/yb;->a(Ljava/lang/Runnable;)V

    return-void
.end method
