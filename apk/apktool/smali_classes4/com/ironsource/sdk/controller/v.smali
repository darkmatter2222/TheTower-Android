.class public Lcom/ironsource/sdk/controller/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/sdk/controller/l;
.implements Lcom/ironsource/Vc;
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/controller/v$p;,
        Lcom/ironsource/sdk/controller/v$w;,
        Lcom/ironsource/sdk/controller/v$s;,
        Lcom/ironsource/sdk/controller/v$t;,
        Lcom/ironsource/sdk/controller/v$u;,
        Lcom/ironsource/sdk/controller/v$v;,
        Lcom/ironsource/sdk/controller/v$q;,
        Lcom/ironsource/sdk/controller/v$r;
    }
.end annotation


# static fields
.field private static final d0:Ljava/lang/String; = "about:blank"

.field public static e0:I = 0x0

.field public static f0:Ljava/lang/String; = "is_store"

.field public static g0:Ljava/lang/String; = "external_url"

.field public static h0:Ljava/lang/String; = "secondary_web_view"

.field private static i0:Ljava/lang/String; = "success"

.field private static j0:Ljava/lang/String; = "fail"


# instance fields
.field private A:Lcom/ironsource/w4;

.field private B:Ljava/lang/String;

.field private C:Lcom/ironsource/sdk/controller/d;

.field private D:Lcom/ironsource/Ag;

.field private E:Lcom/ironsource/a1;

.field private F:Ljava/lang/Object;

.field private G:Z

.field private H:Lcom/ironsource/Y4;

.field private I:Lcom/ironsource/sdk/controller/o;

.field private J:Lcom/ironsource/sdk/controller/q;

.field private K:Lcom/ironsource/sdk/controller/u;

.field private L:Lcom/ironsource/sdk/controller/i;

.field private M:Lcom/ironsource/sdk/controller/a;

.field private N:Lcom/ironsource/sdk/controller/j;

.field private O:Lcom/ironsource/t1;

.field private P:Lcom/ironsource/B4;

.field private Q:Lcom/ironsource/dh;

.field private R:Lcom/ironsource/sdk/controller/c;

.field private S:Lcom/ironsource/V3;

.field private T:Lorg/json/JSONObject;

.field private U:Lcom/ironsource/sdk/controller/l$a;

.field private V:Lcom/ironsource/sdk/controller/l$b;

.field private W:Lcom/ironsource/n4;

.field private X:Z

.field private final Y:Z

.field private final Z:Lcom/ironsource/B7;

.field private final a:Lcom/ironsource/V7;

.field a0:Lcom/ironsource/e4;

.field private b:Lcom/ironsource/j4;

.field private volatile b0:Lcom/ironsource/na;

.field private c:Ljava/lang/String;

.field private c0:Lcom/ironsource/Xc;

.field private d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private final h:Lcom/ironsource/j5;

.field private i:Z

.field private j:Lcom/ironsource/sdk/controller/v$q;

.field private k:Z

.field private l:Landroid/os/CountDownTimer;

.field public m:Landroid/os/CountDownTimer;

.field private final n:Lcom/ironsource/bh;

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private final r:Lcom/ironsource/sdk/controller/v$p;

.field private s:Landroid/view/View;

.field private t:Landroid/widget/FrameLayout;

.field private u:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private v:Landroid/widget/FrameLayout;

.field private w:Lcom/ironsource/sdk/controller/v$v;

.field private x:Ljava/lang/String;

.field private y:Lcom/ironsource/y4;

.field private z:Lcom/ironsource/x4;


