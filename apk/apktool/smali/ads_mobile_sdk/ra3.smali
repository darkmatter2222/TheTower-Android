.class public final Lads_mobile_sdk/ra3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lads_mobile_sdk/ra3;


# instance fields
.field public a:Ljava/lang/ref/WeakReference;

.field public b:Z

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lads_mobile_sdk/ra3;

    invoke-direct {v0}, Lads_mobile_sdk/ra3;-><init>()V

    sput-object v0, Lads_mobile_sdk/ra3;->d:Lads_mobile_sdk/ra3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lads_mobile_sdk/ra3;->b:Z

    .line 27
    iput-boolean v0, p0, Lads_mobile_sdk/ra3;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 56
    iget-object v0, p0, Lads_mobile_sdk/ra3;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v0

    .line 73
    iget-boolean v1, p0, Lads_mobile_sdk/ra3;->b:Z

    invoke-virtual {p0, v1, v0}, Lads_mobile_sdk/ra3;->a(ZZ)V

    .line 74
    iput-boolean v0, p0, Lads_mobile_sdk/ra3;->c:Z

    return-void
.end method

.method public final a(ZZ)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 154
    :goto_1
    iget-boolean v3, p0, Lads_mobile_sdk/ra3;->c:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lads_mobile_sdk/ra3;->b:Z

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v0

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v1

    :goto_3
    if-ne v2, v3, :cond_4

    goto :goto_8

    .line 155
    :cond_4
    sget-object v2, Lads_mobile_sdk/q9;->c:Lads_mobile_sdk/q9;

    .line 156
    iget-object v2, v2, Lads_mobile_sdk/q9;->a:Ljava/util/ArrayList;

    .line 157
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    .line 158
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/p9;

    .line 159
    iget-object v3, v3, Lads_mobile_sdk/p9;->d:Lads_mobile_sdk/r9;

    if-nez p2, :cond_7

    if-eqz p1, :cond_6

    goto :goto_5

    :cond_6
    move v4, v0

    goto :goto_6

    :cond_7
    :goto_5
    move v4, v1

    .line 160
    :goto_6
    iget-object v5, v3, Lads_mobile_sdk/r9;->b:Lads_mobile_sdk/uy3;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    if-eqz v4, :cond_8

    .line 161
    const-string v4, "locked"

    goto :goto_7

    :cond_8
    const-string v4, "unlocked"

    .line 162
    :goto_7
    sget-object v5, Lads_mobile_sdk/qd2;->a:Lads_mobile_sdk/qd2;

    .line 163
    iget-object v3, v3, Lads_mobile_sdk/r9;->b:Lads_mobile_sdk/uy3;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    .line 164
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "setDeviceLockState"

    invoke-virtual {v5, v3, v6, v4}, Lads_mobile_sdk/qd2;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    :goto_8
    return-void
.end method
