.class public final Lcom/ironsource/M9$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/M9;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/M9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0xce

    if-eq p1, v0, :cond_4

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_3

    const/16 v0, 0x191

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown event code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const p1, 0x14052

    goto/16 :goto_0

    :pswitch_1
    const p1, 0x1417c

    goto :goto_0

    :pswitch_2
    const p1, 0x1417d

    goto :goto_0

    :pswitch_3
    const p1, 0x1424e

    goto :goto_0

    :pswitch_4
    const p1, 0x14244

    goto :goto_0

    :pswitch_5
    const p1, 0x1409d

    goto :goto_0

    :pswitch_6
    const p1, 0x1409c

    goto :goto_0

    :pswitch_7
    const p1, 0x1417e

    goto :goto_0

    :pswitch_8
    const p1, 0x1443c

    goto :goto_0

    :pswitch_9
    const p1, 0x157c2

    goto :goto_0

    :pswitch_a
    const/16 p1, 0x8fc

    goto :goto_0

    :pswitch_b
    const/16 p1, 0x898

    goto :goto_0

    :pswitch_c
    const/16 p1, 0x7d3

    goto :goto_0

    :pswitch_d
    const/16 p1, 0x7d2

    goto :goto_0

    :pswitch_e
    const/16 p1, 0x9cb

    goto :goto_0

    :pswitch_f
    const/16 p1, 0x89c

    goto :goto_0

    :pswitch_10
    const/16 p1, 0x7d6

    goto :goto_0

    :pswitch_11
    const/16 p1, 0x8a2

    goto :goto_0

    :pswitch_12
    const/16 p1, 0x7d5

    goto :goto_0

    :pswitch_13
    const/16 p1, 0x89b

    goto :goto_0

    :cond_0
    const/16 p1, 0x8a4

    goto :goto_0

    :cond_1
    const/16 p1, 0x8a3

    goto :goto_0

    :cond_2
    const/16 p1, 0x899

    goto :goto_0

    :cond_3
    const/16 p1, 0x9c8

    goto :goto_0

    :cond_4
    const/16 p1, 0x9c7

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc9
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x193
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ironsource/M9$c;->a(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
