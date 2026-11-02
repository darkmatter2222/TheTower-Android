.class public Lcom/ironsource/wg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not defined message for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x194

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    return-object v0

    .line 32
    :pswitch_0
    const-string p0, "failed to create folder for file"

    return-object p0

    .line 33
    :pswitch_1
    const-string p0, "out of memory exception"

    return-object p0

    .line 34
    :pswitch_2
    const-string p0, "file not found exception"

    return-object p0

    .line 35
    :pswitch_3
    const-string p0, "http error code"

    return-object p0

    .line 36
    :pswitch_4
    const-string p0, "uri syntax exception"

    return-object p0

    .line 48
    :pswitch_5
    const-string p0, "io exception"

    return-object p0

    .line 49
    :pswitch_6
    const-string p0, "socket timeout exception"

    return-object p0

    .line 50
    :pswitch_7
    const-string p0, "http empty response"

    return-object p0

    .line 51
    :pswitch_8
    const-string p0, "malformed url exception"

    return-object p0

    .line 55
    :cond_0
    :pswitch_9
    const-string p0, "http not found"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_8
        :pswitch_9
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3f0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3fa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
