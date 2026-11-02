.class public final Lorg/chromium/net/impl/JavaUrlRequestUtils;
.super Ljava/lang/Object;
.source "JavaUrlRequestUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/impl/JavaUrlRequestUtils$DirectPreventingExecutor;,
        Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;,
        Lorg/chromium/net/impl/JavaUrlRequestUtils$State;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :pswitch_0
    const-string p0, "CANCELLED"

    return-object p0

    .line 72
    :pswitch_1
    const-string p0, "COMPLETE"

    return-object p0

    .line 70
    :pswitch_2
    const-string p0, "ERROR"

    return-object p0

    .line 68
    :pswitch_3
    const-string p0, "READING"

    return-object p0

    .line 66
    :pswitch_4
    const-string p0, "AWAITING_READ"

    return-object p0

    .line 64
    :pswitch_5
    const-string p0, "AWAITING_FOLLOW_REDIRECT"

    return-object p0

    .line 62
    :pswitch_6
    const-string p0, "REDIRECT_RECEIVED"

    return-object p0

    .line 60
    :pswitch_7
    const-string p0, "STARTED"

    return-object p0

    .line 58
    :pswitch_8
    const-string p0, "NOT_STARTED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
