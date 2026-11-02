.class public final Lcom/ironsource/C2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/c2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/C2;->b(Lcom/ironsource/a2;Lcom/ironsource/D2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/D2;

.field final synthetic b:Lcom/ironsource/a2;

.field final synthetic c:Lcom/ironsource/A;


# direct methods
.method constructor <init>(Lcom/ironsource/D2;Lcom/ironsource/a2;Lcom/ironsource/A;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/C2$c;->a:Lcom/ironsource/D2;

    iput-object p2, p0, Lcom/ironsource/C2$c;->b:Lcom/ironsource/a2;

    iput-object p3, p0, Lcom/ironsource/C2$c;->c:Lcom/ironsource/A;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;ILjava/lang/String;J)V
    .locals 9

    const-string v0, "auctionFallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/ironsource/C2$c;->a:Lcom/ironsource/D2;

    .line 20
    iget-object v8, p0, Lcom/ironsource/C2$c;->c:Lcom/ironsource/A;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-wide v6, p5

    .line 21
    invoke-interface/range {v1 .. v8}, Lcom/ironsource/D2;->a(ILjava/lang/String;ILjava/lang/String;JLcom/ironsource/A;)V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;Lcom/ironsource/y2;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/y2;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ironsource/y2;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "IJI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "newWaterfall"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auctionId"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/ironsource/C2$c;->a:Lcom/ironsource/D2;

    .line 3
    iget-object v0, p0, Lcom/ironsource/C2$c;->b:Lcom/ironsource/a2;

    invoke-virtual {v0}, Lcom/ironsource/a2;->c()Ljava/util/Map;

    move-result-object v3

    .line 12
    iget-object v13, p0, Lcom/ironsource/C2$c;->c:Lcom/ironsource/A;

    move-object v2, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move/from16 v11, p9

    move-object/from16 v12, p10

    .line 13
    invoke-interface/range {v1 .. v13}, Lcom/ironsource/D2;->a(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lcom/ironsource/y2;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;Lcom/ironsource/A;)V

    return-void
.end method
