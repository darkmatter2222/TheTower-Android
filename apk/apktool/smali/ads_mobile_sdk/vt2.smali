.class public final enum Lads_mobile_sdk/vt2;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$a;


# static fields
.field public static final enum b:Lads_mobile_sdk/vt2;

.field public static final enum c:Lads_mobile_sdk/vt2;

.field public static final enum d:Lads_mobile_sdk/vt2;

.field public static final enum e:Lads_mobile_sdk/vt2;

.field public static final enum f:Lads_mobile_sdk/vt2;

.field public static final enum g:Lads_mobile_sdk/vt2;

.field public static final enum h:Lads_mobile_sdk/vt2;

.field public static final synthetic i:[Lads_mobile_sdk/vt2;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lads_mobile_sdk/vt2;

    const-string v1, "VIOLATION_REASON_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lads_mobile_sdk/vt2;-><init>(Ljava/lang/String;II)V

    .line 5
    new-instance v1, Lads_mobile_sdk/vt2;

    const-string v2, "VIOLATION_REASON_POLLED_IN_CALLBACK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lads_mobile_sdk/vt2;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/vt2;->b:Lads_mobile_sdk/vt2;

    .line 9
    new-instance v2, Lads_mobile_sdk/vt2;

    const-string v3, "VIOLATION_REASON_EXCESSIVE_BUFFER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lads_mobile_sdk/vt2;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lads_mobile_sdk/vt2;->c:Lads_mobile_sdk/vt2;

    .line 13
    new-instance v3, Lads_mobile_sdk/vt2;

    const-string v4, "VIOLATION_REASON_STARTED_OR_STOPPED_IN_FAILED_CALLBACK"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lads_mobile_sdk/vt2;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lads_mobile_sdk/vt2;->d:Lads_mobile_sdk/vt2;

    .line 17
    new-instance v4, Lads_mobile_sdk/vt2;

    const-string v5, "VIOLATION_REASON_EXCESSIVE_AVAILABILITY_CHECKS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lads_mobile_sdk/vt2;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lads_mobile_sdk/vt2;->e:Lads_mobile_sdk/vt2;

    .line 21
    new-instance v5, Lads_mobile_sdk/vt2;

    const-string v6, "VIOLATION_REASON_RAPID_REINITIALIZATION"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lads_mobile_sdk/vt2;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lads_mobile_sdk/vt2;->f:Lads_mobile_sdk/vt2;

    .line 25
    new-instance v6, Lads_mobile_sdk/vt2;

    const-string v7, "VIOLATION_REASON_HELD_TOO_LONG_AFTER_POLL"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lads_mobile_sdk/vt2;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lads_mobile_sdk/vt2;->g:Lads_mobile_sdk/vt2;

    .line 26
    new-instance v7, Lads_mobile_sdk/vt2;

    const/4 v8, 0x7

    const/4 v9, -0x1

    const-string v10, "UNRECOGNIZED"

    invoke-direct {v7, v10, v8, v9}, Lads_mobile_sdk/vt2;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lads_mobile_sdk/vt2;->h:Lads_mobile_sdk/vt2;

    .line 27
    filled-new-array/range {v0 .. v7}, [Lads_mobile_sdk/vt2;

    move-result-object v0

    .line 28
    sput-object v0, Lads_mobile_sdk/vt2;->i:[Lads_mobile_sdk/vt2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 161
    iput p3, p0, Lads_mobile_sdk/vt2;->a:I

    return-void
.end method

.method public static values()[Lads_mobile_sdk/vt2;
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/vt2;->i:[Lads_mobile_sdk/vt2;

    invoke-virtual {v0}, [Lads_mobile_sdk/vt2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/vt2;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 90
    sget-object v0, Lads_mobile_sdk/vt2;->h:Lads_mobile_sdk/vt2;

    if-ne p0, v0, :cond_0

    .line 91
    invoke-static {}, Lads_mobile_sdk/yh1;->a()I

    move-result v0

    return v0

    .line 93
    :cond_0
    iget v0, p0, Lads_mobile_sdk/vt2;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    const-class v1, Lads_mobile_sdk/vt2;

    const/16 v2, 0x40

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/sf;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 297
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 298
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    sget-object v1, Lads_mobile_sdk/vt2;->h:Lads_mobile_sdk/vt2;

    if-eq p0, v1, :cond_0

    .line 301
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lads_mobile_sdk/vt2;->getNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    :cond_0
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 304
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
