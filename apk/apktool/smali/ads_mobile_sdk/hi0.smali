.class public final Lads_mobile_sdk/hi0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/wz2;


# instance fields
.field public final a:Lads_mobile_sdk/vf0;

.field public b:Lads_mobile_sdk/vh1;

.field public c:Lads_mobile_sdk/dw2;

.field public d:Lads_mobile_sdk/dw2;

.field public e:Lads_mobile_sdk/vh1;

.field public f:Lads_mobile_sdk/vh1;

.field public g:Lads_mobile_sdk/sh0;

.field public h:Lads_mobile_sdk/dw2;

.field public i:Lads_mobile_sdk/vh1;

.field public j:Lads_mobile_sdk/dw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/vf0;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;Ljava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/hi0;->a:Lads_mobile_sdk/vf0;

    move-object p1, p0

    .line 5
    invoke-virtual/range {p1 .. p7}, Lads_mobile_sdk/hi0;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final a()Lads_mobile_sdk/px2;
    .locals 1

    .line 9359
    iget-object v0, p0, Lads_mobile_sdk/hi0;->j:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/px2;

    return-object v0
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;Ljava/lang/Integer;)V
    .locals 20

    move-object/from16 v0, p0

    .line 9361
    invoke-static/range {p5 .. p5}, Lads_mobile_sdk/vh1;->a(Ljava/lang/Object;)Lads_mobile_sdk/vh1;

    move-result-object v1

    iput-object v1, v0, Lads_mobile_sdk/hi0;->b:Lads_mobile_sdk/vh1;

    .line 9362
    sget-object v10, Lads_mobile_sdk/mj0;->a:Lads_mobile_sdk/vh1;

    .line 9363
    new-instance v1, Lads_mobile_sdk/m03;

    invoke-direct {v1, v10, v10, v10}, Lads_mobile_sdk/m03;-><init>(Lads_mobile_sdk/vh1;Lads_mobile_sdk/vh1;Lads_mobile_sdk/vh1;)V

    .line 9364
    sget-object v2, Lads_mobile_sdk/do0;->c:Ljava/lang/Object;

    .line 9365
    instance-of v2, v1, Lads_mobile_sdk/do0;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 9370
    :cond_0
    new-instance v2, Lads_mobile_sdk/do0;

    invoke-direct {v2, v1}, Lads_mobile_sdk/do0;-><init>(Lads_mobile_sdk/dw2;)V

    move-object v1, v2

    .line 9371
    :goto_0
    iput-object v1, v0, Lads_mobile_sdk/hi0;->c:Lads_mobile_sdk/dw2;

    .line 9372
    iget-object v1, v0, Lads_mobile_sdk/hi0;->a:Lads_mobile_sdk/vf0;

    iget-object v1, v1, Lads_mobile_sdk/vf0;->w0:Lads_mobile_sdk/dw2;

    .line 9373
    new-instance v2, Lads_mobile_sdk/l03;

    invoke-direct {v2, v1}, Lads_mobile_sdk/l03;-><init>(Lads_mobile_sdk/dw2;)V

    .line 9374
    instance-of v1, v2, Lads_mobile_sdk/do0;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 9379
    :cond_1
    new-instance v1, Lads_mobile_sdk/do0;

    invoke-direct {v1, v2}, Lads_mobile_sdk/do0;-><init>(Lads_mobile_sdk/dw2;)V

    move-object v2, v1

    .line 9380
    :goto_1
    iput-object v2, v0, Lads_mobile_sdk/hi0;->d:Lads_mobile_sdk/dw2;

    .line 9381
    invoke-static/range {p2 .. p2}, Lads_mobile_sdk/vh1;->a(Ljava/lang/Object;)Lads_mobile_sdk/vh1;

    move-result-object v1

    iput-object v1, v0, Lads_mobile_sdk/hi0;->e:Lads_mobile_sdk/vh1;

    .line 9382
    invoke-static/range {p4 .. p4}, Lads_mobile_sdk/vh1;->a(Ljava/lang/Object;)Lads_mobile_sdk/vh1;

    move-result-object v1

    iput-object v1, v0, Lads_mobile_sdk/hi0;->f:Lads_mobile_sdk/vh1;

    .line 9383
    invoke-static/range {p1 .. p1}, Lads_mobile_sdk/vh1;->a(Ljava/lang/Object;)Lads_mobile_sdk/vh1;

    move-result-object v1

    .line 9384
    new-instance v2, Lads_mobile_sdk/sh0;

    invoke-direct {v2, v1}, Lads_mobile_sdk/sh0;-><init>(Lads_mobile_sdk/dw2;)V

    .line 9385
    iput-object v2, v0, Lads_mobile_sdk/hi0;->g:Lads_mobile_sdk/sh0;

    .line 9386
    invoke-static/range {p3 .. p3}, Lads_mobile_sdk/vh1;->a(Ljava/lang/Object;)Lads_mobile_sdk/vh1;

    move-result-object v7

    .line 9388
    iget-object v1, v0, Lads_mobile_sdk/hi0;->a:Lads_mobile_sdk/vf0;

    iget-object v3, v1, Lads_mobile_sdk/vf0;->P0:Lads_mobile_sdk/ol0;

    iget-object v4, v0, Lads_mobile_sdk/hi0;->e:Lads_mobile_sdk/vh1;

    iget-object v5, v0, Lads_mobile_sdk/hi0;->g:Lads_mobile_sdk/sh0;

    iget-object v6, v0, Lads_mobile_sdk/hi0;->d:Lads_mobile_sdk/dw2;

    iget-object v8, v1, Lads_mobile_sdk/vf0;->h:Lads_mobile_sdk/dw2;

    iget-object v9, v1, Lads_mobile_sdk/vf0;->t:Lads_mobile_sdk/dw2;

    .line 9389
    new-instance v2, Lads_mobile_sdk/pd1;

    invoke-direct/range {v2 .. v10}, Lads_mobile_sdk/pd1;-><init>(Lads_mobile_sdk/ol0;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/vh1;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/vh1;)V

    .line 9390
    instance-of v1, v2, Lads_mobile_sdk/do0;

    if-eqz v1, :cond_2

    goto :goto_2

    .line 9395
    :cond_2
    new-instance v1, Lads_mobile_sdk/do0;

    invoke-direct {v1, v2}, Lads_mobile_sdk/do0;-><init>(Lads_mobile_sdk/dw2;)V

    move-object v2, v1

    .line 9396
    :goto_2
    iput-object v2, v0, Lads_mobile_sdk/hi0;->h:Lads_mobile_sdk/dw2;

    .line 9397
    invoke-static/range {p6 .. p6}, Lads_mobile_sdk/vh1;->a(Ljava/lang/Object;)Lads_mobile_sdk/vh1;

    move-result-object v1

    iput-object v1, v0, Lads_mobile_sdk/hi0;->i:Lads_mobile_sdk/vh1;

    .line 9398
    sget-object v1, Lads_mobile_sdk/i03;->a:Lads_mobile_sdk/j03;

    .line 9399
    instance-of v2, v1, Lads_mobile_sdk/do0;

    if-eqz v2, :cond_3

    goto :goto_3

    .line 9404
    :cond_3
    new-instance v2, Lads_mobile_sdk/do0;

    invoke-direct {v2, v1}, Lads_mobile_sdk/do0;-><init>(Lads_mobile_sdk/dw2;)V

    move-object v1, v2

    .line 9405
    :goto_3
    iget-object v2, v0, Lads_mobile_sdk/hi0;->a:Lads_mobile_sdk/vf0;

    iget-object v2, v2, Lads_mobile_sdk/vf0;->u:Lads_mobile_sdk/ol0;

    .line 9406
    new-instance v3, Lads_mobile_sdk/k03;

    invoke-direct {v3, v2, v1}, Lads_mobile_sdk/k03;-><init>(Lads_mobile_sdk/ol0;Lads_mobile_sdk/dw2;)V

    .line 9407
    instance-of v1, v3, Lads_mobile_sdk/do0;

    if-eqz v1, :cond_4

    move-object/from16 v18, v3

    goto :goto_4

    .line 9412
    :cond_4
    new-instance v1, Lads_mobile_sdk/do0;

    invoke-direct {v1, v3}, Lads_mobile_sdk/do0;-><init>(Lads_mobile_sdk/dw2;)V

    move-object/from16 v18, v1

    .line 9413
    :goto_4
    iget-object v1, v0, Lads_mobile_sdk/hi0;->a:Lads_mobile_sdk/vf0;

    iget-object v5, v1, Lads_mobile_sdk/vf0;->c4:Lads_mobile_sdk/dw2;

    iget-object v6, v1, Lads_mobile_sdk/vf0;->u:Lads_mobile_sdk/ol0;

    iget-object v7, v0, Lads_mobile_sdk/hi0;->b:Lads_mobile_sdk/vh1;

    iget-object v8, v0, Lads_mobile_sdk/hi0;->c:Lads_mobile_sdk/dw2;

    iget-object v9, v1, Lads_mobile_sdk/vf0;->t:Lads_mobile_sdk/dw2;

    iget-object v10, v1, Lads_mobile_sdk/vf0;->G:Lads_mobile_sdk/dw2;

    iget-object v11, v0, Lads_mobile_sdk/hi0;->d:Lads_mobile_sdk/dw2;

    iget-object v12, v0, Lads_mobile_sdk/hi0;->e:Lads_mobile_sdk/vh1;

    iget-object v13, v1, Lads_mobile_sdk/vf0;->d:Lads_mobile_sdk/dw2;

    iget-object v14, v0, Lads_mobile_sdk/hi0;->f:Lads_mobile_sdk/vh1;

    iget-object v15, v0, Lads_mobile_sdk/hi0;->h:Lads_mobile_sdk/dw2;

    iget-object v2, v1, Lads_mobile_sdk/vf0;->B0:Lads_mobile_sdk/qe0;

    iget-object v3, v0, Lads_mobile_sdk/hi0;->i:Lads_mobile_sdk/vh1;

    iget-object v1, v1, Lads_mobile_sdk/vf0;->e0:Lads_mobile_sdk/dw2;

    .line 9414
    new-instance v4, Lads_mobile_sdk/rz2;

    move-object/from16 v19, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v4 .. v19}, Lads_mobile_sdk/rz2;-><init>(Lads_mobile_sdk/dw2;Lads_mobile_sdk/ol0;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/qe0;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;)V

    .line 9415
    instance-of v1, v4, Lads_mobile_sdk/do0;

    if-eqz v1, :cond_5

    goto :goto_5

    .line 9420
    :cond_5
    new-instance v1, Lads_mobile_sdk/do0;

    invoke-direct {v1, v4}, Lads_mobile_sdk/do0;-><init>(Lads_mobile_sdk/dw2;)V

    move-object v4, v1

    .line 9421
    :goto_5
    iput-object v4, v0, Lads_mobile_sdk/hi0;->j:Lads_mobile_sdk/dw2;

    return-void
.end method

.method public final b()Lads_mobile_sdk/md1;
    .locals 1

    .line 9369
    iget-object v0, p0, Lads_mobile_sdk/hi0;->h:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/md1;

    return-object v0
.end method
