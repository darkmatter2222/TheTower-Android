.class public Lcom/applovin/impl/d2;
.super Lcom/applovin/impl/y1;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/d2$d;,
        Lcom/applovin/impl/d2$e;
    }
.end annotation


# instance fields
.field private final N:Lcom/applovin/impl/e2;

.field private O:Landroid/media/MediaPlayer;

.field private final P:Landroid/view/View;

.field protected final Q:Lcom/applovin/impl/adview/AppLovinVideoView;

.field protected final R:Lcom/applovin/impl/a;

.field protected final S:Lcom/applovin/impl/adview/g;

.field protected T:Lcom/applovin/impl/k0;

.field protected final U:Landroid/widget/ImageView;

.field protected final V:Landroid/widget/ProgressBar;

.field protected W:Landroid/widget/ProgressBar;

.field protected X:Landroid/widget/ImageView;

.field private final Y:Lcom/applovin/impl/d2$d;

.field private final Z:Landroid/os/Handler;

.field private final a0:Landroid/os/Handler;

.field protected final b0:Lcom/applovin/impl/c1;

.field protected final c0:Lcom/applovin/impl/c1;

.field private final d0:Z

.field protected e0:Z

.field protected f0:J

.field private g0:I

.field private h0:I

.field protected i0:Z

.field private j0:Z

.field private final k0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final l0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m0:J

.field private n0:J


