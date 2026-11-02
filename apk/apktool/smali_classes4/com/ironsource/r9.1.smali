.class public final Lcom/ironsource/r9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/r9$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInitTools.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitTools.kt\ncom/unity3d/ironsourceads/internal/init/InitTools\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,123:1\n32#2,2:124\n37#3:126\n36#3,3:127\n*S KotlinDebug\n*F\n+ 1 InitTools.kt\ncom/unity3d/ironsourceads/internal/init/InitTools\n*L\n27#1:124,2\n34#1:126\n34#1:127,3\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/se;)Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Lcom/ironsource/se;->c()I

    move-result v0

    const/16 v1, 0x816

    if-eq v0, v1, :cond_4

    .line 210
    invoke-virtual {p1}, Lcom/ironsource/se;->c()I

    move-result v0

    const/16 v1, 0x83e

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 213
    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/se;->c()I

    move-result v0

    const/16 v1, 0x820

    if-eq v0, v1, :cond_3

    .line 214
    invoke-virtual {p1}, Lcom/ironsource/se;->c()I

    move-result v0

    const/16 v1, 0x834

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {p1}, Lcom/ironsource/se;->c()I

    move-result v0

    const/16 v1, 0x82a

    if-ne v0, v1, :cond_2

    .line 218
    sget-object p1, Lcom/ironsource/z5;->a:Lcom/ironsource/z5;

    invoke-virtual {p1}, Lcom/ironsource/z5;->a()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    return-object p1

    .line 220
    :cond_2
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {p1}, Lcom/ironsource/se;->d()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1fe

    invoke-direct {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 221
    :cond_3
    :goto_0
    sget-object p1, Lcom/ironsource/z5;->a:Lcom/ironsource/z5;

    invoke-virtual {p1}, Lcom/ironsource/z5;->c()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    return-object p1

    .line 222
    :cond_4
    :goto_1
    sget-object p1, Lcom/ironsource/z5;->a:Lcom/ironsource/z5;

    invoke-virtual {p1}, Lcom/ironsource/z5;->b()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    return-object p1
.end method

.method public final a(JJJJJ)V
    .locals 3

    const-string v0, "parsingDurationMs="

    const/4 v1, 0x1

    .line 250
    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 257
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ";javaHeapKb="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ";nativeHeapKb="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ";sharedOtherKb="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ";initResponseJsonSizeKb="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p9, p10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 258
    const-string p2, "ext1"

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 260
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 261
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 264
    :goto_0
    new-instance p1, Lcom/ironsource/C5;

    sget-object p2, Lcom/ironsource/D5;->V3:Lcom/ironsource/D5;

    invoke-direct {p1, p2, v1}, Lcom/ironsource/C5;-><init>(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 265
    sget-object p2, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {p2}, Lcom/ironsource/Pb$a;->d()Lcom/ironsource/M7;

    move-result-object p2

    invoke-interface {p2}, Lcom/ironsource/M7;->q()Lcom/ironsource/G1;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r3;->a(Lcom/ironsource/C5;)V

    return-void
.end method

.method public final a(JLcom/ironsource/Ue$a;)V
    .locals 3

    const-string v0, "responseOrigin"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 223
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 226
    :try_start_0
    const-string v2, "isMultipleAdObjects"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 227
    const-string v0, "duration"

    invoke-virtual {v1, v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 228
    const-string p1, "ext1"

    invoke-virtual {p3}, Lcom/ironsource/Ue$a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 230
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 231
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 234
    :goto_0
    new-instance p1, Lcom/ironsource/C5;

    sget-object p2, Lcom/ironsource/D5;->S:Lcom/ironsource/D5;

    invoke-direct {p1, p2, v1}, Lcom/ironsource/C5;-><init>(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 235
    sget-object p2, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {p2}, Lcom/ironsource/Pb$a;->d()Lcom/ironsource/M7;

    move-result-object p2

    invoke-interface {p2}, Lcom/ironsource/M7;->q()Lcom/ironsource/G1;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r3;->a(Lcom/ironsource/C5;)V

    return-void
.end method

.method public final a(Lcom/ironsource/se;J)V
    .locals 4

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 236
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 239
    :try_start_0
    const-string v2, "errorCode"

    invoke-virtual {p1}, Lcom/ironsource/se;->c()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 240
    const-string v2, "reason"

    invoke-virtual {p1}, Lcom/ironsource/se;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    const-string p1, "duration"

    invoke-virtual {v1, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 242
    const-string p1, "isMultipleAdObjects"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 244
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 245
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 248
    :goto_0
    new-instance p1, Lcom/ironsource/C5;

    sget-object p2, Lcom/ironsource/D5;->R:Lcom/ironsource/D5;

    invoke-direct {p1, p2, v1}, Lcom/ironsource/C5;-><init>(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 249
    sget-object p2, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {p2}, Lcom/ironsource/Pb$a;->d()Lcom/ironsource/M7;

    move-result-object p2

    invoke-interface {p2}, Lcom/ironsource/M7;->q()Lcom/ironsource/G1;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r3;->a(Lcom/ironsource/C5;)V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 7

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/ironsource/V7;->a:Lcom/ironsource/V7;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/ironsource/V7;->a(Lcom/ironsource/V7;Ljava/lang/Runnable;JILjava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/util/List;)[Lcom/ironsource/mediationsdk/IronSource$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;",
            ">;)[",
            "Lcom/ironsource/mediationsdk/IronSource$a;"
        }
    .end annotation

    const-string v0, "adFormats"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 100
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/ironsourceads/IronSourceAds$AdFormat;

    .line 101
    sget-object v2, Lcom/ironsource/r9$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 104
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$a;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 107
    :cond_1
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$a;->c:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    :cond_2
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$a;->d:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 208
    new-array p1, p1, [Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/ironsource/mediationsdk/IronSource$a;

    return-object p1
.end method

.method public final b(Lcom/ironsource/se;)Lcom/ironsource/se;
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/ironsource/se;->c()I

    move-result v0

    const/16 v1, 0x820

    if-ne v0, v1, :cond_0

    .line 4
    new-instance v0, Lcom/ironsource/se;

    .line 5
    invoke-virtual {p1}, Lcom/ironsource/se;->c()I

    move-result p1

    .line 6
    const-string v1, "serverResponseIsNotValid"

    invoke-direct {v0, p1, v1}, Lcom/ironsource/se;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_0
    return-object p1
.end method

.method public final b(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/V7;->a:Lcom/ironsource/V7;

    invoke-virtual {v0, p1}, Lcom/ironsource/V7;->a(Ljava/lang/Runnable;)V

    return-void
.end method
