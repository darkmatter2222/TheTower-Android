.class public final Lads_mobile_sdk/ot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$d$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lads_mobile_sdk/qt;->c:Lads_mobile_sdk/qt;

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lads_mobile_sdk/qt;->b:Lads_mobile_sdk/qt;

    :goto_0
    if-nez p1, :cond_2

    .line 4
    sget-object p1, Lads_mobile_sdk/qt;->b:Lads_mobile_sdk/qt;

    :cond_2
    return-object p1
.end method
