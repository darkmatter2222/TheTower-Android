.class public final Lads_mobile_sdk/rt2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Lads_mobile_sdk/st2;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 2
    sget-object p0, Lads_mobile_sdk/st2;->c:Lads_mobile_sdk/st2;

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lads_mobile_sdk/st2;->d:Lads_mobile_sdk/st2;

    return-object p0

    .line 4
    :cond_1
    sget-object p0, Lads_mobile_sdk/st2;->c:Lads_mobile_sdk/st2;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Lads_mobile_sdk/st2;->b:Lads_mobile_sdk/st2;

    return-object p0
.end method
