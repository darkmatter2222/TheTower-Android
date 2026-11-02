.class public Lcom/tapjoy/internal/ho;
.super Lcom/tapjoy/internal/hq;
.source "SourceFile"


# static fields
.field private static final h:Ljava/lang/String; = "ho"

.field private static i:Lcom/tapjoy/internal/ho;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/tapjoy/internal/ie;

.field private final j:Lcom/tapjoy/internal/hj;

.field private k:Lcom/tapjoy/internal/c;

.field private l:Z

.field private m:J

.field private n:Landroid/content/Context;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/hj;Ljava/lang/String;Lcom/tapjoy/internal/ie;Landroid/content/Context;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/tapjoy/internal/hq;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/tapjoy/internal/ho;->o:Z

    .line 70
    iput-object p1, p0, Lcom/tapjoy/internal/ho;->j:Lcom/tapjoy/internal/hj;

    .line 71
    iput-object p2, p0, Lcom/tapjoy/internal/ho;->a:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/tapjoy/internal/ho;->b:Lcom/tapjoy/internal/ie;

    .line 73
    iput-object p4, p0, Lcom/tapjoy/internal/ho;->n:Landroid/content/Context;

    return-void
.end method

.method public static a()V
    .locals 1

    .line 48
    sget-object v0, Lcom/tapjoy/internal/ho;->i:Lcom/tapjoy/internal/ho;

    if-eqz v0, :cond_0

    .line 50
    invoke-direct {v0}, Lcom/tapjoy/internal/ho;->e()V

    :cond_0
    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/tapjoy/internal/hk;Lcom/tapjoy/internal/fy;)V
    .locals 5

    .line 166
    iget-boolean v0, p0, Lcom/tapjoy/internal/ho;->l:Z

    if-eqz v0, :cond_0

    .line 167
    sget-object p1, Lcom/tapjoy/internal/ho;->h:Ljava/lang/String;

    new-instance p2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object p3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v0, "Content is already displayed"

    invoke-direct {p2, p3, v0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 171
    iput-boolean v0, p0, Lcom/tapjoy/internal/ho;->l:Z

    .line 172
    sput-object p0, Lcom/tapjoy/internal/ho;->i:Lcom/tapjoy/internal/ho;

    .line 8133
    iget-object v0, p3, Lcom/tapjoy/internal/fy;->a:Lcom/tapjoy/internal/fs;

    .line 173
    iput-object v0, p0, Lcom/tapjoy/internal/ho;->g:Lcom/tapjoy/internal/fs;

    .line 175
    new-instance v0, Lcom/tapjoy/internal/c;

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/internal/ho;->k:Lcom/tapjoy/internal/c;

    .line 176
    new-instance v1, Lcom/tapjoy/internal/ho$2;

    invoke-direct {v1, p0, p2}, Lcom/tapjoy/internal/ho$2;-><init>(Lcom/tapjoy/internal/ho;Lcom/tapjoy/internal/hk;)V

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/c;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 182
    iget-object v0, p0, Lcom/tapjoy/internal/ho;->k:Lcom/tapjoy/internal/c;

    new-instance v1, Lcom/tapjoy/internal/ho$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/tapjoy/internal/ho$3;-><init>(Lcom/tapjoy/internal/ho;Landroid/app/Activity;Lcom/tapjoy/internal/hk;)V

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/c;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 212
    iget-object v0, p0, Lcom/tapjoy/internal/ho;->k:Lcom/tapjoy/internal/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/c;->setCanceledOnTouchOutside(Z)V

    .line 214
    new-instance v0, Lcom/tapjoy/internal/ja;

    iget-object v1, p0, Lcom/tapjoy/internal/ho;->b:Lcom/tapjoy/internal/ie;

    new-instance v2, Lcom/tapjoy/internal/ho$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/tapjoy/internal/ho$4;-><init>(Lcom/tapjoy/internal/ho;Landroid/app/Activity;Lcom/tapjoy/internal/hk;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/tapjoy/internal/ja;-><init>(Landroid/content/Context;Lcom/tapjoy/internal/ie;Lcom/tapjoy/internal/ja$a;)V

    .line 252
    new-instance v1, Lcom/tapjoy/internal/iz;

    iget-object v2, p0, Lcom/tapjoy/internal/ho;->b:Lcom/tapjoy/internal/ie;

    invoke-direct {v1, p1, v2, v0}, Lcom/tapjoy/internal/iz;-><init>(Landroid/content/Context;Lcom/tapjoy/internal/ie;Lcom/tapjoy/internal/ja;)V

    .line 255
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 256
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    iget-object v1, p0, Lcom/tapjoy/internal/ho;->k:Lcom/tapjoy/internal/c;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/c;->setContentView(Landroid/view/View;)V

    .line 269
    iget-object v0, p0, Lcom/tapjoy/internal/ho;->k:Lcom/tapjoy/internal/c;

    invoke-virtual {v0}, Lcom/tapjoy/internal/c;->show()V

    .line 274
    iget-object v0, p0, Lcom/tapjoy/internal/ho;->k:Lcom/tapjoy/internal/c;

    invoke-virtual {v0}, Lcom/tapjoy/internal/c;->a()V

    .line 277
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v0, 0x400

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    .line 278
    iget-object p1, p0, Lcom/tapjoy/internal/ho;->k:Lcom/tapjoy/internal/c;

    invoke-virtual {p1}, Lcom/tapjoy/internal/c;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 282
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tapjoy/internal/ho;->m:J

    .line 283
    iget-object p1, p0, Lcom/tapjoy/internal/ho;->j:Lcom/tapjoy/internal/hj;

    iget-object v0, p0, Lcom/tapjoy/internal/ho;->b:Lcom/tapjoy/internal/ie;

    iget-object v0, v0, Lcom/tapjoy/internal/ie;->k:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/hj;->a(Ljava/util/Map;)V

    .line 284
    invoke-virtual {p3}, Lcom/tapjoy/internal/fy;->b()V

    .line 286
    iget-object p1, p0, Lcom/tapjoy/internal/ho;->g:Lcom/tapjoy/internal/fs;

    if-eqz p1, :cond_2

    .line 288
    invoke-virtual {p1}, Lcom/tapjoy/internal/fs;->b()Lcom/tapjoy/internal/gi$a;

    .line 291
    :cond_2
    iget-object p1, p0, Lcom/tapjoy/internal/ho;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/tapjoy/internal/hk;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/ho;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/tapjoy/internal/ho;->e()V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/ho;Landroid/app/Activity;Lcom/tapjoy/internal/hk;Lcom/tapjoy/internal/fy;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/tapjoy/internal/ho;->a(Landroid/app/Activity;Lcom/tapjoy/internal/hk;Lcom/tapjoy/internal/fy;)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/ho;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/tapjoy/internal/ho;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/tapjoy/internal/ho;)J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/tapjoy/internal/ho;->m:J

    return-wide v0
.end method

.method static synthetic c(Lcom/tapjoy/internal/ho;)Lcom/tapjoy/internal/hj;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/tapjoy/internal/ho;->j:Lcom/tapjoy/internal/hj;

    return-object p0
.end method

.method static synthetic d()Lcom/tapjoy/internal/ho;
    .locals 1

    const/4 v0, 0x0

    .line 42
    sput-object v0, Lcom/tapjoy/internal/ho;->i:Lcom/tapjoy/internal/ho;

    return-object v0
.end method

.method static synthetic d(Lcom/tapjoy/internal/ho;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/tapjoy/internal/ho;->o:Z

    return p0
.end method

.method static synthetic e(Lcom/tapjoy/internal/ho;)Lcom/tapjoy/internal/c;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/tapjoy/internal/ho;->k:Lcom/tapjoy/internal/c;

    return-object p0
.end method

.method private e()V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/tapjoy/internal/ho;->k:Lcom/tapjoy/internal/c;

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {v0}, Lcom/tapjoy/internal/c;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/hk;Lcom/tapjoy/internal/fy;)V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/tapjoy/internal/ho;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/tapjoy/internal/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Lcom/tapjoy/internal/ho;->a(Landroid/app/Activity;Lcom/tapjoy/internal/hk;Lcom/tapjoy/internal/fy;)V

    .line 102
    const-class v0, Lcom/tapjoy/internal/ie;

    iget-object v0, p0, Lcom/tapjoy/internal/ho;->a:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 112
    :catch_0
    :cond_0
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 119
    :cond_1
    invoke-static {}, Lcom/tapjoy/internal/hj;->a()Lcom/tapjoy/internal/hj;

    move-result-object v2

    .line 7190
    iget-object v2, v2, Lcom/tapjoy/internal/hj;->e:Landroid/content/Context;

    .line 121
    :try_start_1
    new-instance v3, Lcom/tapjoy/internal/ho$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/tapjoy/internal/ho$1;-><init>(Lcom/tapjoy/internal/ho;Lcom/tapjoy/internal/hk;Lcom/tapjoy/internal/fy;)V

    invoke-static {v2, v3, v1}, Lcom/tapjoy/TJContentActivity;->start(Landroid/content/Context;Lcom/tapjoy/TJContentActivity$ContentProducer;Z)V

    .line 138
    const-class v1, Lcom/tapjoy/internal/ie;

    iget-object v1, p0, Lcom/tapjoy/internal/ho;->a:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 148
    :try_start_2
    invoke-direct {p0, v0, p1, p2}, Lcom/tapjoy/internal/ho;->a(Landroid/app/Activity;Lcom/tapjoy/internal/hk;Lcom/tapjoy/internal/fy;)V

    .line 149
    const-class p2, Lcom/tapjoy/internal/ie;

    iget-object p2, p0, Lcom/tapjoy/internal/ho;->a:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    return-void

    .line 157
    :catch_2
    :cond_2
    iget-object p2, p0, Lcom/tapjoy/internal/ho;->a:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Failed to show the content for \"{}\" caused by no registration of TJContentActivity"

    invoke-static {v0, p2}, Lcom/tapjoy/internal/hg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iget-object p2, p0, Lcom/tapjoy/internal/ho;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/tapjoy/internal/ho;->f:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/tapjoy/internal/hk;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/gv;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/tapjoy/internal/ho;->b:Lcom/tapjoy/internal/ie;

    .line 1159
    iget-object v1, v0, Lcom/tapjoy/internal/ie;->a:Lcom/tapjoy/internal/ih;

    if-eqz v1, :cond_0

    .line 1160
    iget-object v1, v0, Lcom/tapjoy/internal/ie;->a:Lcom/tapjoy/internal/ih;

    invoke-virtual {v1}, Lcom/tapjoy/internal/ih;->b()V

    .line 1162
    :cond_0
    iget-object v1, v0, Lcom/tapjoy/internal/ie;->b:Lcom/tapjoy/internal/ih;

    if-eqz v1, :cond_1

    .line 1163
    iget-object v1, v0, Lcom/tapjoy/internal/ie;->b:Lcom/tapjoy/internal/ih;

    invoke-virtual {v1}, Lcom/tapjoy/internal/ih;->b()V

    .line 1165
    :cond_1
    iget-object v1, v0, Lcom/tapjoy/internal/ie;->c:Lcom/tapjoy/internal/ih;

    invoke-virtual {v1}, Lcom/tapjoy/internal/ih;->b()V

    .line 1166
    iget-object v1, v0, Lcom/tapjoy/internal/ie;->e:Lcom/tapjoy/internal/ih;

    if-eqz v1, :cond_2

    .line 1167
    iget-object v1, v0, Lcom/tapjoy/internal/ie;->e:Lcom/tapjoy/internal/ih;

    invoke-virtual {v1}, Lcom/tapjoy/internal/ih;->b()V

    .line 1169
    :cond_2
    iget-object v1, v0, Lcom/tapjoy/internal/ie;->f:Lcom/tapjoy/internal/ih;

    if-eqz v1, :cond_3

    .line 1170
    iget-object v1, v0, Lcom/tapjoy/internal/ie;->f:Lcom/tapjoy/internal/ih;

    invoke-virtual {v1}, Lcom/tapjoy/internal/ih;->b()V

    .line 1172
    :cond_3
    iget-object v1, v0, Lcom/tapjoy/internal/ie;->m:Lcom/tapjoy/internal/if;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/tapjoy/internal/ie;->m:Lcom/tapjoy/internal/if;

    iget-object v1, v1, Lcom/tapjoy/internal/if;->a:Lcom/tapjoy/internal/ih;

    if-eqz v1, :cond_4

    .line 1173
    iget-object v0, v0, Lcom/tapjoy/internal/ie;->m:Lcom/tapjoy/internal/if;

    iget-object v0, v0, Lcom/tapjoy/internal/if;->a:Lcom/tapjoy/internal/ih;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ih;->b()V

    :cond_4
    return-void
.end method

.method public final c()Z
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/tapjoy/internal/ho;->b:Lcom/tapjoy/internal/ie;

    .line 1178
    iget-object v1, v0, Lcom/tapjoy/internal/ie;->c:Lcom/tapjoy/internal/ih;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/tapjoy/internal/ie;->c:Lcom/tapjoy/internal/ih;

    .line 2045
    iget-object v1, v1, Lcom/tapjoy/internal/ih;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 1178
    iget-object v1, v0, Lcom/tapjoy/internal/ie;->m:Lcom/tapjoy/internal/if;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tapjoy/internal/ie;->m:Lcom/tapjoy/internal/if;

    iget-object v1, v1, Lcom/tapjoy/internal/if;->a:Lcom/tapjoy/internal/ih;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tapjoy/internal/ie;->m:Lcom/tapjoy/internal/if;

    iget-object v1, v1, Lcom/tapjoy/internal/if;->a:Lcom/tapjoy/internal/ih;

    .line 3045
    iget-object v1, v1, Lcom/tapjoy/internal/ih;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 1179
    :cond_0
    iget-object v1, v0, Lcom/tapjoy/internal/ie;->b:Lcom/tapjoy/internal/ih;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/tapjoy/internal/ie;->f:Lcom/tapjoy/internal/ih;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/tapjoy/internal/ie;->b:Lcom/tapjoy/internal/ih;

    .line 4045
    iget-object v1, v1, Lcom/tapjoy/internal/ih;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 1181
    iget-object v1, v0, Lcom/tapjoy/internal/ie;->f:Lcom/tapjoy/internal/ih;

    .line 5045
    iget-object v1, v1, Lcom/tapjoy/internal/ih;->b:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 1181
    :cond_1
    iget-object v1, v0, Lcom/tapjoy/internal/ie;->a:Lcom/tapjoy/internal/ih;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/tapjoy/internal/ie;->e:Lcom/tapjoy/internal/ih;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/tapjoy/internal/ie;->a:Lcom/tapjoy/internal/ih;

    .line 6045
    iget-object v1, v1, Lcom/tapjoy/internal/ih;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 1183
    iget-object v0, v0, Lcom/tapjoy/internal/ie;->e:Lcom/tapjoy/internal/ih;

    .line 7045
    iget-object v0, v0, Lcom/tapjoy/internal/ih;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method