# direct methods
.method public static synthetic $r8$lambda$4EHrnZ9SU_UFWvZy_trwQUIGDEE(Lcom/applovin/impl/d2;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/d2;->I()V

    return-void
.end method

.method public static synthetic $r8$lambda$Bntlg1muSCDzI92yZphCK4ABKR8(Lcom/applovin/impl/d2;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/d2;->H()V

    return-void
.end method

.method public static synthetic $r8$lambda$VEvD7C6GrHDH9P2tX1R3QCBz5os(Lcom/applovin/impl/d2;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/d2;->L()V

    return-void
.end method

.method public static synthetic $r8$lambda$dcWp0n2AcnTzMue0Tuf9ZgNeE84(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/applovin/impl/d2;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tgz95YqvbWzd2-AyEBp0L_shoM8(Lcom/applovin/impl/d2;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/d2;->J()V

    return-void
.end method

.method public static synthetic $r8$lambda$vTKwG_A6hORWVQXV8fw-khssuEg(Lcom/applovin/impl/d2;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/d2;->M()V

    return-void
.end method

.method public static synthetic $r8$lambda$w_Yp4L-sCpqobFGmkfBcMt-xCPs(Lcom/applovin/impl/d2;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/d2;->K()V

    return-void
.end method

.method public static synthetic $r8$lambda$zqXy6aTPj9rDZKcHSdM0I9x2b5E(Lcom/applovin/impl/d2;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/d2;->O()V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/sdk/ad/b;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/l;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .locals 8

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/applovin/impl/y1;-><init>(Lcom/applovin/impl/sdk/ad/b;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/l;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 2
    new-instance p5, Lcom/applovin/impl/e2;

    iget-object p6, p1, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    iget-object p7, p1, Lcom/applovin/impl/y1;->d:Landroid/app/Activity;

    iget-object v0, p1, Lcom/applovin/impl/y1;->b:Lcom/applovin/impl/sdk/l;

    invoke-direct {p5, p6, p7, v0}, Lcom/applovin/impl/e2;-><init>(Lcom/applovin/impl/sdk/ad/b;Landroid/app/Activity;Lcom/applovin/impl/sdk/l;)V

    iput-object p5, p1, Lcom/applovin/impl/d2;->N:Lcom/applovin/impl/e2;

    const/4 p5, 0x0

    .line 19
    iput-object p5, p1, Lcom/applovin/impl/d2;->X:Landroid/widget/ImageView;

    .line 23
    new-instance p6, Lcom/applovin/impl/d2$d;

    invoke-direct {p6, p0, p5}, Lcom/applovin/impl/d2$d;-><init>(Lcom/applovin/impl/d2;Lcom/applovin/impl/d2$a;)V

    iput-object p6, p1, Lcom/applovin/impl/d2;->Y:Lcom/applovin/impl/d2$d;

    .line 24
    new-instance p7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p7, p1, Lcom/applovin/impl/d2;->Z:Landroid/os/Handler;

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p1, Lcom/applovin/impl/d2;->a0:Landroid/os/Handler;

    .line 26
    new-instance v1, Lcom/applovin/impl/c1;

    iget-object v2, p1, Lcom/applovin/impl/y1;->b:Lcom/applovin/impl/sdk/l;

    invoke-direct {v1, p7, v2}, Lcom/applovin/impl/c1;-><init>(Landroid/os/Handler;Lcom/applovin/impl/sdk/l;)V

    iput-object v1, p1, Lcom/applovin/impl/d2;->b0:Lcom/applovin/impl/c1;

    .line 27
    new-instance p7, Lcom/applovin/impl/c1;

    iget-object v2, p1, Lcom/applovin/impl/y1;->b:Lcom/applovin/impl/sdk/l;

    invoke-direct {p7, v0, v2}, Lcom/applovin/impl/c1;-><init>(Landroid/os/Handler;Lcom/applovin/impl/sdk/l;)V

    iput-object p7, p1, Lcom/applovin/impl/d2;->c0:Lcom/applovin/impl/c1;

    .line 30
    iget-object p7, p1, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p7}, Lcom/applovin/impl/sdk/ad/b;->D0()Z

    move-result p7

    iput-boolean p7, p1, Lcom/applovin/impl/d2;->d0:Z

    .line 33
    iget-object v0, p1, Lcom/applovin/impl/y1;->b:Lcom/applovin/impl/sdk/l;

    invoke-static {v0}, Lcom/applovin/impl/u7;->e(Lcom/applovin/impl/sdk/l;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/applovin/impl/d2;->e0:Z

    const/4 v0, -0x1

    .line 36
    iput v0, p1, Lcom/applovin/impl/d2;->h0:I

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p1, Lcom/applovin/impl/d2;->k0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p1, Lcom/applovin/impl/d2;->l0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v2, -0x2

    .line 44
    iput-wide v2, p1, Lcom/applovin/impl/d2;->m0:J

    const-wide/16 v2, 0x0

    .line 45
    iput-wide v2, p1, Lcom/applovin/impl/d2;->n0:J

    .line 57
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->hasVideoUrl()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 60
    new-instance v0, Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-direct {v0, p3}, Lcom/applovin/impl/adview/AppLovinVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Lcom/applovin/impl/d2;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    .line 61
    invoke-virtual {v0, p6}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 62
    invoke-virtual {v0, p6}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 63
    invoke-virtual {v0, p6}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 66
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ad/b;->i()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v0}, Lcom/applovin/impl/k8;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "video_view_address"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p1, Lcom/applovin/impl/d2;->P:Landroid/view/View;

    const/16 v5, 0xfe

    const/4 v6, 0x0

    .line 70
    invoke-static {v5, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 72
    sget-object v5, Lcom/applovin/impl/c5;->t1:Lcom/applovin/impl/c5;

    invoke-virtual {p4, v5}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 75
    new-instance v0, Lcom/applovin/impl/adview/AppLovinTouchToClickListener;

    sget-object v5, Lcom/applovin/impl/c5;->f0:Lcom/applovin/impl/c5;

    invoke-direct {v0, p4, v5, p3, p6}, Lcom/applovin/impl/adview/AppLovinTouchToClickListener;-><init>(Lcom/applovin/impl/sdk/l;Lcom/applovin/impl/c5;Landroid/content/Context;Lcom/applovin/impl/adview/AppLovinTouchToClickListener$OnClickListener;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 83
    :cond_0
    new-instance v5, Lcom/applovin/impl/adview/AppLovinTouchToClickListener;

    sget-object v7, Lcom/applovin/impl/c5;->f0:Lcom/applovin/impl/c5;

    invoke-direct {v5, p4, v7, p3, p6}, Lcom/applovin/impl/adview/AppLovinTouchToClickListener;-><init>(Lcom/applovin/impl/sdk/l;Lcom/applovin/impl/c5;Landroid/content/Context;Lcom/applovin/impl/adview/AppLovinTouchToClickListener$OnClickListener;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 89
    new-instance p6, Lcom/applovin/impl/d2$$ExternalSyntheticLambda2;

    invoke-direct {p6}, Lcom/applovin/impl/d2$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v4, p6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 92
    :goto_0
    new-instance p6, Lcom/applovin/impl/d2$e;

    invoke-direct {p6, p0, p5}, Lcom/applovin/impl/d2$e;-><init>(Lcom/applovin/impl/d2;Lcom/applovin/impl/d2$a;)V

    .line 95
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ad/b;->f0()J

    move-result-wide v4

    cmp-long v0, v4, v2

    const/16 v2, 0x8

    if-ltz v0, :cond_1

    .line 98
    new-instance v0, Lcom/applovin/impl/adview/g;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ad/b;->X()Lcom/applovin/impl/adview/e$a;

    move-result-object v3

    invoke-direct {v0, v3, p3}, Lcom/applovin/impl/adview/g;-><init>(Lcom/applovin/impl/adview/e$a;Landroid/app/Activity;)V

    iput-object v0, p1, Lcom/applovin/impl/d2;->S:Lcom/applovin/impl/adview/g;

    .line 99
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 100
    invoke-virtual {v0, p6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 104
    :cond_1
    iput-object p5, p1, Lcom/applovin/impl/d2;->S:Lcom/applovin/impl/adview/g;

    .line 108
    :goto_1
    iget-boolean v0, p1, Lcom/applovin/impl/d2;->e0:Z

    invoke-static {v0, p4}, Lcom/applovin/impl/d2;->a(ZLcom/applovin/impl/sdk/l;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 110
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Lcom/applovin/impl/d2;->U:Landroid/widget/ImageView;

    .line 111
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 112
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 113
    invoke-virtual {v0, p6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-boolean p6, p1, Lcom/applovin/impl/d2;->e0:Z

    invoke-direct {p0, p6}, Lcom/applovin/impl/d2;->e(Z)V

    goto :goto_2

    .line 119
    :cond_2
    iput-object p5, p1, Lcom/applovin/impl/d2;->U:Landroid/widget/ImageView;

    :goto_2
    if-eqz p7, :cond_3

    .line 126
    new-instance p6, Lcom/applovin/impl/a;

    sget-object p7, Lcom/applovin/impl/c5;->r2:Lcom/applovin/impl/c5;

    .line 127
    invoke-virtual {p4, p7}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/Integer;

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p7

    const v0, 0x101007a

    invoke-direct {p6, p3, p7, v0}, Lcom/applovin/impl/a;-><init>(Landroid/content/Context;II)V

    iput-object p6, p1, Lcom/applovin/impl/d2;->R:Lcom/applovin/impl/a;

    .line 129
    const-string p7, "#75FFFFFF"

    invoke-static {p7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p7

    invoke-virtual {p6, p7}, Lcom/applovin/impl/a;->setColor(I)V

    .line 130
    const-string p7, "#00000000"

    invoke-static {p7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p7

    invoke-virtual {p6, p7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 131
    invoke-virtual {p6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 135
    invoke-static {p3}, Lcom/applovin/communicator/AppLovinCommunicator;->getInstance(Landroid/content/Context;)Lcom/applovin/communicator/AppLovinCommunicator;

    move-result-object p6

    const-string p7, "video_caching_failed"

    invoke-virtual {p6, p0, p7}, Lcom/applovin/communicator/AppLovinCommunicator;->subscribe(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)V

    goto :goto_3

    .line 139
    :cond_3
    iput-object p5, p1, Lcom/applovin/impl/d2;->R:Lcom/applovin/impl/a;

    .line 142
    :goto_3
    invoke-virtual {p0}, Lcom/applovin/impl/y1;->c()I

    move-result p6

    .line 143
    sget-object p7, Lcom/applovin/impl/c5;->b2:Lcom/applovin/impl/c5;

    invoke-virtual {p4, p7}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/Boolean;

    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p7

    if-eqz p7, :cond_4

    if-lez p6, :cond_4

    move v6, v3

    .line 145
    :cond_4
    iget-object p7, p1, Lcom/applovin/impl/d2;->T:Lcom/applovin/impl/k0;

    if-nez p7, :cond_5

    if-eqz v6, :cond_5

    .line 147
    new-instance p7, Lcom/applovin/impl/k0;

    invoke-direct {p7, p3}, Lcom/applovin/impl/k0;-><init>(Landroid/content/Context;)V

    iput-object p7, p1, Lcom/applovin/impl/d2;->T:Lcom/applovin/impl/k0;

    .line 148
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ad/b;->t()I

    move-result p7

    .line 149
    iget-object v0, p1, Lcom/applovin/impl/d2;->T:Lcom/applovin/impl/k0;

    invoke-virtual {v0, p7}, Lcom/applovin/impl/k0;->setTextColor(I)V

    .line 150
    iget-object v0, p1, Lcom/applovin/impl/d2;->T:Lcom/applovin/impl/k0;

    sget-object v2, Lcom/applovin/impl/c5;->a2:Lcom/applovin/impl/c5;

    invoke-virtual {p4, v2}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/applovin/impl/k0;->setTextSize(F)V

    .line 151
    iget-object v0, p1, Lcom/applovin/impl/d2;->T:Lcom/applovin/impl/k0;

    invoke-virtual {v0, p7}, Lcom/applovin/impl/k0;->setFinishedStrokeColor(I)V

    .line 152
    iget-object p7, p1, Lcom/applovin/impl/d2;->T:Lcom/applovin/impl/k0;

    sget-object v0, Lcom/applovin/impl/c5;->Z1:Lcom/applovin/impl/c5;

    invoke-virtual {p4, v0}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p7, v0}, Lcom/applovin/impl/k0;->setFinishedStrokeWidth(F)V

    .line 154
    iget-object p7, p1, Lcom/applovin/impl/d2;->T:Lcom/applovin/impl/k0;

    invoke-virtual {p7, p6}, Lcom/applovin/impl/k0;->setMax(I)V

    .line 155
    iget-object p7, p1, Lcom/applovin/impl/d2;->T:Lcom/applovin/impl/k0;

    invoke-virtual {p7, p6}, Lcom/applovin/impl/k0;->setProgress(I)V

    .line 157
    sget-object p7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {p7, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    new-instance p7, Lcom/applovin/impl/d2$a;

    invoke-direct {p7, p0, p6}, Lcom/applovin/impl/d2$a;-><init>(Lcom/applovin/impl/d2;I)V

    const-string p6, "COUNTDOWN_CLOCK"

    invoke-virtual {v1, p6, v2, v3, p7}, Lcom/applovin/impl/c1;->a(Ljava/lang/String;JLcom/applovin/impl/c1$b;)V

    .line 185
    :cond_5
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ad/b;->m0()Z

    move-result p6

    if-eqz p6, :cond_6

    .line 187
    sget-object p6, Lcom/applovin/impl/c5;->o2:Lcom/applovin/impl/c5;

    invoke-virtual {p4, p6}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Long;

    .line 188
    sget-object p7, Lcom/applovin/impl/c5;->p2:Lcom/applovin/impl/c5;

    invoke-virtual {p4, p7}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    .line 190
    new-instance p7, Landroid/widget/ProgressBar;

    const v0, 0x1010078

    invoke-direct {p7, p3, p5, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p7, p1, Lcom/applovin/impl/d2;->V:Landroid/widget/ProgressBar;

    .line 191
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ad/b;->l0()I

    move-result p2

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-direct {p0, p7, p2, p3}, Lcom/applovin/impl/d2;->a(Landroid/widget/ProgressBar;II)V

    .line 192
    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    new-instance p5, Lcom/applovin/impl/d2$b;

    invoke-direct {p5, p0, p4}, Lcom/applovin/impl/d2$b;-><init>(Lcom/applovin/impl/d2;Ljava/lang/Integer;)V

    const-string p4, "PROGRESS_BAR"

    invoke-virtual {v1, p4, p2, p3, p5}, Lcom/applovin/impl/c1;->a(Ljava/lang/String;JLcom/applovin/impl/c1$b;)V

    return-void

    .line 219
    :cond_6
    iput-object p5, p1, Lcom/applovin/impl/d2;->V:Landroid/widget/ProgressBar;

    return-void

    .line 220
    :cond_7
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Attempting to use fullscreen video ad presenter for non-video ad"

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private synthetic H()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/d2;->R:Lcom/applovin/impl/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/a;->b()V

    :cond_0
    return-void
.end method

.method private synthetic I()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/d2;->R:Lcom/applovin/impl/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/a;->a()V

    .line 5
    iget-object v0, p0, Lcom/applovin/impl/d2;->R:Lcom/applovin/impl/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/applovin/impl/d2$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0}, Lcom/applovin/impl/d2$$ExternalSyntheticLambda8;-><init>(Lcom/applovin/impl/a;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Lcom/applovin/impl/y1;->a(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private synthetic J()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1
    iput-wide v0, p0, Lcom/applovin/impl/d2;->m0:J

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/d2;->n0:J

    return-void
.end method

.method private synthetic K()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/d2;->R:Lcom/applovin/impl/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/a;->a()V

    :cond_0
    return-void
.end method

.method private synthetic L()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/y1;->r:J

    return-void
.end method

.method private M()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/d2;->i0:Z

    const-string v1, "AppLovinFullscreenActivity"

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/y1;->c:Lcom/applovin/impl/sdk/p;

    const-string v2, "Skip video resume - postitial shown"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/y1;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->o0()Lcom/applovin/impl/sdk/SessionTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/SessionTracker;->isApplicationPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/y1;->c:Lcom/applovin/impl/sdk/p;

    const-string v2, "Skip video resume - app paused"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_1
    iget v0, p0, Lcom/applovin/impl/d2;->h0:I

    if-ltz v0, :cond_3

    .line 17
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/y1;->c:Lcom/applovin/impl/sdk/p;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Resuming video at position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/applovin/impl/d2;->h0:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms for MediaPlayer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/d2;->O:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/d2;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    iget v1, p0, Lcom/applovin/impl/d2;->h0:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 20
    iget-object v0, p0, Lcom/applovin/impl/d2;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 22
    iget-object v0, p0, Lcom/applovin/impl/d2;->b0:Lcom/applovin/impl/c1;

    invoke-virtual {v0}, Lcom/applovin/impl/c1;->b()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/applovin/impl/d2;->h0:I

    .line 27
    new-instance v0, Lcom/applovin/impl/d2$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/applovin/impl/d2$$ExternalSyntheticLambda4;-><init>(Lcom/applovin/impl/d2;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/y1;->a(Ljava/lang/Runnable;J)V

    return-void

    .line 38
    :cond_3
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/y1;->c:Lcom/applovin/impl/sdk/p;

    const-string v2, "Invalid last video position"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private O()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/d2;->l0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/d2;->S:Lcom/applovin/impl/adview/g;

    iget-object v1, p0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->f0()J

    move-result-wide v1

    new-instance v3, Lcom/applovin/impl/d2$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/applovin/impl/d2$$ExternalSyntheticLambda1;-><init>(Lcom/applovin/impl/d2;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/applovin/impl/y1;->a(Lcom/applovin/impl/adview/g;JLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/d2;)Landroid/media/MediaPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/d2;->O:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/d2;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/applovin/impl/d2;->O:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private a(Landroid/widget/ProgressBar;II)V
    .locals 0

    .line 64
    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setMax(I)V

    const/4 p3, 0x0

    .line 65
    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/view/View;->setPadding(IIII)V

    .line 67
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private static synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic a(Lcom/applovin/impl/d2;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/applovin/impl/d2;->j0:Z

    return p1
.end method

.method private static a(ZLcom/applovin/impl/sdk/l;)Z
    .locals 2

    .line 127
    sget-object v0, Lcom/applovin/impl/c5;->g2:Lcom/applovin/impl/c5;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 132
    :cond_0
    sget-object v0, Lcom/applovin/impl/c5;->h2:Lcom/applovin/impl/c5;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eqz p0, :cond_1

    return v1

    .line 142
    :cond_1
    sget-object p0, Lcom/applovin/impl/c5;->j2:Lcom/applovin/impl/c5;

    invoke-virtual {p1, p0}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method static synthetic b(Lcom/applovin/impl/d2;)Lcom/applovin/impl/d2$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/d2;->Y:Lcom/applovin/impl/d2$d;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/d2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/d2;->O()V

    return-void
.end method

.method private e(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/y1;->d:Landroid/app/Activity;

    if-eqz p1, :cond_0

    sget v1, Lcom/applovin/sdk/R$drawable;->applovin_ic_unmute_to_mute:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/applovin/sdk/R$drawable;->applovin_ic_mute_to_unmute:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/applovin/impl/d2;->U:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 5
    iget-object p1, p0, Lcom/applovin/impl/d2;->U:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->I()Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->d0()Landroid/net/Uri;

    move-result-object p1

    .line 12
    :goto_1
    iget-object v0, p0, Lcom/applovin/impl/d2;->U:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/applovin/impl/y1;->b:Lcom/applovin/impl/sdk/l;

    invoke-static {v0, p1, v1}, Lcom/applovin/impl/sdk/utils/ImageViewUtils;->setImageUri(Landroid/widget/ImageView;Landroid/net/Uri;Lcom/applovin/impl/sdk/l;)V

    return-void
.end method

.method private f(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/d2;->C()I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/d2;->g0:I

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/applovin/impl/d2;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/d2;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->stopPlayback()V

    return-void
.end method


# virtual methods
.method protected A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/d2;->N:Lcom/applovin/impl/e2;

    iget-object v1, p0, Lcom/applovin/impl/y1;->l:Lcom/applovin/impl/adview/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/e2;->a(Lcom/applovin/impl/adview/g;)V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/y1;->r:J

    return-void
.end method

.method protected C()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/d2;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    .line 4
    iget-boolean v2, p0, Lcom/applovin/impl/d2;->j0:Z

    if-eqz v2, :cond_0

    const/16 v0, 0x64

    return v0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    long-to-float v0, v0

    .line 9
    iget-wide v1, p0, Lcom/applovin/impl/d2;->f0:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 14
    :cond_1
    iget v0, p0, Lcom/applovin/impl/d2;->g0:I

    return v0
.end method

.method public D()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/applovin/impl/y1;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/applovin/impl/y1;->z:I

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->v()Z

    move-result v0

    const-string v1, "AppLovinFullscreenActivity"

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/y1;->c:Lcom/applovin/impl/sdk/p;

    const-string v2, "Dismissing ad on video skip..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    const-string v0, "video_skip"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/d2;->a(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/y1;->c:Lcom/applovin/impl/sdk/p;

    const-string v2, "Skipping video..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/applovin/impl/d2;->R()V

    return-void
.end method

.method protected E()V
    .locals 1

    .line 1
    new-instance v0, Lcom/applovin/impl/d2$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/applovin/impl/d2$$ExternalSyntheticLambda5;-><init>(Lcom/applovin/impl/d2;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected F()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/y1;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->a1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/d2;->G()Z

    move-result v0

    return v0
.end method

.method protected G()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/d2;->C()I

    move-result v0

    iget-object v1, p0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->h0()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected N()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->Q()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->R()I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->Q()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->Q()J

    move-result-wide v0

    goto :goto_3

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    check-cast v0, Lcom/applovin/impl/sdk/ad/a;

    .line 16
    iget-wide v4, p0, Lcom/applovin/impl/d2;->f0:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_3

    move-wide v2, v4

    .line 21
    :cond_3
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->W0()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 23
    iget-object v1, p0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    check-cast v1, Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/a;->k1()F

    move-result v1

    float-to-int v1, v1

    if-lez v1, :cond_4

    .line 26
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :goto_1
    add-long/2addr v2, v0

    goto :goto_2

    .line 30
    :cond_4
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->s()J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_5

    .line 33
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_1

    :cond_5
    :goto_2
    long-to-double v0, v2

    .line 38
    iget-object v2, p0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/b;->R()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-long v0, v0

    .line 41
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/y1;->c(J)V

    return-void
.end method

.method protected P()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/y1;->w:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/applovin/impl/d2;->i0:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/d2;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected Q()V
    .locals 1

    .line 1
    new-instance v0, Lcom/applovin/impl/d2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/applovin/impl/d2$$ExternalSyntheticLambda0;-><init>(Lcom/applovin/impl/d2;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public R()V
    .locals 11

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/y1;->c:Lcom/applovin/impl/sdk/p;

    const-string v1, "AppLovinFullscreenActivity"

    const-string v2, "Showing postitial..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->d1()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/impl/d2;->f(Z)V

    .line 7
    iget-object v0, p0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->O()J

    move-result-wide v3

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-lez v0, :cond_1

    .line 10
    iput-wide v7, p0, Lcom/applovin/impl/y1;->s:J

    .line 12
    iget-object v0, p0, Lcom/applovin/impl/y1;->b:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/c5;->w2:Lcom/applovin/impl/c5;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Long;

    .line 13
    iget-object v0, p0, Lcom/applovin/impl/y1;->b:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/c5;->z2:Lcom/applovin/impl/c5;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Integer;

    .line 15
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/applovin/impl/y1;->d:Landroid/app/Activity;

    const/4 v2, 0x0

    const v9, 0x1010078

    invoke-direct {v0, v1, v2, v9}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/applovin/impl/d2;->W:Landroid/widget/ProgressBar;

    .line 16
    iget-object v1, p0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->N()I

    move-result v1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/applovin/impl/d2;->a(Landroid/widget/ProgressBar;II)V

    .line 18
    iget-object v0, p0, Lcom/applovin/impl/d2;->c0:Lcom/applovin/impl/c1;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    new-instance v1, Lcom/applovin/impl/d2$c;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/d2$c;-><init>(Lcom/applovin/impl/d2;JLjava/lang/Integer;Ljava/lang/Long;)V

    const-string v3, "POSTITIAL_PROGRESS_BAR"

    invoke-virtual {v0, v3, v9, v10, v1}, Lcom/applovin/impl/c1;->a(Ljava/lang/String;JLcom/applovin/impl/c1$b;)V

    .line 37
    iget-object v0, v2, Lcom/applovin/impl/d2;->c0:Lcom/applovin/impl/c1;

    invoke-virtual {v0}, Lcom/applovin/impl/c1;->b()V

    goto :goto_0

    :cond_1
    move-object v2, p0

    .line 41
    :goto_0
    iget-object v0, v2, Lcom/applovin/impl/d2;->N:Lcom/applovin/impl/e2;

    iget-object v1, v2, Lcom/applovin/impl/y1;->k:Lcom/applovin/impl/adview/g;

    iget-object v3, v2, Lcom/applovin/impl/y1;->j:Lcom/applovin/impl/adview/k;

    invoke-virtual {p0}, Lcom/applovin/impl/y1;->b()Lcom/applovin/adview/AppLovinAdView;

    move-result-object v4

    iget-object v5, v2, Lcom/applovin/impl/d2;->W:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/applovin/impl/e2;->a(Lcom/applovin/impl/adview/g;Lcom/applovin/impl/adview/k;Landroid/view/View;Landroid/widget/ProgressBar;)V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:al_onPoststitialShow("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v2, Lcom/applovin/impl/y1;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Lcom/applovin/impl/y1;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->y()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {p0, v0, v3, v4}, Lcom/applovin/impl/d2;->a(Ljava/lang/String;J)V

    .line 47
    iget-object v0, v2, Lcom/applovin/impl/y1;->k:Lcom/applovin/impl/adview/g;

    if-eqz v0, :cond_3

    .line 49
    iget-object v0, v2, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->s()J

    move-result-wide v0

    cmp-long v0, v0, v7

    if-ltz v0, :cond_2

    .line 51
    iget-object v0, v2, Lcom/applovin/impl/y1;->k:Lcom/applovin/impl/adview/g;

    iget-object v1, v2, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 53
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->s()J

    move-result-wide v3

    new-instance v1, Lcom/applovin/impl/d2$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/applovin/impl/d2$$ExternalSyntheticLambda7;-><init>(Lcom/applovin/impl/d2;)V

    .line 54
    invoke-virtual {p0, v0, v3, v4, v1}, Lcom/applovin/impl/y1;->a(Lcom/applovin/impl/adview/g;JLjava/lang/Runnable;)V

    goto :goto_1

    .line 63
    :cond_2
    iget-object v0, v2, Lcom/applovin/impl/y1;->k:Lcom/applovin/impl/adview/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    :cond_3
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    iget-object v1, v2, Lcom/applovin/impl/y1;->k:Lcom/applovin/impl/adview/g;

    if-eqz v1, :cond_4

    .line 72
    new-instance v3, Lcom/applovin/impl/m4;

    sget-object v4, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->CLOSE_AD:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    const-string v5, "close button"

    invoke-direct {v3, v1, v4, v5}, Lcom/applovin/impl/m4;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_4
    iget-object v1, v2, Lcom/applovin/impl/y1;->j:Lcom/applovin/impl/adview/k;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/applovin/impl/adview/k;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 78
    new-instance v1, Lcom/applovin/impl/m4;

    iget-object v3, v2, Lcom/applovin/impl/y1;->j:Lcom/applovin/impl/adview/k;

    sget-object v4, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->NOT_VISIBLE:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    .line 80
    invoke-virtual {v3}, Lcom/applovin/impl/adview/k;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Lcom/applovin/impl/m4;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_5
    iget-object v1, v2, Lcom/applovin/impl/d2;->W:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_6

    .line 87
    new-instance v3, Lcom/applovin/impl/m4;

    sget-object v4, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    const-string v5, "postitial progress bar"

    invoke-direct {v3, v1, v4, v5}, Lcom/applovin/impl/m4;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_6
    iget-object v1, v2, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->getAdEventTracker()Lcom/applovin/impl/k4;

    move-result-object v1

    invoke-virtual {p0}, Lcom/applovin/impl/y1;->b()Lcom/applovin/adview/AppLovinAdView;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/applovin/impl/k4;->b(Landroid/view/View;Ljava/util/List;)V

    .line 94
    invoke-virtual {p0}, Lcom/applovin/impl/y1;->p()V

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, v2, Lcom/applovin/impl/d2;->i0:Z

    return-void
.end method

.method public S()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/applovin/impl/d2;->n0:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/applovin/impl/d2;->m0:J

    .line 3
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/y1;->c:Lcom/applovin/impl/sdk/p;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to skip video with skip time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/applovin/impl/d2;->m0:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinFullscreenActivity"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/d2;->D()V

    return-void
.end method

.method protected T()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/d2;->O:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/applovin/impl/d2;->e0:Z

    int-to-float v1, v1

    .line 9
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 11
    iget-boolean v0, p0, Lcom/applovin/impl/d2;->e0:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/d2;->e0:Z

    .line 12
    invoke-direct {p0, v0}, Lcom/applovin/impl/d2;->e(Z)V

    .line 13
    iget-boolean v0, p0, Lcom/applovin/impl/d2;->e0:Z

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/y1;->a(ZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method protected a(Landroid/view/MotionEvent;)V
    .locals 7

    .line 104
    iget-object v0, p0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->C0()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/y1;->c:Lcom/applovin/impl/sdk/p;

    const-string v1, "AppLovinFullscreenActivity"

    const-string v2, "Clicking through video"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->e0()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 112
    iget-object v0, p0, Lcom/applovin/impl/y1;->b:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/c5;->w:Lcom/applovin/impl/c5;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/y1;->d:Landroid/app/Activity;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/applovin/impl/y1;->b()Lcom/applovin/adview/AppLovinAdView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/applovin/impl/y1;->b()Lcom/applovin/adview/AppLovinAdView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/applovin/impl/sdk/l;->p()Landroid/content/Context;

    move-result-object v0

    :goto_0
    move-object v6, v0

    .line 122
    iget-object v0, p0, Lcom/applovin/impl/y1;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->l()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    move-object v5, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackAndLaunchVideoClick(Lcom/applovin/impl/sdk/ad/b;Landroid/net/Uri;Landroid/view/MotionEvent;Lcom/applovin/impl/y1;Landroid/content/Context;)V

    .line 124
    iget-object p1, v5, Lcom/applovin/impl/y1;->F:Lcom/applovin/sdk/AppLovinAdClickListener;

    iget-object v0, v5, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-static {p1, v0}, Lcom/applovin/impl/x2;->a(Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 126
    iget p1, v5, Lcom/applovin/impl/y1;->A:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v5, Lcom/applovin/impl/y1;->A:I

    return-void

    :cond_3
    move-object v5, p0

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 12

    .line 5
    iget-object v0, p0, Lcom/applovin/impl/d2;->N:Lcom/applovin/impl/e2;

    iget-object v1, p0, Lcom/applovin/impl/d2;->U:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/applovin/impl/d2;->S:Lcom/applovin/impl/adview/g;

    iget-object v3, p0, Lcom/applovin/impl/d2;->R:Lcom/applovin/impl/a;

    iget-object v4, p0, Lcom/applovin/impl/d2;->V:Landroid/widget/ProgressBar;

    iget-object v5, p0, Lcom/applovin/impl/d2;->T:Lcom/applovin/impl/k0;

    iget-object v6, p0, Lcom/applovin/impl/d2;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    iget-object v7, p0, Lcom/applovin/impl/d2;->P:Landroid/view/View;

    invoke-virtual {p0}, Lcom/applovin/impl/y1;->b()Lcom/applovin/adview/AppLovinAdView;

    move-result-object v8

    iget-object v9, p0, Lcom/applovin/impl/y1;->j:Lcom/applovin/impl/adview/k;

    iget-object v10, p0, Lcom/applovin/impl/d2;->X:Landroid/widget/ImageView;

    move-object v11, p1

    invoke-virtual/range {v0 .. v11}, Lcom/applovin/impl/e2;->a(Landroid/widget/ImageView;Lcom/applovin/impl/adview/g;Lcom/applovin/impl/a;Landroid/widget/ProgressBar;Lcom/applovin/impl/k0;Landroid/view/View;Landroid/view/View;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/k;Landroid/widget/ImageView;Landroid/view/ViewGroup;)V

    .line 7
    invoke-static {}, Lcom/applovin/impl/p0;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/applovin/impl/y1;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->p0()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdkSettings;->getExtraParameters()Ljava/util/Map;

    move-result-object p1

    const-string v0, "audio_focus_request"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 14
    iget-object v0, p0, Lcom/applovin/impl/d2;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setAudioFocusRequest(I)V

    .line 22
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/applovin/impl/d2;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    iget-object v1, p0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->n0()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 27
    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 30
    iget-object p1, p0, Lcom/applovin/impl/y1;->j:Lcom/applovin/impl/adview/k;

    if-eqz p1, :cond_1

    .line 32
    invoke-virtual {p1}, Lcom/applovin/impl/adview/k;->b()V

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/d2;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 39
    iget-boolean p1, p0, Lcom/applovin/impl/d2;->d0:Z

    if-eqz p1, :cond_2

    .line 41
    invoke-virtual {p0}, Lcom/applovin/impl/d2;->Q()V

    .line 45
    :cond_2
    invoke-virtual {p0}, Lcom/applovin/impl/y1;->b()Lcom/applovin/adview/AppLovinAdView;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p1, v0}, Lcom/applovin/adview/AppLovinAdView;->renderAd(Lcom/applovin/sdk/AppLovinAd;)V

    .line 48
    iget-object p1, p0, Lcom/applovin/impl/d2;->S:Lcom/applovin/impl/adview/g;

    if-eqz p1, :cond_3

    .line 50
    iget-object p1, p0, Lcom/applovin/impl/y1;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->s0()Lcom/applovin/impl/i6;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/x6;

    iget-object p1, p0, Lcom/applovin/impl/y1;->b:Lcom/applovin/impl/sdk/l;

    new-instance v2, Lcom/applovin/impl/d2$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/applovin/impl/d2$$ExternalSyntheticLambda6;-><init>(Lcom/applovin/impl/d2;)V

    const-string v3, "scheduleSkipButton"

    invoke-direct {v1, p1, v3, v2}, Lcom/applovin/impl/x6;-><init>(Lcom/applovin/impl/sdk/l;Ljava/lang/String;Ljava/lang/Runnable;)V

    sget-object v2, Lcom/applovin/impl/i6$b;->d:Lcom/applovin/impl/i6$b;

    iget-object p1, p0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 53
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->g0()J

    move-result-wide v3

    const/4 v5, 0x1

    .line 54
    invoke-virtual/range {v0 .. v5}, Lcom/applovin/impl/i6;->a(Lcom/applovin/impl/n5;Lcom/applovin/impl/i6$b;JZ)V

    .line 62
    :cond_3
    iget-boolean p1, p0, Lcom/applovin/impl/d2;->e0:Z

    invoke-super {p0, p1}, Lcom/applovin/impl/y1;->b(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/applovin/impl/d2;->b0:Lcom/applovin/impl/c1;

    invoke-virtual {v0}, Lcom/applovin/impl/c1;->a()V

    .line 86
    iget-object v0, p0, Lcom/applovin/impl/d2;->c0:Lcom/applovin/impl/c1;

    invoke-virtual {v0}, Lcom/applovin/impl/c1;->a()V

    .line 89
    iget-object v0, p0, Lcom/applovin/impl/d2;->Z:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/applovin/impl/d2;->a0:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/applovin/impl/y1;->b:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/c5;->a7:Lcom/applovin/impl/c5;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/ad/b;->a(Ljava/lang/String;)V

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/d2;->m()V

    .line 103
    :cond_1
    invoke-super {p0, p1}, Lcom/applovin/impl/y1;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;J)V
    .locals 0

    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/applovin/impl/y1;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 68
    invoke-super {p0, p1}, Lcom/applovin/impl/y1;->a(Z)V

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    .line 72
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/d2;->b(J)V

    .line 74
    iget-boolean p1, p0, Lcom/applovin/impl/d2;->i0:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/d2;->c0:Lcom/applovin/impl/c1;

    invoke-virtual {p1}, Lcom/applovin/impl/c1;->b()V

    :cond_0
    return-void

    .line 78
    :cond_1
    iget-boolean p1, p0, Lcom/applovin/impl/d2;->i0:Z

    if-eqz p1, :cond_2

    .line 80
    iget-object p1, p0, Lcom/applovin/impl/d2;->c0:Lcom/applovin/impl/c1;

    invoke-virtual {p1}, Lcom/applovin/impl/c1;->c()V

    return-void

    .line 84
    :cond_2
    invoke-virtual {p0}, Lcom/applovin/impl/d2;->v()V

    return-void
.end method

.method public b(J)V
    .locals 1

    .line 2
    new-instance v0, Lcom/applovin/impl/d2$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/applovin/impl/d2$$ExternalSyntheticLambda3;-><init>(Lcom/applovin/impl/d2;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/applovin/impl/y1;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected d(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/applovin/impl/d2;->f0:J

    return-void
.end method

.method public e()V
    .locals 0

    .line 13
    invoke-super {p0}, Lcom/applovin/impl/y1;->e()V

    .line 16
    invoke-virtual {p0}, Lcom/applovin/impl/d2;->A()V

    return-void
.end method

.method public f()V
    .locals 2

    .line 11
    invoke-super {p0}, Lcom/applovin/impl/y1;->f()V

    .line 14
    iget-object v0, p0, Lcom/applovin/impl/d2;->N:Lcom/applovin/impl/e2;

    iget-object v1, p0, Lcom/applovin/impl/d2;->S:Lcom/applovin/impl/adview/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/e2;->a(Landroid/view/View;)V

    .line 17
    invoke-virtual {p0}, Lcom/applovin/impl/y1;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/applovin/impl/d2;->i0:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 19
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/applovin/impl/d2;->A()V

    return-void
.end method

.method protected g(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/y1;->c:Lcom/applovin/impl/sdk/p;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered media error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinFullscreenActivity"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/d2;->k0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    iget-object v0, p0, Lcom/applovin/impl/y1;->b:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/c5;->R0:Lcom/applovin/impl/c5;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/applovin/impl/y1;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->I()Lcom/applovin/impl/sdk/n;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-static {}, Lcom/applovin/impl/sdk/l;->p()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/n;->d(Lcom/applovin/impl/sdk/ad/b;Landroid/content/Context;)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/y1;->G:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    instance-of v1, v0, Lcom/applovin/impl/p2;

    if-eqz v1, :cond_2

    .line 13
    check-cast v0, Lcom/applovin/impl/p2;

    invoke-interface {v0, p1}, Lcom/applovin/impl/p2;->onAdDisplayFailed(Ljava/lang/String;)V

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    instance-of v0, v0, Lcom/applovin/impl/v7;

    if-eqz v0, :cond_3

    const-string v0, "handleVastVideoError"

    goto :goto_0

    :cond_3
    const-string v0, "handleVideoError"

    .line 17
    :goto_0
    iget-object v1, p0, Lcom/applovin/impl/y1;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->E()Lcom/applovin/impl/s1;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v1, v0, p1, v2}, Lcom/applovin/impl/s1;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/ad/b;)V

    .line 19
    const-string v1, "source"

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 20
    const-string v1, "error_message"

    invoke-static {v1, p1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 21
    iget-object p1, p0, Lcom/applovin/impl/y1;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->g()Lcom/applovin/impl/f;

    move-result-object p1

    sget-object v1, Lcom/applovin/impl/h2;->I:Lcom/applovin/impl/h2;

    iget-object v2, p0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p1, v1, v2, v0}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/h2;Lcom/applovin/impl/sdk/ad/b;Ljava/util/Map;)V

    .line 24
    const-string p1, "media_error"

    invoke-virtual {p0, p1}, Lcom/applovin/impl/d2;->a(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public getCommunicatorId()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "FullscreenVideoAdPresenter"

    return-object v0
.end method

.method protected m()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/d2;->C()I

    move-result v1

    iget-boolean v2, p0, Lcom/applovin/impl/d2;->d0:Z

    invoke-virtual {p0}, Lcom/applovin/impl/d2;->F()Z

    move-result v3

    iget-wide v4, p0, Lcom/applovin/impl/d2;->m0:J

    move-object v0, p0

    invoke-super/range {v0 .. v5}, Lcom/applovin/impl/y1;->a(IZZJ)V

    return-void
.end method

.method public onMessageReceived(Lcom/applovin/communicator/AppLovinCommunicatorMessage;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getTopic()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_caching_failed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getMessageData()Landroid/os/Bundle;

    move-result-object p1

    .line 4
    const-string v0, "ad_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/applovin/impl/y1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/applovin/impl/d2;->d0:Z

    if-eqz v0, :cond_1

    .line 9
    const-string v0, "load_response_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 10
    const-string v1, "load_exception_message"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 13
    invoke-static {v0}, Lcom/applovin/impl/s0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    :cond_0
    iget-boolean v1, p0, Lcom/applovin/impl/d2;->j0:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/d2;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Video cache error during stream. ResponseCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/applovin/impl/d2;->g(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public r()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    const-string v1, "AppLovinFullscreenActivity"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/y1;->c:Lcom/applovin/impl/sdk/p;

    const-string v2, "Destroying video components"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/applovin/impl/d2;->d0:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/applovin/impl/y1;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcom/applovin/communicator/AppLovinCommunicator;->getInstance(Landroid/content/Context;)Lcom/applovin/communicator/AppLovinCommunicator;

    move-result-object v0

    const-string v2, "video_caching_failed"

    invoke-virtual {v0, p0, v2}, Lcom/applovin/communicator/AppLovinCommunicator;->unsubscribe(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/d2;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 13
    iget-object v0, p0, Lcom/applovin/impl/d2;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/d2;->O:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 23
    const-string v2, "Unable to destroy presenter"

    invoke-static {v1, v2, v0}, Lcom/applovin/impl/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    :cond_3
    :goto_0
    invoke-super {p0}, Lcom/applovin/impl/y1;->r()V

    return-void
.end method

.method public v()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    const-string v1, "AppLovinFullscreenActivity"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/y1;->c:Lcom/applovin/impl/sdk/p;

    const-string v2, "Pausing video"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/d2;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/d2;->h0:I

    .line 5
    iget-object v0, p0, Lcom/applovin/impl/d2;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 7
    iget-object v0, p0, Lcom/applovin/impl/d2;->b0:Lcom/applovin/impl/c1;

    invoke-virtual {v0}, Lcom/applovin/impl/c1;->c()V

    .line 9
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/y1;->c:Lcom/applovin/impl/sdk/p;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Paused video at position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/applovin/impl/d2;->h0:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public w()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/applovin/impl/d2;->a(Landroid/view/ViewGroup;)V

    return-void
.end method