# direct methods
.method public static synthetic $r8$lambda$An0851D-9smNZa-v2KNaeOgyMXE(Lcom/ironsource/sdk/controller/v;Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/v;->a(Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M2GC0Y1mFChqfbQIrxIVRVn0qkc(Lcom/ironsource/sdk/controller/v;)V
    .locals 0

    invoke-direct {p0}, Lcom/ironsource/sdk/controller/v;->C()V

    return-void
.end method

.method public static synthetic $r8$lambda$RdwXcftqxnWoJQFDRvxOmYMjGY8(Lcom/ironsource/sdk/controller/v;Lcom/ironsource/D8;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->d(Lcom/ironsource/D8;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SK7nq1vM9Yb_hb9oMvZltxBC8bY(Lcom/ironsource/sdk/controller/v;Lcom/ironsource/d7;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->a(Lcom/ironsource/d7;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dxl-O28bdimlS2YXaNZDsYYDzfs(Lcom/ironsource/sdk/controller/v;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fG3E6COX5pevhJIm_ESJL5KlNwQ(Lcom/ironsource/sdk/controller/v;Lcom/ironsource/a7;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->a(Lcom/ironsource/a7;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetA(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/w4;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->A:Lcom/ironsource/w4;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetB(Lcom/ironsource/sdk/controller/v;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->B:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetC(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/sdk/controller/d;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->C:Lcom/ironsource/sdk/controller/d;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetD(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/Ag;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->D:Lcom/ironsource/Ag;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetE(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/a1;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->E:Lcom/ironsource/a1;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetG(Lcom/ironsource/sdk/controller/v;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ironsource/sdk/controller/v;->G:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetH(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/Y4;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->H:Lcom/ironsource/Y4;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetI(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/sdk/controller/o;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->I:Lcom/ironsource/sdk/controller/o;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetJ(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/sdk/controller/q;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->J:Lcom/ironsource/sdk/controller/q;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetK(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/sdk/controller/u;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->K:Lcom/ironsource/sdk/controller/u;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetL(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/sdk/controller/i;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->L:Lcom/ironsource/sdk/controller/i;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetM(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/sdk/controller/a;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->M:Lcom/ironsource/sdk/controller/a;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetN(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/sdk/controller/j;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->N:Lcom/ironsource/sdk/controller/j;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetO(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/t1;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->O:Lcom/ironsource/t1;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetP(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/B4;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->P:Lcom/ironsource/B4;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetR(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/sdk/controller/c;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->R:Lcom/ironsource/sdk/controller/c;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetS(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/V3;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->S:Lcom/ironsource/V3;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetT(Lcom/ironsource/sdk/controller/v;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->T:Lorg/json/JSONObject;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetU(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/sdk/controller/l$a;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->U:Lcom/ironsource/sdk/controller/l$a;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetV(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/sdk/controller/l$b;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->V:Lcom/ironsource/sdk/controller/l$b;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetX(Lcom/ironsource/sdk/controller/v;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ironsource/sdk/controller/v;->X:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetZ(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/B7;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->Z:Lcom/ironsource/B7;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeta(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/V7;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->a:Lcom/ironsource/V7;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetb(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/j4;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->b:Lcom/ironsource/j4;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetb0(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/na;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetc(Lcom/ironsource/sdk/controller/v;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->c:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetc0(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/Xc;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->c0:Lcom/ironsource/Xc;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetd(Lcom/ironsource/sdk/controller/v;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->d:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeth(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/j5;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->h:Lcom/ironsource/j5;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeti(Lcom/ironsource/sdk/controller/v;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ironsource/sdk/controller/v;->i:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetl(Lcom/ironsource/sdk/controller/v;)Landroid/os/CountDownTimer;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->l:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetn(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/bh;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->n:Lcom/ironsource/bh;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgets(Lcom/ironsource/sdk/controller/v;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->s:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgett(Lcom/ironsource/sdk/controller/v;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->t:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetu(Lcom/ironsource/sdk/controller/v;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->u:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetv(Lcom/ironsource/sdk/controller/v;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->v:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetw(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/sdk/controller/v$v;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->w:Lcom/ironsource/sdk/controller/v$v;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgety(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/y4;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->y:Lcom/ironsource/y4;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetz(Lcom/ironsource/sdk/controller/v;)Lcom/ironsource/x4;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/sdk/controller/v;->z:Lcom/ironsource/x4;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputG(Lcom/ironsource/sdk/controller/v;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/v;->G:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputi(Lcom/ironsource/sdk/controller/v;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/v;->i:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputj(Lcom/ironsource/sdk/controller/v;Lcom/ironsource/sdk/controller/v$q;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/sdk/controller/v;->j:Lcom/ironsource/sdk/controller/v$q;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputk(Lcom/ironsource/sdk/controller/v;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/v;->k:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputo(Lcom/ironsource/sdk/controller/v;I)V
    .locals 0

    iput p1, p0, Lcom/ironsource/sdk/controller/v;->o:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputp(Lcom/ironsource/sdk/controller/v;I)V
    .locals 0

    iput p1, p0, Lcom/ironsource/sdk/controller/v;->p:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputq(Lcom/ironsource/sdk/controller/v;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/sdk/controller/v;->q:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputs(Lcom/ironsource/sdk/controller/v;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/sdk/controller/v;->s:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputu(Lcom/ironsource/sdk/controller/v;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/sdk/controller/v;->u:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$ma(Lcom/ironsource/sdk/controller/v;Lcom/ironsource/t8$e;)Lcom/ironsource/v4;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->a(Lcom/ironsource/t8$e;)Lcom/ironsource/v4;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$ma(Lcom/ironsource/sdk/controller/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$ma(Lcom/ironsource/sdk/controller/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$ma(Lcom/ironsource/sdk/controller/v;Ljava/lang/String;Lcom/ironsource/t8$e;Lcom/ironsource/X4;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;Lcom/ironsource/t8$e;Lcom/ironsource/X4;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$ma(Lcom/ironsource/sdk/controller/v;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$ma(Lcom/ironsource/sdk/controller/v;Lorg/json/JSONObject;Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/v;->a(Lorg/json/JSONObject;Landroid/webkit/WebView;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$md(Lcom/ironsource/sdk/controller/v;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$md(Lcom/ironsource/sdk/controller/v;Landroid/content/Context;)[Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->d(Landroid/content/Context;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$me(Lcom/ironsource/sdk/controller/v;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$me(Lcom/ironsource/sdk/controller/v;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/v;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mf(Lcom/ironsource/sdk/controller/v;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->f(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mf(Lcom/ironsource/sdk/controller/v;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/v;->f(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mg(Lcom/ironsource/sdk/controller/v;Ljava/lang/String;)Lcom/ironsource/t8$e;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->g(Ljava/lang/String;)Lcom/ironsource/t8$e;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mg(Lcom/ironsource/sdk/controller/v;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->g(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mi(Lcom/ironsource/sdk/controller/v;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->i(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mm(Lcom/ironsource/sdk/controller/v;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->m(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mo(Lcom/ironsource/sdk/controller/v;)V
    .locals 0

    invoke-direct {p0}, Lcom/ironsource/sdk/controller/v;->o()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mq(Lcom/ironsource/sdk/controller/v;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->q(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mr(Lcom/ironsource/sdk/controller/v;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->r(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgeti0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ironsource/sdk/controller/v;->i0:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetj0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ironsource/sdk/controller/v;->j0:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smB()Z
    .locals 1

    invoke-static {}, Lcom/ironsource/sdk/controller/v;->B()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ironsource/Y4;Lcom/ironsource/e4;Lcom/ironsource/sdk/controller/c;Lcom/ironsource/V7;ILcom/ironsource/j5;Ljava/lang/String;Lcom/ironsource/sdk/controller/l$a;Lcom/ironsource/sdk/controller/l$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v1, p7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v2, "v"

    iput-object v2, p0, Lcom/ironsource/sdk/controller/v;->c:Ljava/lang/String;

    .line 3
    const-string v2, "IronSource"

    iput-object v2, p0, Lcom/ironsource/sdk/controller/v;->d:Ljava/lang/String;

    .line 7
    const-string v2, "We\'re sorry, some error occurred. we will investigate it"

    iput-object v2, p0, Lcom/ironsource/sdk/controller/v;->e:Ljava/lang/String;

    .line 32
    new-instance v2, Lcom/ironsource/bh;

    invoke-direct {v2}, Lcom/ironsource/bh;-><init>()V

    iput-object v2, p0, Lcom/ironsource/sdk/controller/v;->n:Lcom/ironsource/bh;

    const/16 v2, 0x32

    .line 34
    iput v2, p0, Lcom/ironsource/sdk/controller/v;->o:I

    .line 35
    iput v2, p0, Lcom/ironsource/sdk/controller/v;->p:I

    .line 36
    const-string v2, "top-right"

    iput-object v2, p0, Lcom/ironsource/sdk/controller/v;->q:Ljava/lang/String;

    .line 60
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/ironsource/sdk/controller/v;->F:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 62
    iput-boolean v2, p0, Lcom/ironsource/sdk/controller/v;->G:Z

    .line 103
    new-instance v3, Lcom/ironsource/sdk/controller/v$p;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/ironsource/sdk/controller/v$p;-><init>(Lcom/ironsource/sdk/controller/v;Lcom/ironsource/sdk/controller/v-IA;)V

    iput-object v3, p0, Lcom/ironsource/sdk/controller/v;->r:Lcom/ironsource/sdk/controller/v$p;

    .line 105
    iput-object p4, p0, Lcom/ironsource/sdk/controller/v;->R:Lcom/ironsource/sdk/controller/c;

    .line 108
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v5

    invoke-interface {v5}, Lcom/ironsource/M7;->h()Lcom/ironsource/D7;

    move-result-object v5

    invoke-interface {v5}, Lcom/ironsource/u5;->v()Z

    move-result v5

    .line 111
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v6

    invoke-interface {v6}, Lcom/ironsource/M7;->h()Lcom/ironsource/D7;

    move-result-object v6

    invoke-interface {v6}, Lcom/ironsource/u5;->G()Z

    move-result v6

    iput-boolean v6, p0, Lcom/ironsource/sdk/controller/v;->Y:Z

    if-eqz v5, :cond_0

    .line 116
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 117
    invoke-direct {p0, p1, p5, v6}, Lcom/ironsource/sdk/controller/v;->a(Landroid/content/Context;Lcom/ironsource/V7;Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_0

    :cond_0
    move-object v6, v4

    .line 120
    :goto_0
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v7

    invoke-interface {v7}, Lcom/ironsource/M7;->a()Lcom/ironsource/B7;

    move-result-object v7

    iput-object v7, p0, Lcom/ironsource/sdk/controller/v;->Z:Lcom/ironsource/B7;

    if-nez v5, :cond_1

    .line 123
    new-instance v7, Lcom/ironsource/na;

    new-instance v8, Lcom/ironsource/ya$a;

    invoke-direct {v8}, Lcom/ironsource/ya$a;-><init>()V

    invoke-direct {v7, p1, v8}, Lcom/ironsource/na;-><init>(Landroid/content/Context;Lcom/ironsource/ya;)V

    iput-object v7, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    .line 126
    :cond_1
    iget-object v7, p0, Lcom/ironsource/sdk/controller/v;->c:Ljava/lang/String;

    const-string v8, "C\'tor"

    invoke-static {v7, v8}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iput-object p3, p0, Lcom/ironsource/sdk/controller/v;->a0:Lcom/ironsource/e4;

    .line 128
    iput-object p5, p0, Lcom/ironsource/sdk/controller/v;->a:Lcom/ironsource/V7;

    .line 129
    iput-object p2, p0, Lcom/ironsource/sdk/controller/v;->H:Lcom/ironsource/Y4;

    if-nez v5, :cond_2

    .line 132
    iget-object p2, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/v;->a(Landroid/content/Context;Landroid/webkit/WebView;)V

    :cond_2
    move-object/from16 p2, p8

    .line 135
    iput-object p2, p0, Lcom/ironsource/sdk/controller/v;->B:Ljava/lang/String;

    .line 136
    new-instance p2, Lcom/ironsource/a1;

    invoke-direct {p2}, Lcom/ironsource/a1;-><init>()V

    iput-object p2, p0, Lcom/ironsource/sdk/controller/v;->E:Lcom/ironsource/a1;

    .line 137
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iput-object p2, p0, Lcom/ironsource/sdk/controller/v;->T:Lorg/json/JSONObject;

    .line 139
    iput-object v1, p0, Lcom/ironsource/sdk/controller/v;->h:Lcom/ironsource/j5;

    move-object/from16 p2, p9

    .line 140
    iput-object p2, p0, Lcom/ironsource/sdk/controller/v;->U:Lcom/ironsource/sdk/controller/l$a;

    move-object/from16 p2, p10

    .line 141
    iput-object p2, p0, Lcom/ironsource/sdk/controller/v;->V:Lcom/ironsource/sdk/controller/l$b;

    .line 144
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getNetworkConfiguration()Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "useVersionedHtml"

    invoke-virtual {p2, p3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/ironsource/sdk/controller/v;->X:Z

    if-eqz p2, :cond_3

    .line 147
    new-instance p2, Lcom/ironsource/k4;

    .line 149
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerUrl()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->B:Ljava/lang/String;

    .line 151
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getNetworkConfiguration()Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "useWebViewUserAgent"

    invoke-virtual {v7, v8, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    new-instance v7, Lcom/ironsource/id;

    .line 152
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerUrl()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/ironsource/id;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3, v0, v2, v7}, Lcom/ironsource/k4;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/ironsource/id;)V

    .line 154
    new-instance p3, Lcom/ironsource/n4;

    new-instance v0, Lcom/ironsource/sdk/controller/v$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/v$$ExternalSyntheticLambda4;-><init>(Lcom/ironsource/sdk/controller/v;)V

    new-instance v2, Lcom/ironsource/t4$a;

    invoke-direct {v2}, Lcom/ironsource/t4$a;-><init>()V

    invoke-direct {p3, p2, v0, v1, v2}, Lcom/ironsource/n4;-><init>(Lcom/ironsource/k4;Lkotlin/jvm/functions/Function1;Lcom/ironsource/C7;Lcom/ironsource/t4;)V

    iput-object p3, p0, Lcom/ironsource/sdk/controller/v;->W:Lcom/ironsource/n4;

    goto :goto_1

    .line 161
    :cond_3
    invoke-virtual {v1, p0}, Lcom/ironsource/j5;->a(Lcom/ironsource/Vc;)V

    .line 163
    new-instance p2, Lcom/ironsource/sdk/controller/d;

    .line 165
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getNetworkConfiguration()Lorg/json/JSONObject;

    move-result-object p3

    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->B:Ljava/lang/String;

    .line 167
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, p3, v0, v2, v1}, Lcom/ironsource/sdk/controller/d;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/j5;)V

    iput-object p2, p0, Lcom/ironsource/sdk/controller/v;->C:Lcom/ironsource/sdk/controller/d;

    :goto_1
    if-nez v5, :cond_4

    .line 171
    iget-object p2, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    new-instance p3, Lcom/ironsource/sdk/controller/v$w;

    invoke-direct {p3, p0, v4}, Lcom/ironsource/sdk/controller/v$w;-><init>(Lcom/ironsource/sdk/controller/v;Lcom/ironsource/sdk/controller/v-IA;)V

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 172
    iget-object p2, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    invoke-virtual {p2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 174
    iget-object p2, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    invoke-static {p2}, Lcom/ironsource/eh;->a(Landroid/webkit/WebView;)V

    .line 176
    iget-object p2, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    invoke-direct {p0, p2}, Lcom/ironsource/sdk/controller/v;->a(Landroid/webkit/WebView;)V

    .line 178
    iget-object p2, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    invoke-virtual {p2, p0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 180
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/ironsource/sdk/controller/v;->c(Landroid/content/Context;)Lcom/ironsource/V3;

    move-result-object p2

    iput-object p2, p0, Lcom/ironsource/sdk/controller/v;->S:Lcom/ironsource/V3;

    .line 182
    invoke-virtual/range {p0 .. p1}, Lcom/ironsource/sdk/controller/v;->b(Landroid/content/Context;)V

    .line 183
    invoke-virtual {p0, p6}, Lcom/ironsource/sdk/controller/v;->b(I)V

    move-object/from16 p1, p11

    .line 185
    iput-object p1, p0, Lcom/ironsource/sdk/controller/v;->f:Ljava/lang/String;

    move-object/from16 p1, p12

    .line 186
    iput-object p1, p0, Lcom/ironsource/sdk/controller/v;->g:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 190
    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    iget-object p1, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    if-nez p1, :cond_5

    .line 202
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "WebView initialization failed"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 203
    iget-object p1, p0, Lcom/ironsource/sdk/controller/v;->R:Lcom/ironsource/sdk/controller/c;

    invoke-interface {p1, p2}, Lcom/ironsource/sdk/controller/c;->c(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 204
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p3, "WebView initialization was interrupted"

    invoke-virtual {p2, p3, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 206
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 207
    iget-object p1, p0, Lcom/ironsource/sdk/controller/v;->R:Lcom/ironsource/sdk/controller/c;

    invoke-interface {p1, p3}, Lcom/ironsource/sdk/controller/c;->c(Ljava/lang/String;)V

    return-void

    .line 220
    :cond_5
    invoke-static {}, Lcom/ironsource/sdk/controller/FeaturesManager;->getInstance()Lcom/ironsource/sdk/controller/FeaturesManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/FeaturesManager;->getFeatureFlagHealthCheck()Lcom/ironsource/b7;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/j4;->a(Lcom/ironsource/b7;)Lcom/ironsource/j4;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/sdk/controller/v;->b:Lcom/ironsource/j4;

    return-void
.end method

.method private static B()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->h()Lcom/ironsource/D7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/u5;->h()Z

    move-result v0

    return v0
.end method

.method private synthetic C()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method private J()V
    .locals 0

    return-void
.end method

.method private a(Lcom/ironsource/t8$e;Lcom/ironsource/X4;)Lcom/ironsource/sdk/controller/v$u;
    .locals 4

    .line 393
    new-instance v0, Lcom/ironsource/sdk/controller/v$u;

    invoke-direct {v0}, Lcom/ironsource/sdk/controller/v$u;-><init>()V

    .line 396
    sget-object v1, Lcom/ironsource/t8$e;->c:Lcom/ironsource/t8$e;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/ironsource/t8$e;->b:Lcom/ironsource/t8$e;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/ironsource/t8$e;->a:Lcom/ironsource/t8$e;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 399
    :cond_1
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 400
    iget-object v2, p0, Lcom/ironsource/sdk/controller/v;->f:Ljava/lang/String;

    const-string v3, "applicationKey"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget-object v2, p0, Lcom/ironsource/sdk/controller/v;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 402
    iget-object v2, p0, Lcom/ironsource/sdk/controller/v;->g:Ljava/lang/String;

    const-string v3, "applicationUserId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p2, :cond_4

    .line 406
    invoke-virtual {p2}, Lcom/ironsource/X4;->g()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 407
    invoke-virtual {p2}, Lcom/ironsource/X4;->g()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 408
    sget-object v2, Lcom/ironsource/M;->a:Lcom/ironsource/M;

    .line 412
    invoke-virtual {p2}, Lcom/ironsource/X4;->h()Ljava/lang/String;

    move-result-object v3

    .line 413
    invoke-virtual {v2, v3}, Lcom/ironsource/M;->c(Ljava/lang/String;)J

    move-result-wide v2

    .line 414
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 415
    const-string v3, "loadStartTime"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    :cond_3
    invoke-virtual {p2}, Lcom/ironsource/X4;->f()Ljava/lang/String;

    move-result-object v2

    .line 423
    const-string v3, "demandSourceName"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    invoke-virtual {p2}, Lcom/ironsource/X4;->h()Ljava/lang/String;

    move-result-object p2

    const-string v2, "demandSourceId"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    :cond_4
    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 430
    invoke-static {p1}, Lcom/ironsource/b4$h;->a(Lcom/ironsource/t8$e;)Lcom/ironsource/b4$h;

    move-result-object p1

    .line 431
    iget-object v1, p1, Lcom/ironsource/b4$h;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/ironsource/b4$h;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/ironsource/b4$h;->c:Ljava/lang/String;

    .line 432
    invoke-direct {p0, v1, p2, v2, v3}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 435
    iget-object p1, p1, Lcom/ironsource/b4$h;->a:Ljava/lang/String;

    iput-object p1, v0, Lcom/ironsource/sdk/controller/v$u;->a:Ljava/lang/String;

    .line 436
    iput-object p2, v0, Lcom/ironsource/sdk/controller/v$u;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/ironsource/t8$e;)Lcom/ironsource/v4;
    .locals 1

    .line 78
    sget-object v0, Lcom/ironsource/t8$e;->b:Lcom/ironsource/t8$e;

    if-ne p1, v0, :cond_0

    .line 79
    iget-object p1, p0, Lcom/ironsource/sdk/controller/v;->z:Lcom/ironsource/x4;

    return-object p1

    .line 80
    :cond_0
    sget-object v0, Lcom/ironsource/t8$e;->c:Lcom/ironsource/t8$e;

    if-ne p1, v0, :cond_1

    .line 81
    iget-object p1, p0, Lcom/ironsource/sdk/controller/v;->y:Lcom/ironsource/y4;

    return-object p1

    .line 82
    :cond_1
    sget-object v0, Lcom/ironsource/t8$e;->a:Lcom/ironsource/t8$e;

    if-ne p1, v0, :cond_2

    .line 83
    iget-object p1, p0, Lcom/ironsource/sdk/controller/v;->A:Lcom/ironsource/w4;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 541
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 542
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 544
    :catch_0
    const-string p1, ""

    return-object p1
.end method

.method private a(Lcom/ironsource/t8$e;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5

    .line 437
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 438
    const-string v1, "sessionDepth"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 439
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string v1, "demandSourceName"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 442
    invoke-static {p2}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    .line 444
    iget-object v3, p0, Lcom/ironsource/sdk/controller/v;->H:Lcom/ironsource/Y4;

    invoke-virtual {v3, p1, p2}, Lcom/ironsource/Y4;->a(Lcom/ironsource/t8$e;Ljava/lang/String;)Lcom/ironsource/X4;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 447
    invoke-virtual {v3}, Lcom/ironsource/X4;->g()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 448
    invoke-virtual {v3}, Lcom/ironsource/X4;->g()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 451
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 452
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 455
    const-string v1, "demandSourceId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    :cond_2
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 460
    invoke-static {p1}, Lcom/ironsource/b4$h;->b(Lcom/ironsource/t8$e;)Lcom/ironsource/b4$h;

    move-result-object p1

    .line 461
    iget-object v0, p1, Lcom/ironsource/b4$h;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/ironsource/b4$h;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/ironsource/b4$h;->c:Ljava/lang/String;

    invoke-direct {p0, v0, p2, v1, p1}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 504
    const-string v0, "errCode"

    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 505
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 510
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 647
    new-instance v0, Lcom/ironsource/sdk/controller/m$a;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/ironsource/sdk/controller/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/m$a;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 511
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 515
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 516
    invoke-static {p2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 519
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 520
    invoke-static {p4}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 523
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 524
    invoke-static {p6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 527
    :cond_2
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 528
    invoke-static {p8}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 531
    :cond_3
    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 532
    invoke-virtual {v0, p9, p10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 536
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 537
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 540
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 4

    .line 52
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 56
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ironsource/sdk/controller/v;->v:Landroid/widget/FrameLayout;

    .line 59
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ironsource/sdk/controller/v;->t:Landroid/widget/FrameLayout;

    .line 60
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 63
    iget-object v3, p0, Lcom/ironsource/sdk/controller/v;->t:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v2, p0, Lcom/ironsource/sdk/controller/v;->t:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 67
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 71
    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    iget-object p1, p0, Lcom/ironsource/sdk/controller/v;->v:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/ironsource/sdk/controller/v;->t:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object p1, p0, Lcom/ironsource/sdk/controller/v;->v:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/ironsource/V7;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/ironsource/sdk/controller/v$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p3}, Lcom/ironsource/sdk/controller/v$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/sdk/controller/v;Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p2, v0}, Lcom/ironsource/V7;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic a(Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    .line 2
    :try_start_0
    new-instance v0, Lcom/ironsource/na;

    new-instance v1, Lcom/ironsource/ya$a;

    invoke-direct {v1}, Lcom/ironsource/ya$a;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/ironsource/na;-><init>(Landroid/content/Context;Lcom/ironsource/ya;)V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    .line 3
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    invoke-direct {p0, p1, v0}, Lcom/ironsource/sdk/controller/v;->a(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 6
    iget-object p1, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    new-instance v0, Lcom/ironsource/sdk/controller/v$w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ironsource/sdk/controller/v$w;-><init>(Lcom/ironsource/sdk/controller/v;Lcom/ironsource/sdk/controller/v-IA;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 7
    iget-object p1, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->r:Lcom/ironsource/sdk/controller/v$p;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 8
    iget-object p1, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    invoke-static {p1}, Lcom/ironsource/eh;->a(Landroid/webkit/WebView;)V

    .line 9
    iget-object p1, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->a(Landroid/webkit/WebView;)V

    .line 10
    iget-object p1, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 20
    :try_start_1
    const-string v0, "Failed to create WebView on UI thread"

    .line 21
    iget-object v1, p0, Lcom/ironsource/sdk/controller/v;->R:Lcom/ironsource/sdk/controller/c;

    if-eqz v1, :cond_0

    .line 22
    invoke-interface {v1, v0}, Lcom/ironsource/sdk/controller/c;->c(Ljava/lang/String;)V

    .line 24
    :cond_0
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v1, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :goto_0
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 27
    :goto_1
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 28
    throw p1
.end method

.method private a(Landroid/webkit/WebSettings;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    return-void
.end method

.method private a(Landroid/webkit/WebView;)V
    .locals 3

    .line 29
    invoke-static {}, Lcom/ironsource/sdk/controller/s;->a()Ljava/lang/String;

    move-result-object v0

    .line 30
    new-instance v1, Lcom/ironsource/sdk/controller/s;

    invoke-direct {v1, v0}, Lcom/ironsource/sdk/controller/s;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/v;->a(Lcom/ironsource/sdk/controller/s;)Lcom/ironsource/sdk/controller/g;

    move-result-object v0

    .line 34
    const-string v2, "Android"

    invoke-virtual {p1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/v;->b(Lcom/ironsource/sdk/controller/s;)Lcom/ironsource/sdk/controller/r;

    move-result-object v0

    .line 40
    const-string v1, "GenerateTokenForMessaging"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/ironsource/X4;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/X4;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 308
    invoke-virtual {p1}, Lcom/ironsource/X4;->b()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/util/Map;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->mergeHashMaps([Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 309
    const-string v1, "adm"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 310
    iget-object p2, p0, Lcom/ironsource/sdk/controller/v;->b:Lcom/ironsource/j4;

    new-instance v1, Lcom/ironsource/sdk/controller/v$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/v$$ExternalSyntheticLambda5;-><init>(Lcom/ironsource/sdk/controller/v;)V

    invoke-interface {p2, v1}, Lcom/ironsource/j4;->a(Lcom/ironsource/j4$d;)V

    .line 325
    :cond_0
    iget-object p2, p0, Lcom/ironsource/sdk/controller/v;->E:Lcom/ironsource/a1;

    invoke-virtual {p1}, Lcom/ironsource/X4;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v2}, Lcom/ironsource/a1;->d(Ljava/lang/String;Z)V

    .line 327
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 329
    const-string p2, "onLoadInterstitialSuccess"

    const-string v0, "onLoadInterstitialFail"

    const-string v1, "loadInterstitial"

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 334
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->i(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Lcom/ironsource/a7;)V
    .locals 3

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->R:Lcom/ironsource/sdk/controller/c;

    invoke-interface {v0, p1}, Lcom/ironsource/e7;->a(Lcom/ironsource/a7;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 338
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 339
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleLoadAd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Lcom/ironsource/d7;)V
    .locals 1

    .line 335
    new-instance v0, Lcom/ironsource/sdk/controller/v$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/v$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/sdk/controller/v;)V

    invoke-interface {p1, v0}, Lcom/ironsource/d7;->a(Lcom/ironsource/e7;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/ironsource/t8$e;Lcom/ironsource/X4;)V
    .locals 1

    .line 462
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/v;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    new-instance v0, Lcom/ironsource/sdk/controller/v$n;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/ironsource/sdk/controller/v$n;-><init>(Lcom/ironsource/sdk/controller/v;Lcom/ironsource/t8$e;Lcom/ironsource/X4;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/v;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/ironsource/t8$e;Lcom/ironsource/X4;Lcom/ironsource/sdk/controller/v$t;)V
    .locals 0

    .line 271
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 272
    const-string p1, "Application key are missing"

    invoke-interface {p4, p1, p2, p3}, Lcom/ironsource/sdk/controller/v$t;->a(Ljava/lang/String;Lcom/ironsource/t8$e;Lcom/ironsource/X4;)V

    return-void

    .line 276
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/ironsource/sdk/controller/v;->a(Lcom/ironsource/t8$e;Lcom/ironsource/X4;)Lcom/ironsource/sdk/controller/v$u;

    move-result-object p1

    .line 278
    iget-object p1, p1, Lcom/ironsource/sdk/controller/v$u;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->i(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 494
    new-instance v0, Lcom/ironsource/me;

    invoke-direct {v0, p1}, Lcom/ironsource/me;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 496
    sget-object p2, Lcom/ironsource/sdk/controller/v;->i0:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/ironsource/sdk/controller/v;->j0:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p2}, Lcom/ironsource/me;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 498
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 499
    invoke-direct {p0, p1, p3}, Lcom/ironsource/sdk/controller/v;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 500
    invoke-direct {p0, p1, p4}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 502
    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/v;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 503
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->i(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(Lorg/json/JSONObject;Landroid/webkit/WebView;)V
    .locals 0

    .line 266
    const-string p2, "inspectWebview"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 270
    invoke-static {p1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_0
    return-void
.end method

.method private a(Ljava/io/File;)Z
    .locals 1

    .line 617
    invoke-static {}, Lcom/ironsource/i4;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/sdk/controller/v;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "errMsg"

    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Landroid/content/Context;)Lcom/ironsource/V3;
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/sdk/controller/v$g;

    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerConfigAsJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/ironsource/sdk/controller/v$g;-><init>(Lcom/ironsource/sdk/controller/v;Lorg/json/JSONObject;Landroid/content/Context;)V

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 145
    new-instance v0, Lcom/ironsource/sdk/controller/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/ironsource/sdk/controller/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/m$a;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 7

    .line 20
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/c5;->b(Landroid/content/Context;)Lcom/ironsource/c5;

    move-result-object v0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "&"

    if-nez v3, :cond_0

    .line 27
    const-string v3, "SDKVersion="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 30
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    :cond_0
    invoke-virtual {v0}, Lcom/ironsource/c5;->e()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 35
    const-string v2, "deviceOs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    :cond_1
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerUrl()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 44
    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_2

    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 50
    :cond_2
    const-string v0, "&protocol="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v0, "&domain="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 59
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "isSecured"

    const/4 v5, 0x0

    aput-object v3, v2, v5

    const-string v3, "applicationKey"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-direct {v0, p1, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 71
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "controllerConfig"

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 78
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 79
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 84
    :cond_3
    :goto_0
    const-string p1, "&debug="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 87
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/v;->r()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    invoke-static {}, Lcom/ironsource/sdk/controller/FeaturesManager;->getInstance()Lcom/ironsource/sdk/controller/FeaturesManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/FeaturesManager;->getFeatureFlagLoadControllerAndPlayerFromBundle()Z

    move-result p1

    .line 91
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    .line 92
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/i4;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    .line 95
    const-string p1, "&chfb=true"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "controller html was loaded from bundle, setting in html params"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 103
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/ironsource/D8;)Z
    .locals 8

    .line 104
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/SDKUtils;->copyFileFromBundleToStorage(Landroid/content/Context;Lcom/ironsource/D8;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    .line 113
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 114
    const-string v3, "sdk_controller.min.gz.js"

    invoke-static {v2, v3}, Lcom/ironsource/i4;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    .line 117
    iget-object v4, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    .line 118
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ironsource/i4;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "controller_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 128
    array-length v4, v2

    if-eqz v4, :cond_2

    .line 130
    :try_start_0
    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->saveFile([BLjava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 132
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    move v0, v1

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    .line 136
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed to read bytes for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1

    :cond_2
    return v0

    :cond_3
    return v1
.end method

.method private d(Lcom/ironsource/D8;)Ljava/lang/Object;
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->h:Lcom/ironsource/j5;

    invoke-virtual {v0, p0}, Lcom/ironsource/j5;->a(Lcom/ironsource/Vc;)V

    if-eqz p1, :cond_0

    .line 355
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/v;->a(Lcom/ironsource/D8;)V

    goto :goto_0

    .line 358
    :cond_0
    new-instance p1, Lcom/ironsource/D8;

    const-string v0, "mobileController.html"

    invoke-direct {p1, v0}, Lcom/ironsource/D8;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/u8;

    const/4 v1, 0x1

    const-string v2, "Unable to download Html file"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/u8;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/sdk/controller/v;->a(Lcom/ironsource/D8;Lcom/ironsource/u8;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 17
    new-instance v0, Lcom/ironsource/me;

    invoke-direct {v0, p1}, Lcom/ironsource/me;-><init>(Ljava/lang/String;)V

    .line 18
    sget-object p1, Lcom/ironsource/sdk/controller/v;->j0:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ironsource/me;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d(Landroid/content/Context;)[Ljava/lang/Object;
    .locals 9

    const-string v0, "none"

    .line 19
    invoke-static {p1}, Lcom/ironsource/c5;->b(Landroid/content/Context;)Lcom/ironsource/c5;

    move-result-object v1

    .line 21
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x0

    .line 26
    :try_start_0
    const-string v4, "appOrientation"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v4, "deviceOrientation"

    iget-object v5, p0, Lcom/ironsource/sdk/controller/v;->Z:Lcom/ironsource/B7;

    .line 29
    invoke-interface {v5, p1}, Lcom/ironsource/B7;->A(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->translateDeviceOrientation(I)Ljava/lang/String;

    move-result-object v5

    .line 30
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    invoke-virtual {v1}, Lcom/ironsource/c5;->d()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 37
    const-string v5, "deviceOEM"

    .line 38
    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 39
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    :cond_0
    invoke-virtual {v1}, Lcom/ironsource/c5;->c()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 46
    const-string v6, "deviceModel"

    .line 47
    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 48
    invoke-static {v4}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    move v3, v5

    .line 57
    :goto_0
    invoke-static {p1}, Lcom/ironsource/sdk/utils/SDKUtils;->loadGoogleAdvertiserInfo(Landroid/content/Context;)V

    .line 58
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getAdvertiserId()Ljava/lang/String;

    move-result-object v4

    .line 60
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 61
    iget-object v6, p0, Lcom/ironsource/sdk/controller/v;->c:Ljava/lang/String;

    const-string v7, "add AID"

    invoke-static {v6, v7}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v6, "deviceIds[AID]"

    invoke-static {v4}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    :cond_2
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getLimitAdTracking()Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 77
    iget-object v6, p0, Lcom/ironsource/sdk/controller/v;->c:Ljava/lang/String;

    const-string v7, "add LAT"

    invoke-static {v6, v7}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 82
    const-string v6, "isLimitAdTrackingEnabled"

    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 86
    :cond_3
    invoke-virtual {v1}, Lcom/ironsource/c5;->e()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 88
    const-string v6, "deviceOs"

    .line 89
    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 90
    invoke-static {v4}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_4
    move v3, v5

    .line 99
    :goto_1
    invoke-virtual {v1}, Lcom/ironsource/c5;->f()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 101
    const-string v6, "[^0-9/.]"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 102
    const-string v6, "deviceOSVersion"

    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_5
    move v3, v5

    .line 107
    :goto_2
    invoke-virtual {v1}, Lcom/ironsource/c5;->f()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 109
    const-string v6, "deviceOSVersionFull"

    .line 110
    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 111
    invoke-static {v4}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    :cond_6
    invoke-virtual {v1}, Lcom/ironsource/c5;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 120
    const-string v6, "deviceApiLevel"

    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_7
    move v3, v5

    .line 125
    :goto_3
    invoke-static {}, Lcom/ironsource/l0;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 126
    const-string v6, "asel"

    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 131
    const-string v6, "SDKVersion"

    .line 132
    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 133
    invoke-static {v4}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 134
    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    :cond_8
    invoke-virtual {v1}, Lcom/ironsource/c5;->b()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 141
    invoke-virtual {v1}, Lcom/ironsource/c5;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9

    .line 142
    const-string v4, "mobileCarrier"

    .line 143
    invoke-static {v4}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 144
    invoke-virtual {v1}, Lcom/ironsource/c5;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    :cond_9
    invoke-static {p1}, Lcom/ironsource/Y3;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 153
    const-string v0, "connectionType"

    .line 154
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_a
    move v3, v5

    .line 164
    :goto_4
    invoke-static {p1}, Lcom/ironsource/Y3;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 166
    const-string v1, "rawConnectionType"

    .line 167
    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :cond_b
    move v3, v5

    .line 178
    :goto_5
    const-string v0, "hasVPN"

    .line 179
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/ironsource/Y3;->e(Landroid/content/Context;)Z

    move-result v1

    .line 180
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 184
    const-string v0, "uxt"

    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->isUxt()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 189
    const-string v1, "deviceLanguage"

    .line 190
    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    :cond_c
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->Z:Lcom/ironsource/B7;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/v;->B:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ironsource/B7;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 199
    const-string v4, "diskFreeSize"

    .line 200
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->Z:Lcom/ironsource/B7;

    invoke-interface {v0}, Lcom/ironsource/B7;->o()I

    move-result v0

    .line 206
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "]"

    const-string v6, "["

    const-string v7, "deviceScreenSize"

    if-nez v1, :cond_d

    .line 209
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    invoke-static {v7}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 211
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "width"

    .line 212
    invoke-static {v8}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 213
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    :cond_d
    move v3, v5

    .line 221
    :goto_6
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->Z:Lcom/ironsource/B7;

    invoke-interface {v0}, Lcom/ironsource/B7;->b()I

    move-result v0

    .line 222
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    invoke-static {v7}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 226
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "height"

    .line 227
    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 228
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/M1;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 234
    const-string v1, "bundleId"

    .line 235
    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    :cond_e
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->Z:Lcom/ironsource/B7;

    invoke-interface {v0}, Lcom/ironsource/B7;->r()F

    move-result v0

    .line 243
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 245
    const-string v1, "deviceScreenScale"

    .line 246
    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    :cond_f
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->Z:Lcom/ironsource/B7;

    invoke-interface {v0}, Lcom/ironsource/B7;->p()Z

    move-result v0

    .line 254
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 256
    const-string v1, "unLocked"

    .line 257
    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 258
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    :cond_10
    invoke-static {p1}, Lcom/ironsource/c5;->b(Landroid/content/Context;)Lcom/ironsource/c5;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/c5;->a(Landroid/content/Context;)F

    move-result v0

    .line 265
    const-string v1, "deviceVolume"

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    float-to-double v4, v0

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 270
    const-string v0, "batteryLevel"

    .line 271
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/v;->Z:Lcom/ironsource/B7;

    .line 272
    invoke-interface {v1, p1}, Lcom/ironsource/B7;->l(Landroid/content/Context;)I

    move-result v1

    .line 273
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 277
    const-string v0, "mcc"

    .line 278
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-static {p1}, Lcom/ironsource/X3;->b(Landroid/content/Context;)I

    move-result v1

    .line 280
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 283
    const-string v0, "mnc"

    .line 284
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-static {p1}, Lcom/ironsource/X3;->c(Landroid/content/Context;)I

    move-result v1

    .line 286
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 290
    const-string v0, "phoneType"

    .line 291
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-static {p1}, Lcom/ironsource/X3;->f(Landroid/content/Context;)I

    move-result v1

    .line 293
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 296
    const-string v0, "simOperator"

    .line 297
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-static {p1}, Lcom/ironsource/X3;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    const-string v0, "lastUpdateTime"

    .line 304
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-static {p1}, Lcom/ironsource/M1;->f(Landroid/content/Context;)J

    move-result-wide v4

    .line 306
    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 309
    const-string v0, "firstInstallTime"

    .line 310
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {p1}, Lcom/ironsource/M1;->d(Landroid/content/Context;)J

    move-result-wide v4

    .line 312
    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 315
    const-string v0, "appVersion"

    .line 316
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-static {p1}, Lcom/ironsource/M1;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    invoke-static {p1}, Lcom/ironsource/M1;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 324
    const-string v1, "installerPackageName"

    .line 325
    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 326
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    :cond_11
    const-string v0, "gpv"

    .line 332
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    .line 333
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/sdk/controller/v;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    const-string v0, "screenBrightness"

    .line 339
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/v;->Z:Lcom/ironsource/B7;

    .line 340
    invoke-interface {v1, p1}, Lcom/ironsource/B7;->u(Landroid/content/Context;)I

    move-result p1

    .line 341
    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception p1

    .line 346
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 347
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 351
    :goto_7
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 352
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private e(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    .line 5
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "com.android.vending"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "com.google.market"

    aput-object v4, v1, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v2, v1, v3

    .line 6
    invoke-direct {p0, p1, v2}, Lcom/ironsource/sdk/controller/v;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3
    new-instance v0, Lcom/ironsource/me;

    invoke-direct {v0, p1}, Lcom/ironsource/me;-><init>(Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcom/ironsource/sdk/controller/v;->i0:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ironsource/me;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 12
    new-instance v0, Lcom/ironsource/sdk/controller/m$a;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/sdk/controller/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/m$a;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 104
    new-instance v0, Lcom/ironsource/sdk/controller/m$a;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/controller/m$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/m$a;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private f(Landroid/content/Context;)V
    .locals 1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->S:Lcom/ironsource/V3;

    if-nez v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ironsource/V3;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 102
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 103
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 8
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->g(Ljava/lang/String;)Lcom/ironsource/t8$e;

    move-result-object v1

    .line 10
    iget-object v4, p0, Lcom/ironsource/sdk/controller/v;->H:Lcom/ironsource/Y4;

    invoke-virtual {v4, v1, p2}, Lcom/ironsource/Y4;->a(Lcom/ironsource/t8$e;Ljava/lang/String;)Lcom/ironsource/X4;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 12
    invoke-virtual {p2}, Lcom/ironsource/X4;->g()Ljava/util/Map;

    move-result-object v3

    .line 14
    invoke-virtual {p2}, Lcom/ironsource/X4;->f()Ljava/lang/String;

    move-result-object v1

    .line 15
    const-string v4, "demandSourceName"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {p2}, Lcom/ironsource/X4;->h()Ljava/lang/String;

    move-result-object p2

    const-string v1, "demandSourceId"

    invoke-interface {v3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_0
    :try_start_0
    const-string p2, "productType"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 24
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 28
    :try_start_1
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getInitSDKParams()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 30
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 31
    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/SDKUtils;->mergeJSONObjects(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 34
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 35
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move p1, v2

    .line 43
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/ironsource/sdk/controller/v;->g:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 45
    :try_start_2
    const-string p2, "applicationUserId"

    .line 46
    invoke-static {p2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/ironsource/sdk/controller/v;->g:Ljava/lang/String;

    .line 47
    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p2

    .line 53
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 54
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 59
    :cond_3
    :goto_2
    iget-object p2, p0, Lcom/ironsource/sdk/controller/v;->f:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 61
    :try_start_3
    const-string p2, "applicationKey"

    .line 62
    invoke-static {p2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/ironsource/sdk/controller/v;->f:Ljava/lang/String;

    .line 63
    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    .line 68
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 69
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_3
    move v2, p1

    :cond_4
    if-eqz v3, :cond_6

    .line 76
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 78
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 80
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "sdkWebViewCache"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 81
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ironsource/sdk/controller/v;->p(Ljava/lang/String;)V

    .line 85
    :cond_5
    :try_start_4
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p2

    .line 87
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 88
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    goto :goto_4

    .line 94
    :cond_6
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private g(Ljava/lang/String;)Lcom/ironsource/t8$e;
    .locals 3

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 18
    :cond_0
    sget-object v0, Lcom/ironsource/t8$e;->b:Lcom/ironsource/t8$e;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .line 20
    :cond_1
    sget-object v0, Lcom/ironsource/t8$e;->c:Lcom/ironsource/t8$e;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    .line 22
    :cond_2
    sget-object v0, Lcom/ironsource/t8$e;->a:Lcom/ironsource/t8$e;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    :cond_3
    return-object v1
.end method

.method private g(Landroid/content/Context;)V
    .locals 1

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->S:Lcom/ironsource/V3;

    if-nez v0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ironsource/V3;->c(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 31
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 32
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private i(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/ironsource/sdk/controller/v$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/sdk/controller/v$$ExternalSyntheticLambda2;-><init>(Lcom/ironsource/sdk/controller/v;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/v;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic k(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    new-instance v1, Lcom/ironsource/sdk/controller/m$b;

    .line 2
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/v;->r()I

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/ironsource/sdk/controller/m$b;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/ironsource/sdk/controller/m$b;->a()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lcom/ironsource/na;->a(Ljava/lang/String;)V

    return-void
.end method

.method private m(Ljava/lang/String;)V
    .locals 3

    const-string v0, "load(): "

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/sdk/controller/v;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 5
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebViewController::load: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private n()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->h()Lcom/ironsource/D7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/u5;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->m:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ironsource/sdk/controller/v;->m:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method private o()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->c0:Lcom/ironsource/Xc;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/ironsource/Xc;->onCloseRequested()V

    :cond_0
    return-void
.end method

.method private p(Ljava/lang/String;)V
    .locals 1

    .line 12
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    return-void

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    return-void
.end method

.method private q(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/me;

    invoke-direct {v0, p1}, Lcom/ironsource/me;-><init>(Ljava/lang/String;)V

    .line 2
    const-string p1, "color"

    invoke-virtual {v0, p1}, Lcom/ironsource/me;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    const-string v1, "adViewId"

    invoke-virtual {v0, v1}, Lcom/ironsource/me;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    const-string v1, "transparent"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 10
    invoke-static {}, Lcom/ironsource/q8;->a()Lcom/ironsource/q8;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/q8;->a(Ljava/lang/String;)Lcom/ironsource/L8;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/L8;->getPresentingView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private r(Ljava/lang/String;)Z
    .locals 4

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ironsource/sdk/controller/v;->c:Ljava/lang/String;

    const-string v0, "Trying to trigger a listener - no product was found"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 7
    :cond_0
    sget-object v0, Lcom/ironsource/t8$e;->b:Lcom/ironsource/t8$e;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->z:Lcom/ironsource/x4;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 9
    :cond_1
    sget-object v0, Lcom/ironsource/t8$e;->c:Lcom/ironsource/t8$e;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->y:Lcom/ironsource/y4;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 11
    :cond_2
    sget-object v0, Lcom/ironsource/t8$e;->a:Lcom/ironsource/t8$e;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->A:Lcom/ironsource/w4;

    if-eqz v0, :cond_3

    :goto_0
    const/4 v1, 0x1

    :cond_3
    if-nez v1, :cond_4

    .line 15
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Trying to trigger a listener - no listener was found for product "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v1
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 1
    const-string v0, "interceptedUrlToStore"

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/v;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/v;->i(Ljava/lang/String;)V

    return-void
.end method

.method public D()V
    .locals 1

    .line 1
    const-string v0, "pageFinished"

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/v;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/v;->i(Ljava/lang/String;)V

    return-void
.end method

.method public E()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 4
    iget-object v1, p0, Lcom/ironsource/sdk/controller/v;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WebViewController: onPause() - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public F()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/ironsource/sdk/controller/v;->D:Lcom/ironsource/Ag;

    return-void
.end method

.method public G()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    invoke-virtual {v0}, Lcom/ironsource/na;->a()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ironsource/sdk/controller/v;->c0:Lcom/ironsource/Xc;

    return-void
.end method

.method public H()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public I()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 4
    iget-object v1, p0, Lcom/ironsource/sdk/controller/v;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WebViewController: onResume() - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/ironsource/sdk/controller/s;)Lcom/ironsource/sdk/controller/g;
    .locals 2

    .line 41
    new-instance v0, Lcom/ironsource/sdk/controller/v$s;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/v$s;-><init>(Lcom/ironsource/sdk/controller/v;)V

    .line 42
    new-instance v1, Lcom/ironsource/sdk/controller/b;

    invoke-direct {v1, v0}, Lcom/ironsource/sdk/controller/b;-><init>(Lcom/ironsource/sdk/controller/v$s;)V

    .line 43
    new-instance v0, Lcom/ironsource/sdk/controller/g;

    invoke-direct {v0, v1, p1}, Lcom/ironsource/sdk/controller/g;-><init>(Lcom/ironsource/sdk/controller/b;Lcom/ironsource/sdk/controller/s;)V

    return-object v0
.end method

.method public a()V
    .locals 2

    .line 622
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/v;->Y:Z

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    if-eqz v0, :cond_1

    .line 624
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->a:Lcom/ironsource/V7;

    new-instance v1, Lcom/ironsource/sdk/controller/v$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/v$$ExternalSyntheticLambda3;-><init>(Lcom/ironsource/sdk/controller/v;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/V7;->d(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    if-eqz v0, :cond_1

    .line 634
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 637
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->h:Lcom/ironsource/j5;

    if-eqz v0, :cond_2

    .line 638
    invoke-virtual {v0}, Lcom/ironsource/j5;->d()V

    .line 641
    :cond_2
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->S:Lcom/ironsource/V3;

    if-eqz v0, :cond_3

    .line 642
    invoke-virtual {v0}, Lcom/ironsource/V3;->b()V

    .line 645
    :cond_3
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->m:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_4

    .line 646
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_4
    return-void
.end method

.method public a(I)V
    .locals 8

    .line 85
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/v;->X:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->C:Lcom/ironsource/sdk/controller/d;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/d;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->c:Ljava/lang/String;

    const-string v2, "load(): Mobile Controller HTML Does not exist"

    invoke-static {v0, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 177
    :cond_1
    :goto_0
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerConfigAsJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    .line 179
    invoke-direct {p0, v2}, Lcom/ironsource/sdk/controller/v;->c(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getInitSDKParams()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 183
    const-string v4, "sessionid"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 185
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "%s&sessionid=%s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 190
    :cond_2
    iget-boolean v3, p0, Lcom/ironsource/sdk/controller/v;->X:Z

    if-eqz v3, :cond_3

    .line 191
    iget-object v3, p0, Lcom/ironsource/sdk/controller/v;->W:Lcom/ironsource/n4;

    invoke-virtual {v3}, Lcom/ironsource/n4;->c()Lcom/ironsource/D8;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 192
    :cond_3
    iget-object v3, p0, Lcom/ironsource/sdk/controller/v;->C:Lcom/ironsource/sdk/controller/d;

    invoke-virtual {v3}, Lcom/ironsource/sdk/controller/d;->g()Lcom/ironsource/D8;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    .line 194
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 195
    iget-object v3, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    .line 196
    iget-object v6, p0, Lcom/ironsource/sdk/controller/v;->a:Lcom/ironsource/V7;

    new-instance v0, Lcom/ironsource/sdk/controller/v$i;

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/sdk/controller/v$i;-><init>(Lcom/ironsource/sdk/controller/v;Lorg/json/JSONObject;Landroid/webkit/WebView;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/ironsource/V7;->d(Ljava/lang/Runnable;)V

    .line 217
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/v;->n()V

    .line 219
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->h()Lcom/ironsource/D7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/u5;->K()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v0

    .line 220
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->h()Lcom/ironsource/D7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/u5;->c()I

    move-result v7

    .line 222
    new-instance v0, Lcom/ironsource/sdk/controller/v$j;

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/ironsource/sdk/controller/v$j;-><init>(Lcom/ironsource/sdk/controller/v;JJII)V

    .line 265
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/v;->m:Landroid/os/CountDownTimer;

    return-void
.end method

.method public a(IZ)V
    .locals 11

    .line 480
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    .line 481
    const-string v9, "destroyCalled"

    const-string v1, "resultCode"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 492
    const-string p2, "inlineStoreClosed"

    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/v;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 493
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->i(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->a0:Lcom/ironsource/e4;

    invoke-virtual {v0, p1}, Lcom/ironsource/e4;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 618
    new-instance v0, Lcom/ironsource/sdk/controller/v$e;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/sdk/controller/v$e;-><init>(Lcom/ironsource/sdk/controller/v;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/ironsource/Ag;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/ironsource/sdk/controller/v;->D:Lcom/ironsource/Ag;

    return-void
.end method

.method public a(Lcom/ironsource/B4;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/ironsource/sdk/controller/v;->P:Lcom/ironsource/B4;

    return-void
.end method

.method public a(Lcom/ironsource/D8;)V
    .locals 2

    .line 545
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/v;->X:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->W:Lcom/ironsource/n4;

    invoke-virtual {v0, p1}, Lcom/ironsource/n4;->a(Lcom/ironsource/D8;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 546
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/v;->a(I)V

    return-void

    .line 547
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobileController.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    iget-object p1, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ironsource/i4;->a(Landroid/content/Context;Z)V

    .line 549
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "controller html was loaded from server"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 550
    iget-object p1, p0, Lcom/ironsource/sdk/controller/v;->C:Lcom/ironsource/sdk/controller/d;

    new-instance v0, Lcom/ironsource/sdk/controller/v$o;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/v$o;-><init>(Lcom/ironsource/sdk/controller/v;)V

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/controller/d;->a(Ljava/lang/Runnable;)V

    return-void

    .line 558
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/sdk/controller/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ironsource/D8;Lcom/ironsource/u8;)V
    .locals 4

    .line 559
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/v;->X:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->W:Lcom/ironsource/n4;

    invoke-virtual {v0, p1}, Lcom/ironsource/n4;->a(Lcom/ironsource/D8;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    iget-object p1, p0, Lcom/ironsource/sdk/controller/v;->R:Lcom/ironsource/sdk/controller/c;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller html - failed to download - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p2}, Lcom/ironsource/u8;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 562
    invoke-interface {p1, p2}, Lcom/ironsource/sdk/controller/c;->c(Ljava/lang/String;)V

    return-void

    .line 564
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobileController.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "copying from bundle to storage "

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 566
    invoke-static {}, Lcom/ironsource/sdk/controller/FeaturesManager;->getInstance()Lcom/ironsource/sdk/controller/FeaturesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/FeaturesManager;->getFeatureFlagLoadControllerAndPlayerFromBundle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and sdk_controller.min.gz.js"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 571
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 576
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->c(Lcom/ironsource/D8;)Z

    move-result v3

    :cond_1
    if-eqz v3, :cond_2

    .line 579
    sget-object p1, Lcom/ironsource/le;->C:Lcom/ironsource/le$a;

    invoke-static {p1}, Lcom/ironsource/A8;->a(Lcom/ironsource/le$a;)V

    .line 580
    iget-object p1, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/ironsource/i4;->a(Landroid/content/Context;Z)V

    .line 581
    iget-object p1, p0, Lcom/ironsource/sdk/controller/v;->C:Lcom/ironsource/sdk/controller/d;

    new-instance p2, Lcom/ironsource/sdk/controller/v$a;

    invoke-direct {p2, p0}, Lcom/ironsource/sdk/controller/v$a;-><init>(Lcom/ironsource/sdk/controller/v;)V

    invoke-virtual {p1, p2}, Lcom/ironsource/sdk/controller/d;->a(Ljava/lang/Runnable;)V

    return-void

    .line 590
    :cond_2
    iget-object p1, p0, Lcom/ironsource/sdk/controller/v;->C:Lcom/ironsource/sdk/controller/d;

    new-instance v0, Lcom/ironsource/sdk/controller/v$b;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/v$b;-><init>(Lcom/ironsource/sdk/controller/v;)V

    new-instance v1, Lcom/ironsource/sdk/controller/v$c;

    invoke-direct {v1, p0, p2}, Lcom/ironsource/sdk/controller/v$c;-><init>(Lcom/ironsource/sdk/controller/v;Lcom/ironsource/u8;)V

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/sdk/controller/d;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void

    .line 608
    :cond_3
    invoke-static {}, Lcom/ironsource/sdk/controller/FeaturesManager;->getInstance()Lcom/ironsource/sdk/controller/FeaturesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/FeaturesManager;->getFeatureFlagLoadControllerAndPlayerFromBundle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 609
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 610
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/SDKUtils;->copyFileFromBundleToStorage(Landroid/content/Context;Lcom/ironsource/D8;)Z

    move-result v3

    :cond_4
    if-eqz v3, :cond_5

    .line 614
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/ironsource/sdk/controller/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 616
    :cond_5
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/ironsource/u8;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/ironsource/sdk/controller/v;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ironsource/X4;)V
    .locals 4

    .line 365
    invoke-virtual {p1}, Lcom/ironsource/X4;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 369
    const-string v1, "onDestroyBannersSuccess"

    const-string v2, "onDestroyBannersFail"

    const-string v3, "destroyBanner"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/v;->i(Ljava/lang/String;)V

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->H:Lcom/ironsource/Y4;

    sget-object v1, Lcom/ironsource/t8$e;->a:Lcom/ironsource/t8$e;

    invoke-virtual {p1}, Lcom/ironsource/X4;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/Y4;->b(Lcom/ironsource/t8$e;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ironsource/X4;Ljava/util/Map;Lcom/ironsource/w4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/X4;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/w4;",
            ")V"
        }
    .end annotation

    .line 355
    invoke-virtual {p1}, Lcom/ironsource/X4;->b()Ljava/util/Map;

    move-result-object p1

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/util/Map;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    const/4 v0, 0x1

    aput-object p1, p3, v0

    invoke-static {p3}, Lcom/ironsource/sdk/utils/SDKUtils;->mergeHashMaps([Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 357
    invoke-static {p1}, Lcom/ironsource/sdk/utils/SDKUtils;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 359
    const-string p2, "onLoadBannerSuccess"

    const-string p3, "onLoadBannerFail"

    const-string v0, "loadBanner"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 364
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/ironsource/X4;Ljava/util/Map;Lcom/ironsource/x4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/X4;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/x4;",
            ")V"
        }
    .end annotation

    .line 342
    invoke-virtual {p1}, Lcom/ironsource/X4;->b()Ljava/util/Map;

    move-result-object p1

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/util/Map;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    const/4 p2, 0x1

    aput-object p1, p3, p2

    invoke-static {p3}, Lcom/ironsource/sdk/utils/SDKUtils;->mergeHashMaps([Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 344
    sget-object p2, Lcom/ironsource/t8$e;->b:Lcom/ironsource/t8$e;

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, p2, p3}, Lcom/ironsource/sdk/controller/v;->a(Lcom/ironsource/t8$e;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 345
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->i(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ironsource/Xc;)V
    .locals 1

    .line 619
    iput-object p1, p0, Lcom/ironsource/sdk/controller/v;->c0:Lcom/ironsource/Xc;

    .line 620
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    invoke-virtual {v0, p1}, Lcom/ironsource/na;->a(Lcom/ironsource/Xc;)V

    return-void
.end method

.method public a(Lcom/ironsource/a1;)V
    .locals 10

    const-string v0, "restoreState(state:"

    .line 649
    iget-object v1, p0, Lcom/ironsource/sdk/controller/v;->F:Ljava/lang/Object;

    monitor-enter v1

    .line 652
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/a1;->j()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/ironsource/sdk/controller/v;->i:Z

    if-eqz v2, :cond_7

    .line 654
    iget-object v2, p0, Lcom/ironsource/sdk/controller/v;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-virtual {p1}, Lcom/ironsource/a1;->c()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 662
    sget-object v3, Lcom/ironsource/t8$e;->c:Lcom/ironsource/t8$e;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v0, v4, :cond_0

    .line 663
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->c:Ljava/lang/String;

    const-string v4, "onRVAdClosed()"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-virtual {p1}, Lcom/ironsource/a1;->b()Ljava/lang/String;

    move-result-object v0

    .line 666
    invoke-direct {p0, v3}, Lcom/ironsource/sdk/controller/v;->a(Lcom/ironsource/t8$e;)Lcom/ironsource/v4;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 667
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 668
    invoke-interface {v4, v3, v0}, Lcom/ironsource/v4;->b(Lcom/ironsource/t8$e;Ljava/lang/String;)V

    goto :goto_0

    .line 672
    :cond_0
    sget-object v3, Lcom/ironsource/t8$e;->b:Lcom/ironsource/t8$e;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v0, v4, :cond_1

    .line 673
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->c:Ljava/lang/String;

    const-string v4, "onInterstitialAdClosed()"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-virtual {p1}, Lcom/ironsource/a1;->b()Ljava/lang/String;

    move-result-object v0

    .line 676
    invoke-direct {p0, v3}, Lcom/ironsource/sdk/controller/v;->a(Lcom/ironsource/t8$e;)Lcom/ironsource/v4;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 677
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 678
    invoke-interface {v4, v3, v0}, Lcom/ironsource/v4;->b(Lcom/ironsource/t8$e;Ljava/lang/String;)V

    .line 683
    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Lcom/ironsource/a1;->a(I)V

    const/4 v0, 0x0

    .line 684
    invoke-virtual {p1, v0}, Lcom/ironsource/a1;->f(Ljava/lang/String;)V

    goto :goto_1

    .line 686
    :cond_2
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->c:Ljava/lang/String;

    const-string v2, "No ad was opened"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :goto_1
    invoke-virtual {p1}, Lcom/ironsource/a1;->d()Ljava/lang/String;

    move-result-object v0

    .line 693
    invoke-virtual {p1}, Lcom/ironsource/a1;->f()Ljava/lang/String;

    move-result-object v2

    .line 695
    iget-object v3, p0, Lcom/ironsource/sdk/controller/v;->H:Lcom/ironsource/Y4;

    sget-object v4, Lcom/ironsource/t8$e;->b:Lcom/ironsource/t8$e;

    .line 696
    invoke-virtual {v3, v4}, Lcom/ironsource/Y4;->a(Lcom/ironsource/t8$e;)Ljava/util/Collection;

    move-result-object v3

    .line 698
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/X4;

    .line 699
    invoke-virtual {v4}, Lcom/ironsource/X4;->e()I

    move-result v6

    if-ne v6, v5, :cond_3

    .line 700
    iget-object v5, p0, Lcom/ironsource/sdk/controller/v;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initInterstitial(appKey:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", userId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", demandSource:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 707
    invoke-virtual {v4}, Lcom/ironsource/X4;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 708
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v5, p0, Lcom/ironsource/sdk/controller/v;->z:Lcom/ironsource/x4;

    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/X4;Lcom/ironsource/x4;)V

    goto :goto_2

    .line 723
    :cond_4
    invoke-virtual {p1}, Lcom/ironsource/a1;->g()Ljava/lang/String;

    move-result-object v0

    .line 724
    invoke-virtual {p1}, Lcom/ironsource/a1;->h()Ljava/lang/String;

    move-result-object v2

    .line 726
    iget-object v3, p0, Lcom/ironsource/sdk/controller/v;->H:Lcom/ironsource/Y4;

    sget-object v4, Lcom/ironsource/t8$e;->c:Lcom/ironsource/t8$e;

    invoke-virtual {v3, v4}, Lcom/ironsource/Y4;->a(Lcom/ironsource/t8$e;)Ljava/util/Collection;

    move-result-object v3

    .line 728
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/X4;

    .line 729
    invoke-virtual {v4}, Lcom/ironsource/X4;->e()I

    move-result v6

    if-ne v6, v5, :cond_5

    .line 730
    invoke-virtual {v4}, Lcom/ironsource/X4;->f()Ljava/lang/String;

    move-result-object v6

    .line 731
    iget-object v7, p0, Lcom/ironsource/sdk/controller/v;->c:Ljava/lang/String;

    const-string v8, "onRVNoMoreOffers()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v7, p0, Lcom/ironsource/sdk/controller/v;->y:Lcom/ironsource/y4;

    invoke-interface {v7, v6}, Lcom/ironsource/y4;->c(Ljava/lang/String;)V

    .line 733
    iget-object v7, p0, Lcom/ironsource/sdk/controller/v;->c:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initRewardedVideo(appKey:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", userId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", demandSource:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v6, p0, Lcom/ironsource/sdk/controller/v;->y:Lcom/ironsource/y4;

    invoke-virtual {p0, v0, v2, v4, v6}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/X4;Lcom/ironsource/y4;)V

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    .line 746
    invoke-virtual {p1, v0}, Lcom/ironsource/a1;->a(Z)V

    .line 749
    :cond_7
    iput-object p1, p0, Lcom/ironsource/sdk/controller/v;->E:Lcom/ironsource/a1;

    .line 750
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/ironsource/sdk/controller/a;)V
    .locals 1

    .line 48
    iput-object p1, p0, Lcom/ironsource/sdk/controller/v;->M:Lcom/ironsource/sdk/controller/a;

    .line 49
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/v;->p()Lcom/ironsource/dh;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/controller/a;->a(Lcom/ironsource/dh;)V

    return-void
.end method

.method public a(Lcom/ironsource/sdk/controller/f$c;Lcom/ironsource/sdk/controller/l$a;)V
    .locals 1

    .line 385
    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/f$c;->e()Ljava/lang/String;

    move-result-object p2

    .line 386
    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/f$c;->h()Ljava/lang/String;

    move-result-object p1

    .line 387
    const-string v0, "onReceivedMessage"

    invoke-direct {p0, p2, p1, v0, v0}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 392
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->i(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ironsource/sdk/controller/i;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/ironsource/sdk/controller/v;->L:Lcom/ironsource/sdk/controller/i;

    return-void
.end method

.method public a(Lcom/ironsource/sdk/controller/j;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/ironsource/sdk/controller/v;->N:Lcom/ironsource/sdk/controller/j;

    return-void
.end method

.method public a(Lcom/ironsource/sdk/controller/o;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/ironsource/sdk/controller/v;->I:Lcom/ironsource/sdk/controller/o;

    return-void
.end method

.method public a(Lcom/ironsource/sdk/controller/q;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/ironsource/sdk/controller/v;->J:Lcom/ironsource/sdk/controller/q;

    return-void
.end method

.method public a(Lcom/ironsource/sdk/controller/u;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/ironsource/sdk/controller/v;->K:Lcom/ironsource/sdk/controller/u;

    return-void
.end method

.method public a(Lcom/ironsource/sdk/controller/v$v;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/ironsource/sdk/controller/v;->w:Lcom/ironsource/sdk/controller/v$v;

    return-void
.end method

.method public a(Lcom/ironsource/t1;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/ironsource/sdk/controller/v;->O:Lcom/ironsource/t1;

    return-void
.end method

.method a(Lcom/ironsource/t8$e;Ljava/lang/String;)V
    .locals 1

    .line 648
    new-instance v0, Lcom/ironsource/sdk/controller/v$f;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/sdk/controller/v$f;-><init>(Lcom/ironsource/sdk/controller/v;Lcom/ironsource/t8$e;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/v;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(Ljava/lang/Runnable;)V
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->a:Lcom/ironsource/V7;

    if-eqz v0, :cond_0

    .line 752
    invoke-virtual {v0, p1}, Lcom/ironsource/V7;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ironsource/x4;)V
    .locals 2

    .line 295
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 296
    const-string v0, "demandSourceName"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-static {p2}, Lcom/ironsource/sdk/utils/SDKUtils;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 299
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->E:Lcom/ironsource/a1;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/a1;->d(Ljava/lang/String;Z)V

    .line 302
    const-string p1, "onLoadInterstitialSuccess"

    const-string v0, "onLoadInterstitialFail"

    const-string v1, "loadInterstitial"

    invoke-direct {p0, v1, p2, p1, v0}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 307
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->i(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/X4;Lcom/ironsource/w4;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/ironsource/sdk/controller/v;->f:Ljava/lang/String;

    .line 350
    iput-object p2, p0, Lcom/ironsource/sdk/controller/v;->g:Ljava/lang/String;

    .line 352
    iput-object p4, p0, Lcom/ironsource/sdk/controller/v;->A:Lcom/ironsource/w4;

    .line 354
    sget-object p2, Lcom/ironsource/t8$e;->a:Lcom/ironsource/t8$e;

    new-instance p4, Lcom/ironsource/sdk/controller/v$m;

    invoke-direct {p4, p0}, Lcom/ironsource/sdk/controller/v$m;-><init>(Lcom/ironsource/sdk/controller/v;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;Lcom/ironsource/t8$e;Lcom/ironsource/X4;Lcom/ironsource/sdk/controller/v$t;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/X4;Lcom/ironsource/x4;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/ironsource/sdk/controller/v;->f:Ljava/lang/String;

    .line 287
    iput-object p2, p0, Lcom/ironsource/sdk/controller/v;->g:Ljava/lang/String;

    .line 288
    iput-object p4, p0, Lcom/ironsource/sdk/controller/v;->z:Lcom/ironsource/x4;

    .line 291
    iget-object p2, p0, Lcom/ironsource/sdk/controller/v;->E:Lcom/ironsource/a1;

    invoke-virtual {p2, p1}, Lcom/ironsource/a1;->g(Ljava/lang/String;)V

    .line 292
    iget-object p1, p0, Lcom/ironsource/sdk/controller/v;->E:Lcom/ironsource/a1;

    iget-object p2, p0, Lcom/ironsource/sdk/controller/v;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ironsource/a1;->h(Ljava/lang/String;)V

    .line 294
    iget-object p1, p0, Lcom/ironsource/sdk/controller/v;->f:Ljava/lang/String;

    sget-object p2, Lcom/ironsource/t8$e;->b:Lcom/ironsource/t8$e;

    new-instance p4, Lcom/ironsource/sdk/controller/v$l;

    invoke-direct {p4, p0}, Lcom/ironsource/sdk/controller/v$l;-><init>(Lcom/ironsource/sdk/controller/v;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;Lcom/ironsource/t8$e;Lcom/ironsource/X4;Lcom/ironsource/sdk/controller/v$t;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/X4;Lcom/ironsource/y4;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/ironsource/sdk/controller/v;->f:Ljava/lang/String;

    .line 280
    iput-object p2, p0, Lcom/ironsource/sdk/controller/v;->g:Ljava/lang/String;

    .line 281
    iput-object p4, p0, Lcom/ironsource/sdk/controller/v;->y:Lcom/ironsource/y4;

    .line 282
    iget-object p4, p0, Lcom/ironsource/sdk/controller/v;->E:Lcom/ironsource/a1;

    invoke-virtual {p4, p1}, Lcom/ironsource/a1;->i(Ljava/lang/String;)V

    .line 283
    iget-object p4, p0, Lcom/ironsource/sdk/controller/v;->E:Lcom/ironsource/a1;

    invoke-virtual {p4, p2}, Lcom/ironsource/a1;->j(Ljava/lang/String;)V

    .line 285
    sget-object p2, Lcom/ironsource/t8$e;->c:Lcom/ironsource/t8$e;

    new-instance p4, Lcom/ironsource/sdk/controller/v$k;

    invoke-direct {p4, p0}, Lcom/ironsource/sdk/controller/v$k;-><init>(Lcom/ironsource/sdk/controller/v;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;Lcom/ironsource/t8$e;Lcom/ironsource/X4;Lcom/ironsource/sdk/controller/v$t;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 466
    iput-object p1, p0, Lcom/ironsource/sdk/controller/v;->T:Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/ironsource/w4;)V
    .locals 2

    .line 377
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 379
    const-string p2, "onLoadBannerSuccess"

    const-string v0, "onLoadBannerFail"

    const-string v1, "loadBanner"

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 384
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->i(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/ironsource/x4;)V
    .locals 0

    .line 340
    sget-object p2, Lcom/ironsource/t8$e;->b:Lcom/ironsource/t8$e;

    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/v;->a(Lcom/ironsource/t8$e;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 341
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->i(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/ironsource/y4;)V
    .locals 0

    .line 464
    sget-object p2, Lcom/ironsource/t8$e;->c:Lcom/ironsource/t8$e;

    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/v;->a(Lcom/ironsource/t8$e;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 465
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->i(Ljava/lang/String;)V

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 11

    const/4 v8, 0x0

    .line 467
    const-string v9, "isViewable"

    const-string v1, "changeReason"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v10, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 478
    const-string p2, "viewableChange"

    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/v;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 479
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->i(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->H:Lcom/ironsource/Y4;

    sget-object v1, Lcom/ironsource/t8$e;->b:Lcom/ironsource/t8$e;

    .line 347
    invoke-virtual {v0, v1, p1}, Lcom/ironsource/Y4;->a(Lcom/ironsource/t8$e;Ljava/lang/String;)Lcom/ironsource/X4;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 348
    invoke-virtual {p1}, Lcom/ironsource/X4;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method b(Lcom/ironsource/sdk/controller/s;)Lcom/ironsource/sdk/controller/r;
    .locals 1

    .line 1
    new-instance v0, Lcom/ironsource/sdk/controller/r;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/controller/r;-><init>(Lcom/ironsource/sdk/controller/s;)V

    return-object v0
.end method

.method public b()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/v;->X:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->W:Lcom/ironsource/n4;

    invoke-virtual {v0}, Lcom/ironsource/n4;->b()V

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/ironsource/v8;

    invoke-direct {v0}, Lcom/ironsource/v8;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/ironsource/sdk/controller/v;->C:Lcom/ironsource/sdk/controller/d;

    invoke-virtual {v1, v0}, Lcom/ironsource/sdk/controller/d;->a(Lcom/ironsource/v8;)V

    .line 8
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->C:Lcom/ironsource/sdk/controller/d;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/d;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/v;->a(I)V

    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 11
    sput p1, Lcom/ironsource/sdk/controller/v;->e0:I

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .line 60
    new-instance v0, Lcom/ironsource/sdk/controller/v$d;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/sdk/controller/v$d;-><init>(Lcom/ironsource/sdk/controller/v;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcom/ironsource/X4;)V
    .locals 2

    .line 13
    invoke-virtual {p1}, Lcom/ironsource/X4;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 16
    const-string v1, "destroyInterstitial"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/sdk/controller/v;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/v;->i(Ljava/lang/String;)V

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->H:Lcom/ironsource/Y4;

    sget-object v1, Lcom/ironsource/t8$e;->b:Lcom/ironsource/t8$e;

    invoke-virtual {p1}, Lcom/ironsource/X4;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/Y4;->b(Lcom/ironsource/t8$e;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/ironsource/X4;Ljava/util/Map;Lcom/ironsource/x4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/X4;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/x4;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/v;->a(Lcom/ironsource/X4;Ljava/util/Map;)V

    return-void
.end method

.method b(Ljava/lang/Runnable;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->a:Lcom/ironsource/V7;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0, p1}, Lcom/ironsource/V7;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 29
    :try_start_0
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/controller/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 30
    const-string v2, "file"

    const-string v4, "path"

    const-string v6, "errMsg"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v7, p3

    .line 31
    :try_start_1
    invoke-direct/range {v1 .. v11}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 42
    const-string p2, "assetCachedFailed"

    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/v;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, p0

    :goto_0
    move-object p1, v0

    .line 45
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    const-string v0, "updateConsentInfo"

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/v;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->i(Ljava/lang/String;)V

    return-void
.end method

.method public b(ZLjava/lang/String;)V
    .locals 11

    const/4 v8, 0x0

    .line 46
    const-string v9, "isViewable"

    const-string v1, "webview"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v10, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 57
    const-string p2, "viewableChange"

    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/v;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->i(Ljava/lang/String;)V

    return-void
.end method

.method c(Ljava/lang/Runnable;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->a:Lcom/ironsource/V7;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0, p1}, Lcom/ironsource/V7;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 12

    .line 137
    const-string v0, "forceClose"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/v;->o()V

    :cond_0
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 142
    const-string v2, "action"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v11}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 143
    const-string v0, "engageEnd"

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/v;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->i(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 2
    :try_start_0
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/controller/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3
    const-string v2, "file"

    const-string v4, "path"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v3, p1

    .line 4
    :try_start_1
    invoke-direct/range {v1 .. v11}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 15
    const-string v0, "assetCached"

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/v;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, p0

    move-object v3, p1

    :goto_0
    move-object p1, v0

    .line 18
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p2, p1}, Lcom/ironsource/sdk/controller/v;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "unknown url"

    :cond_0
    move-object v4, p2

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 3
    const-string v1, "errMsg"

    const-string v3, "url"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 16
    const-string p2, "failedToStartStoreActivity"

    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/v;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->i(Ljava/lang/String;)V

    return-void
.end method

.method public d(Lorg/json/JSONObject;)V
    .locals 13

    .line 359
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "device connection info changed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 365
    const-string v3, "connectionInfo"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v12}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 376
    const-string v0, "connectionInfoChanged"

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/v;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 377
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->i(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    const-string v0, "enterBackground"

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/v;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/v;->i(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->E:Lcom/ironsource/a1;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/v;->a(Lcom/ironsource/a1;)V

    return-void
.end method

.method public g()V
    .locals 1

    .line 23
    const-string v0, "enterForeground"

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/v;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/v;->i(Ljava/lang/String;)V

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1
    const-string v1, "lifeCycleEvent"

    const-string v3, "productType"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 12
    const-string p2, "onNativeLifeCycleEvent"

    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/v;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->i(Ljava/lang/String;)V

    return-void
.end method

.method public h()Lcom/ironsource/t8$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/ironsource/t8$c;->a:Lcom/ironsource/t8$c;

    return-object v0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 3

    .line 2
    new-instance v0, Lcom/ironsource/Qe;

    .line 5
    invoke-static {}, Lcom/ironsource/ka;->e()Lcom/ironsource/ka;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/ka;->d()Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-static {}, Lcom/ironsource/sdk/controller/FeaturesManager;->getInstance()Lcom/ironsource/sdk/controller/FeaturesManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/sdk/controller/FeaturesManager;->getFeatureFlagClickCheck()Lcom/ironsource/P3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/P3;->b()Z

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/ironsource/Qe;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 8
    :try_start_0
    invoke-virtual {v0}, Lcom/ironsource/Qe;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/v;->q()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/tg;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 13
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 14
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public j(Ljava/lang/String;)V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1
    const-string v1, "errMsg"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 3
    const-string v1, "inlineStoreActivityFailed"

    invoke-direct {p0, v1, p1}, Lcom/ironsource/sdk/controller/v;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->i(Ljava/lang/String;)V

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1
    const-string v1, "action"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 2
    const-string v1, "nativeNavigationPressed"

    invoke-direct {p0, v1, p1}, Lcom/ironsource/sdk/controller/v;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->i(Ljava/lang/String;)V

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 13

    const-string v0, "device status changed, connection type "

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/sdk/controller/v;->b0:Lcom/ironsource/na;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/Y3;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 7
    iget-object v1, p0, Lcom/ironsource/sdk/controller/v;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {p1}, Lcom/ironsource/y8;->a(Ljava/lang/String;)V

    .line 10
    invoke-static {v6}, Lcom/ironsource/y8;->b(Ljava/lang/String;)V

    .line 11
    const-string v3, "connectionType"

    const-string v5, "rawConnectionType"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    move-object v4, p1

    .line 12
    :try_start_1
    invoke-direct/range {v2 .. v12}, Lcom/ironsource/sdk/controller/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 23
    const-string v0, "deviceStatusChanged"

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/v;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/v;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, p0

    :goto_0
    move-object p1, v0

    .line 26
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 27
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/sdk/controller/v;->x:Ljava/lang/String;

    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/ironsource/sdk/controller/v;->c:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public p()Lcom/ironsource/dh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->Q:Lcom/ironsource/dh;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ironsource/sdk/controller/v$h;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/v$h;-><init>(Lcom/ironsource/sdk/controller/v;)V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/v;->Q:Lcom/ironsource/dh;

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->Q:Lcom/ironsource/dh;

    return-object v0
.end method

.method public q()Landroid/content/Context;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->a0:Lcom/ironsource/e4;

    invoke-virtual {v0}, Lcom/ironsource/e4;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public r()I
    .locals 1

    .line 1
    sget v0, Lcom/ironsource/sdk/controller/v;->e0:I

    return v0
.end method

.method public s()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->v:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->x:Ljava/lang/String;

    return-object v0
.end method

.method public u()Lcom/ironsource/a1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->E:Lcom/ironsource/a1;

    return-object v0
.end method

.method public v()Lcom/ironsource/sdk/controller/v$v;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->w:Lcom/ironsource/sdk/controller/v$v;

    return-object v0
.end method

.method public w()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->j:Lcom/ironsource/sdk/controller/v$q;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/v;->o()V

    .line 8
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->j:Lcom/ironsource/sdk/controller/v$q;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/v$q;->b()Lcom/ironsource/t8$e;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/ironsource/sdk/controller/v;->j:Lcom/ironsource/sdk/controller/v$q;

    invoke-virtual {v1}, Lcom/ironsource/sdk/controller/v$q;->a()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ironsource/sdk/controller/v;->r(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/sdk/controller/v;->a(Lcom/ironsource/t8$e;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->r:Lcom/ironsource/sdk/controller/v$p;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/v$p;->onHideCustomView()V

    return-void
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/v;->s:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public z()V
    .locals 1

    .line 1
    const-string v0, "inlineStoreLaunched"

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/v;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/v;->i(Ljava/lang/String;)V

    return-void
.end method
