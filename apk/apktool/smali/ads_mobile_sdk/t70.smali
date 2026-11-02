.class public final Lads_mobile_sdk/t70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$d$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lads_mobile_sdk/c80;->g:Lads_mobile_sdk/c80;

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lads_mobile_sdk/c80;->f:Lads_mobile_sdk/c80;

    goto :goto_0

    .line 4
    :cond_2
    sget-object p1, Lads_mobile_sdk/c80;->e:Lads_mobile_sdk/c80;

    goto :goto_0

    .line 5
    :cond_3
    sget-object p1, Lads_mobile_sdk/c80;->d:Lads_mobile_sdk/c80;

    goto :goto_0

    .line 6
    :cond_4
    sget-object p1, Lads_mobile_sdk/c80;->c:Lads_mobile_sdk/c80;

    goto :goto_0

    .line 7
    :cond_5
    sget-object p1, Lads_mobile_sdk/c80;->b:Lads_mobile_sdk/c80;

    :goto_0
    if-nez p1, :cond_6

    .line 8
    sget-object p1, Lads_mobile_sdk/c80;->b:Lads_mobile_sdk/c80;

    :cond_6
    return-object p1
.end method
