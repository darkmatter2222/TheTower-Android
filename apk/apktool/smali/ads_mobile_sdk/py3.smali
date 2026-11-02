.class public final Lads_mobile_sdk/py3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpActiveChangedListener;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/qy3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/qy3;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lads_mobile_sdk/py3;->a:Lads_mobile_sdk/qy3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 4

    .line 72
    iget-object p1, p0, Lads_mobile_sdk/py3;->a:Lads_mobile_sdk/qy3;

    monitor-enter p1

    if-eqz p4, :cond_0

    .line 75
    :try_start_0
    iget-object p2, p0, Lads_mobile_sdk/py3;->a:Lads_mobile_sdk/qy3;

    iget-object p3, p2, Lads_mobile_sdk/qy3;->a:Lads_mobile_sdk/tx;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    .line 77
    iput-wide p3, p2, Lads_mobile_sdk/qy3;->d:J

    .line 78
    iget-object p2, p0, Lads_mobile_sdk/py3;->a:Lads_mobile_sdk/qy3;

    const/4 p3, 0x1

    iput-boolean p3, p2, Lads_mobile_sdk/qy3;->g:Z

    goto :goto_0

    .line 81
    :cond_0
    iget-object p2, p0, Lads_mobile_sdk/py3;->a:Lads_mobile_sdk/qy3;

    iget-object p2, p2, Lads_mobile_sdk/qy3;->a:Lads_mobile_sdk/tx;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 83
    iget-object p4, p0, Lads_mobile_sdk/py3;->a:Lads_mobile_sdk/qy3;

    iget-wide v0, p4, Lads_mobile_sdk/qy3;->e:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    sub-long/2addr p2, v0

    .line 84
    iput-wide p2, p4, Lads_mobile_sdk/qy3;->f:J

    :cond_1
    const/4 p2, 0x0

    .line 86
    iput-boolean p2, p4, Lads_mobile_sdk/qy3;->g:Z

    .line 88
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    .line 89
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
