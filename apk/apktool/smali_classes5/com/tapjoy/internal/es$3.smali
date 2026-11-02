.class public final Lcom/tapjoy/internal/es$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/es;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/tapjoy/internal/es;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/es;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/tapjoy/internal/es$3;->d:Lcom/tapjoy/internal/es;

    iput-object p2, p0, Lcom/tapjoy/internal/es$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tapjoy/internal/es$3;->b:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/tapjoy/internal/es$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 147
    const-string v0, "errorType"

    const-string v1, "complete"

    const-string v2, "adUserInteraction"

    const-string v3, "skipped"

    const-string v4, "thirdQuartile"

    const-string v5, "midpoint"

    const-string v6, "firstQuartile"

    const-string v7, "start"

    const-string v8, "bufferStart"

    const-string v9, "TJOMViewabilityAgent"

    :try_start_0
    iget-object v10, p0, Lcom/tapjoy/internal/es$3;->a:Ljava/lang/String;

    const-string v11, "loaded"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v11, 0x1

    const-string v12, "triggerEvent: event name \'"

    if-eqz v10, :cond_1

    .line 148
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/es$3;->d:Lcom/tapjoy/internal/es;

    invoke-static {v0}, Lcom/tapjoy/internal/es;->d(Lcom/tapjoy/internal/es;)Lcom/tapjoy/internal/cl;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/internal/da;->d:Lcom/tapjoy/internal/da;

    .line 2000
    const-string v2, "Position is null"

    invoke-static {v1, v2}, Lcom/tapjoy/internal/dq;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/tapjoy/internal/db;

    invoke-direct {v2, v1}, Lcom/tapjoy/internal/db;-><init>(Lcom/tapjoy/internal/da;)V

    .line 3000
    const-string v1, "VastProperties is null"

    invoke-static {v2, v1}, Lcom/tapjoy/internal/dq;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tapjoy/internal/cl;->a:Lcom/tapjoy/internal/cx;

    invoke-static {v1}, Lcom/tapjoy/internal/dq;->b(Lcom/tapjoy/internal/cx;)V

    iget-object v1, v0, Lcom/tapjoy/internal/cl;->a:Lcom/tapjoy/internal/cx;

    invoke-static {v1}, Lcom/tapjoy/internal/dq;->c(Lcom/tapjoy/internal/cx;)V

    iget-object v0, v0, Lcom/tapjoy/internal/cl;->a:Lcom/tapjoy/internal/cx;

    invoke-virtual {v2}, Lcom/tapjoy/internal/db;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 5000
    iget-boolean v2, v0, Lcom/tapjoy/internal/cx;->h:Z

    if-nez v2, :cond_0

    .line 6000
    iget-object v2, v0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/du;

    .line 7000
    invoke-static {}, Lcom/tapjoy/internal/dh;->a()Lcom/tapjoy/internal/dh;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tapjoy/internal/du;->c()Landroid/webkit/WebView;

    move-result-object v2

    .line 8000
    const-string v4, "publishLoadedEvent"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v2, v4, v1}, Lcom/tapjoy/internal/dh;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4000
    iput-boolean v11, v0, Lcom/tapjoy/internal/cx;->h:Z

    goto/16 :goto_1

    .line 5000
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Loaded event can only be sent once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1
    iget-object v10, p0, Lcom/tapjoy/internal/es$3;->a:Ljava/lang/String;

    const-string v13, "impression"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 150
    iget-object v0, p0, Lcom/tapjoy/internal/es$3;->d:Lcom/tapjoy/internal/es;

    invoke-static {v0}, Lcom/tapjoy/internal/es;->d(Lcom/tapjoy/internal/es;)Lcom/tapjoy/internal/cl;

    move-result-object v0

    .line 9000
    iget-object v1, v0, Lcom/tapjoy/internal/cl;->a:Lcom/tapjoy/internal/cx;

    invoke-static {v1}, Lcom/tapjoy/internal/dq;->a(Lcom/tapjoy/internal/cx;)V

    iget-object v1, v0, Lcom/tapjoy/internal/cl;->a:Lcom/tapjoy/internal/cx;

    invoke-static {v1}, Lcom/tapjoy/internal/dq;->c(Lcom/tapjoy/internal/cx;)V

    iget-object v1, v0, Lcom/tapjoy/internal/cl;->a:Lcom/tapjoy/internal/cx;

    invoke-virtual {v1}, Lcom/tapjoy/internal/cx;->d()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v1, :cond_2

    :try_start_2
    iget-object v1, v0, Lcom/tapjoy/internal/cl;->a:Lcom/tapjoy/internal/cx;

    invoke-virtual {v1}, Lcom/tapjoy/internal/cx;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    :try_start_3
    iget-object v1, v0, Lcom/tapjoy/internal/cl;->a:Lcom/tapjoy/internal/cx;

    invoke-virtual {v1}, Lcom/tapjoy/internal/cx;->d()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v0, v0, Lcom/tapjoy/internal/cl;->a:Lcom/tapjoy/internal/cx;

    .line 11000
    iget-boolean v1, v0, Lcom/tapjoy/internal/cx;->g:Z

    if-nez v1, :cond_3

    .line 12000
    iget-object v1, v0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/du;

    .line 13000
    invoke-static {}, Lcom/tapjoy/internal/dh;->a()Lcom/tapjoy/internal/dh;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tapjoy/internal/du;->c()Landroid/webkit/WebView;

    move-result-object v1

    .line 14000
    const-string v3, "publishImpressionEvent"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3, v4}, Lcom/tapjoy/internal/dh;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10000
    iput-boolean v11, v0, Lcom/tapjoy/internal/cx;->g:Z

    goto/16 :goto_1

    .line 11000
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impression event can only be sent once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_4
    iget-object v10, p0, Lcom/tapjoy/internal/es$3;->a:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 152
    iget-object v0, p0, Lcom/tapjoy/internal/es$3;->d:Lcom/tapjoy/internal/es;

    invoke-static {v0}, Lcom/tapjoy/internal/es;->e(Lcom/tapjoy/internal/es;)Lcom/tapjoy/internal/cz;

    move-result-object v0

    .line 15000
    iget-object v1, v0, Lcom/tapjoy/internal/cz;->a:Lcom/tapjoy/internal/cx;

    invoke-static {v1}, Lcom/tapjoy/internal/dq;->b(Lcom/tapjoy/internal/cx;)V

    iget-object v0, v0, Lcom/tapjoy/internal/cz;->a:Lcom/tapjoy/internal/cx;

    .line 16000
    iget-object v0, v0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/du;

    .line 15000
    invoke-virtual {v0, v8}, Lcom/tapjoy/internal/du;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 153
    :cond_5
    iget-object v8, p0, Lcom/tapjoy/internal/es$3;->a:Ljava/lang/String;

    const-string v10, "bufferEnd"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 154
    iget-object v0, p0, Lcom/tapjoy/internal/es$3;->d:Lcom/tapjoy/internal/es;

    invoke-static {v0}, Lcom/tapjoy/internal/es;->e(Lcom/tapjoy/internal/es;)Lcom/tapjoy/internal/cz;

    move-result-object v0

    .line 17000
    iget-object v1, v0, Lcom/tapjoy/internal/cz;->a:Lcom/tapjoy/internal/cx;

    invoke-static {v1}, Lcom/tapjoy/internal/dq;->b(Lcom/tapjoy/internal/cx;)V

    iget-object v0, v0, Lcom/tapjoy/internal/cz;->a:Lcom/tapjoy/internal/cx;

    .line 18000
    iget-object v0, v0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/du;

    .line 17000
    const-string v1, "bufferFinish"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/du;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 155
    :cond_6
    iget-object v8, p0, Lcom/tapjoy/internal/es$3;->a:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const-string v10, "deviceVolume"

    const-string v11, "mediaPlayerVolume"

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    if-eqz v8, :cond_9

    .line 156
    :try_start_4
    iget-object v0, p0, Lcom/tapjoy/internal/es$3;->d:Lcom/tapjoy/internal/es;

    invoke-static {v0}, Lcom/tapjoy/internal/es;->a(Lcom/tapjoy/internal/es;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v0

    .line 18521
    iget-object v0, v0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    .line 156
    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_7

    move v13, v14

    .line 157
    :cond_7
    iget-object v0, p0, Lcom/tapjoy/internal/es$3;->d:Lcom/tapjoy/internal/es;

    invoke-static {v0}, Lcom/tapjoy/internal/es;->e(Lcom/tapjoy/internal/es;)Lcom/tapjoy/internal/cz;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/es$3;->d:Lcom/tapjoy/internal/es;

    invoke-static {v1}, Lcom/tapjoy/internal/es;->a(Lcom/tapjoy/internal/es;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v1

    .line 19521
    iget-object v1, v1, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    .line 157
    invoke-virtual {v1}, Lcom/tapjoy/TJAdUnit;->getVideoView()Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v2, v1, v14

    if-lez v2, :cond_8

    .line 20000
    invoke-static {v13}, Lcom/tapjoy/internal/cz;->a(F)V

    iget-object v2, v0, Lcom/tapjoy/internal/cz;->a:Lcom/tapjoy/internal/cx;

    invoke-static {v2}, Lcom/tapjoy/internal/dq;->b(Lcom/tapjoy/internal/cx;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "duration"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/tapjoy/internal/do;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v2, v11, v1}, Lcom/tapjoy/internal/do;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/tapjoy/internal/di;->a()Lcom/tapjoy/internal/di;

    move-result-object v1

    .line 22000
    iget v1, v1, Lcom/tapjoy/internal/di;->a:F

    .line 20000
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v2, v10, v1}, Lcom/tapjoy/internal/do;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/tapjoy/internal/cz;->a:Lcom/tapjoy/internal/cx;

    .line 23000
    iget-object v0, v0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/du;

    .line 20000
    invoke-virtual {v0, v7, v2}, Lcom/tapjoy/internal/du;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 21000
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Media duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_9
    iget-object v7, p0, Lcom/tapjoy/internal/es$3;->a:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 159
    iget-object v0, p0, Lcom/tapjoy/internal/es$3;->d:Lcom/tapjoy/internal/es;

    invoke-static {v0}, Lcom/tapjoy/internal/es;->e(Lcom/tapjoy/internal/es;)Lcom/tapjoy/internal/cz;

    move-result-object v0

    .line 24000
    iget-object v1, v0, Lcom/tapjoy/internal/cz;->a:Lcom/tapjoy/internal/cx;

    invoke-static {v1}, Lcom/tapjoy/internal/dq;->b(Lcom/tapjoy/internal/cx;)V

    iget-object v0, v0, Lcom/tapjoy/internal/cz;->a:Lcom/tapjoy/internal/cx;

    .line 25000
    iget-object v0, v0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/du;

    .line 24000
    invoke-virtual {v0, v6}, Lcom/tapjoy/internal/du;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 160
    :cond_a
    iget-object v6, p0, Lcom/tapjoy/internal/es$3;->a:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 161
    iget-object v0, p0, Lcom/tapjoy/internal/es$3;->d:Lcom/tapjoy/internal/es;

    invoke-static {v0}, Lcom/tapjoy/internal/es;->e(Lcom/tapjoy/internal/es;)Lcom/tapjoy/internal/cz;

    move-result-object v0

    .line 26000
    iget-object v1, v0, Lcom/tapjoy/internal/cz;->a:Lcom/tapjoy/internal/cx;

    invoke-static {v1}, Lcom/tapjoy/internal/dq;->b(Lcom/tapjoy/internal/cx;)V

    iget-object v0, v0, Lcom/tapjoy/internal/cz;->a:Lcom/tapjoy/internal/cx;

    .line 27000
    iget-object v0, v0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/du;

    .line 26000
    invoke-virtual {v0, v5}, Lcom/tapjoy/internal/du;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 162
    :cond_b
    iget-object v5, p0, Lcom/tapjoy/internal/es$3;->a:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 163
    iget-object v0, p0, Lcom/tapjoy/internal/es$3;->d:Lcom/tapjoy/internal/es;

    invoke-static {v0}, Lcom/tapjoy/internal/es;->e(Lcom/tapjoy/internal/es;)Lcom/tapjoy/internal/cz;

    move-result-object v0

    .line 28000
    iget-object v1, v0, Lcom/tapjoy/internal/cz;->a:Lcom/tapjoy/internal/cx;

    invoke-static {v1}, Lcom/tapjoy/internal/dq;->b(Lcom/tapjoy/internal/cx;)V

    iget-object v0, v0, Lcom/tapjoy/internal/cz;->a:Lcom/tapjoy/internal/cx;

    .line 29000
    iget-object v0, v0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/du;

    .line 28000
    invoke-virtual {v0, v4}, Lcom/tapjoy/internal/du;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 164
    :cond_c
    iget-object v4, p0, Lcom/tapjoy/internal/es$3;->a:Ljava/lang/String;

    const-string v5, "paused"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 165
    iget-object v0, p0, Lcom/tapjoy/internal/es$3;->d:Lcom/tapjoy/internal/es;

    invoke-static {v0}, Lcom/tapjoy/internal/es;->e(Lcom/tapjoy/internal/es;)Lcom/tapjoy/internal/cz;

    move-result-object v0

    .line 30000
    iget-object v1, v0, Lcom/tapjoy/internal/cz;->a:Lcom/tapjoy/internal/cx;

    invoke-static {v1}, Lcom/tapjoy/internal/dq;->b(Lcom/tapjoy/internal/cx;)V

    iget-object v0, v0, Lcom/tapjoy/internal/cz;->a:Lcom/tapjoy/internal/cx;

    .line 31000
    iget-object v0, v0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/du;

    .line 30000
    const-string v1, "pause"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/du;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 166
    :cond_d
    iget-object v4, p0, Lcom/tapjoy/internal/es$3;->a:Ljava/lang/String;

    const-string v5, "playing"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 167
    iget-object v0, p0, Lcom/tapjoy/internal/es$3;->d:Lcom/tapjoy/internal/es;

    invoke-static {v0}, Lcom/tapjoy/internal/es;->e(Lcom/tapjoy/internal/es;)Lcom/tapjoy/internal/cz;

    move-result-object v0

    .line 32000
    iget-object v1, v0, Lcom/tapjoy/internal/cz;->a:Lcom/tapjoy/internal/cx;

    invoke-static {v1}, Lcom/tapjoy/internal/dq;->b(Lcom/tapjoy/internal/cx;)V

    iget-object v0, v0, Lcom/tapjoy/internal/cz;->a:Lcom/tapjoy/internal/cx;

    .line 33000
    iget-object v0, v0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/du;

    .line 32000
    const-string v1, "resume"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/du;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 168
    :cond_e
    iget-object v4, p0, Lcom/tapjoy/internal/es$3;->a:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 169
    iget-object v0, p0, Lcom/tapjoy/internal/es$3;->d:Lcom/tapjoy/internal/es;

    invoke-static {v0}, Lcom/tapjoy/internal/es;->e(Lcom/tapjoy/internal/es;)Lcom/tapjoy/internal/cz;

    move-result-object v0

    .line 34000
    iget-object v1, v0, Lcom/tapjoy/internal/cz;->a:Lcom/tapjoy/internal/cx;

    invoke-static {v1}, Lcom/tapjoy/internal/dq;->b(Lcom/tapjoy/internal/cx;)V

    iget-object v0, v0, Lcom/tapjoy/internal/cz;->a:Lcom/tapjoy/internal/cx;

    .line 35000
    iget-object v0, v0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/du;

    .line 34000
    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/du;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 170
    :cond_f
    iget-object v3, p0, Lcom/tapjoy/internal/es$3;->a:Ljava/lang/String;

    const-string v4, "volumeChanged"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 171
    iget-object v0, p0, Lcom/tapjoy/internal/es$3;->d:Lcom/tapjoy/internal/es;

    invoke-static {v0}, Lcom/tapjoy/internal/es;->a(Lcom/tapjoy/internal/es;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v0

    .line 35521
    iget-object v0, v0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    .line 171
    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_10

    move v13, v14

    .line 172
    :cond_10
    iget-object v0, p0, Lcom/tapjoy/internal/es$3;->d:Lcom/tapjoy/internal/es;

    invoke-static {v0}, Lcom/tapjoy/internal/es;->e(Lcom/tapjoy/internal/es;)Lcom/tapjoy/internal/cz;

    move-result-object v0

    .line 36000
    invoke-static {v13}, Lcom/tapjoy/internal/cz;->a(F)V

    iget-object v1, v0, Lcom/tapjoy/internal/cz;->a:Lcom/tapjoy/internal/cx;

    invoke-static {v1}, Lcom/tapjoy/internal/dq;->b(Lcom/tapjoy/internal/cx;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v11, v2}, Lcom/tapjoy/internal/do;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/tapjoy/internal/di;->a()Lcom/tapjoy/internal/di;

    move-result-object v2

    .line 37000
    iget v2, v2, Lcom/tapjoy/internal/di;->a:F

    .line 36000
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v10, v2}, Lcom/tapjoy/internal/do;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/tapjoy/internal/cz;->a:Lcom/tapjoy/internal/cx;

    .line 38000
    iget-object v0, v0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/du;

    .line 36000
    const-string v2, "volumeChange"

    invoke-virtual {v0, v2, v1}, Lcom/tapjoy/internal/du;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 173
    :cond_11
    iget-object v3, p0, Lcom/tapjoy/internal/es$3;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 175
    iget-object v0, p0, Lcom/tapjoy/internal/es$3;->d:Lcom/tapjoy/internal/es;

    invoke-static {v0}, Lcom/tapjoy/internal/es;->e(Lcom/tapjoy/internal/es;)Lcom/tapjoy/internal/cz;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/internal/cy;->a:Lcom/tapjoy/internal/cy;

    .line 39000
    const-string v3, "InteractionType is null"

    invoke-static {v1, v3}, Lcom/tapjoy/internal/dq;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tapjoy/internal/cz;->a:Lcom/tapjoy/internal/cx;

    invoke-static {v3}, Lcom/tapjoy/internal/dq;->b(Lcom/tapjoy/internal/cx;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "interactionType"

    invoke-static {v3, v4, v1}, Lcom/tapjoy/internal/do;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/tapjoy/internal/cz;->a:Lcom/tapjoy/internal/cx;

    .line 40000
    iget-object v0, v0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/du;

    .line 39000
    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/du;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 176
    :cond_12
    iget-object v2, p0, Lcom/tapjoy/internal/es$3;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 177
    iget-object v0, p0, Lcom/tapjoy/internal/es$3;->d:Lcom/tapjoy/internal/es;

    invoke-static {v0}, Lcom/tapjoy/internal/es;->e(Lcom/tapjoy/internal/es;)Lcom/tapjoy/internal/cz;

    move-result-object v0

    .line 41000
    iget-object v2, v0, Lcom/tapjoy/internal/cz;->a:Lcom/tapjoy/internal/cx;

    invoke-static {v2}, Lcom/tapjoy/internal/dq;->b(Lcom/tapjoy/internal/cx;)V

    iget-object v0, v0, Lcom/tapjoy/internal/cz;->a:Lcom/tapjoy/internal/cx;

    .line 42000
    iget-object v0, v0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/du;

    .line 41000
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/du;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 178
    :cond_13
    iget-object v1, p0, Lcom/tapjoy/internal/es$3;->a:Ljava/lang/String;

    const-string v2, "sessionError"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v1, :cond_15

    .line 180
    :try_start_5
    iget-object v1, p0, Lcom/tapjoy/internal/es$3;->b:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const-string v2, "message"

    if-eqz v1, :cond_14

    .line 181
    :try_start_6
    iget-object v1, p0, Lcom/tapjoy/internal/es$3;->d:Lcom/tapjoy/internal/es;

    invoke-static {v1}, Lcom/tapjoy/internal/es;->c(Lcom/tapjoy/internal/es;)Lcom/tapjoy/internal/cm;

    move-result-object v1

    sget-object v3, Lcom/tapjoy/internal/cr;->b:Lcom/tapjoy/internal/cr;

    iget-object v4, p0, Lcom/tapjoy/internal/es$3;->b:Lorg/json/JSONObject;

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/tapjoy/internal/cm;->a(Lcom/tapjoy/internal/cr;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_14
    iget-object v1, p0, Lcom/tapjoy/internal/es$3;->d:Lcom/tapjoy/internal/es;

    invoke-static {v1}, Lcom/tapjoy/internal/es;->c(Lcom/tapjoy/internal/es;)Lcom/tapjoy/internal/cm;

    move-result-object v1

    sget-object v3, Lcom/tapjoy/internal/cr;->a:Lcom/tapjoy/internal/cr;

    iget-object v4, p0, Lcom/tapjoy/internal/es$3;->b:Lorg/json/JSONObject;

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/tapjoy/internal/cm;->a(Lcom/tapjoy/internal/cr;Ljava/lang/String;)V

    .line 185
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Session Error: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/internal/es$3;->b:Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/es$3;->b:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    .line 187
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to getting session error information: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 189
    :cond_15
    iget-object v0, p0, Lcom/tapjoy/internal/es$3;->a:Ljava/lang/String;

    const-string v1, "sessionFinish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 190
    iget-object v0, p0, Lcom/tapjoy/internal/es$3;->d:Lcom/tapjoy/internal/es;

    invoke-static {v0}, Lcom/tapjoy/internal/es;->c(Lcom/tapjoy/internal/es;)Lcom/tapjoy/internal/cm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/cm;->b()V

    .line 191
    iget-object v0, p0, Lcom/tapjoy/internal/es$3;->d:Lcom/tapjoy/internal/es;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tapjoy/internal/es;->a(Lcom/tapjoy/internal/es;Lcom/tapjoy/internal/cm;)Lcom/tapjoy/internal/cm;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 203
    :cond_16
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/es$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/tapjoy/internal/es$3;->d:Lcom/tapjoy/internal/es;

    invoke-static {v0}, Lcom/tapjoy/internal/es;->a(Lcom/tapjoy/internal/es;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/es$3;->c:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 193
    :cond_17
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/es$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/tapjoy/internal/es$3;->d:Lcom/tapjoy/internal/es;

    invoke-static {v0}, Lcom/tapjoy/internal/es;->a(Lcom/tapjoy/internal/es;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/es$3;->c:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    return-void

    :catch_2
    move-exception v0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "triggerEvent exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/tapjoy/internal/es$3;->d:Lcom/tapjoy/internal/es;

    invoke-static {v0}, Lcom/tapjoy/internal/es;->a(Lcom/tapjoy/internal/es;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/es$3;->c:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
