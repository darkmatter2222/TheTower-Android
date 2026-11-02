.class public final enum Lads_mobile_sdk/bu2;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lads_mobile_sdk/bu2;

.field public static final enum d:Lads_mobile_sdk/bu2;

.field public static final enum e:Lads_mobile_sdk/bu2;

.field public static final enum f:Lads_mobile_sdk/bu2;

.field public static final enum g:Lads_mobile_sdk/bu2;

.field public static final synthetic h:[Lads_mobile_sdk/bu2;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lads_mobile_sdk/vt2;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lads_mobile_sdk/bu2;

    .line 2
    sget-object v1, Lads_mobile_sdk/hy3;->a:[Lads_mobile_sdk/hy3;

    .line 4
    sget-object v1, Lads_mobile_sdk/vt2;->b:Lads_mobile_sdk/vt2;

    const/4 v2, 0x0

    .line 5
    const-string v3, "pollAd() was called synchronously inside the onAdPreloaded() callback. Call pollAd from an application or UI event instead."

    const-string v4, "POLLED_IN_AD_PRELOADED_CALLBACK"

    invoke-direct {v0, v4, v2, v3, v1}, Lads_mobile_sdk/bu2;-><init>(Ljava/lang/String;ILjava/lang/String;Lads_mobile_sdk/vt2;)V

    sput-object v0, Lads_mobile_sdk/bu2;->c:Lads_mobile_sdk/bu2;

    .line 15
    new-instance v1, Lads_mobile_sdk/bu2;

    .line 18
    sget-object v2, Lads_mobile_sdk/vt2;->d:Lads_mobile_sdk/vt2;

    const/4 v3, 0x1

    .line 19
    const-string v4, "startPreload() or stopPreload() was called synchronously inside the onAdFailedToPreload() callback. Zenith automatically manages retries with exponential backoff; do not restart preloading on failure."

    const-string v5, "STARTED_OR_STOPPED_IN_AD_FAILED_CALLBACK"

    invoke-direct {v1, v5, v3, v4, v2}, Lads_mobile_sdk/bu2;-><init>(Ljava/lang/String;ILjava/lang/String;Lads_mobile_sdk/vt2;)V

    sput-object v1, Lads_mobile_sdk/bu2;->d:Lads_mobile_sdk/bu2;

    .line 29
    new-instance v2, Lads_mobile_sdk/bu2;

    .line 32
    sget-object v3, Lads_mobile_sdk/vt2;->g:Lads_mobile_sdk/vt2;

    const/4 v4, 0x2

    .line 33
    const-string v5, "An ad was polled without being immediately shown. Show polled ads immediately, do not cache a polled ad. If you want to inspect an ad response use the peekAd API instead."

    const-string v6, "HELD_TOO_LONG_AFTER_POLL"

    invoke-direct {v2, v6, v4, v5, v3}, Lads_mobile_sdk/bu2;-><init>(Ljava/lang/String;ILjava/lang/String;Lads_mobile_sdk/vt2;)V

    sput-object v2, Lads_mobile_sdk/bu2;->e:Lads_mobile_sdk/bu2;

    .line 40
    new-instance v3, Lads_mobile_sdk/bu2;

    .line 43
    sget-object v4, Lads_mobile_sdk/vt2;->e:Lads_mobile_sdk/vt2;

    const/4 v5, 0x3

    .line 44
    const-string v6, "Do not call isAdAvailable in a loop. Call isAdAvailable from an application or UI event instead."

    const-string v7, "EXCESSIVE_AVAILABILITY_CHECKS"

    invoke-direct {v3, v7, v5, v6, v4}, Lads_mobile_sdk/bu2;-><init>(Ljava/lang/String;ILjava/lang/String;Lads_mobile_sdk/vt2;)V

    sput-object v3, Lads_mobile_sdk/bu2;->f:Lads_mobile_sdk/bu2;

    .line 54
    new-instance v4, Lads_mobile_sdk/bu2;

    .line 57
    sget-object v5, Lads_mobile_sdk/vt2;->f:Lads_mobile_sdk/vt2;

    const/4 v6, 0x4

    .line 58
    const-string v7, "Frequent start/stop preloading calls detected. Avoid rapid startPreload/stopPreload cycles; initialize preloading once per app lifecycle or user journey."

    const-string v8, "RAPID_REINITIALIZATION"

    invoke-direct {v4, v8, v6, v7, v5}, Lads_mobile_sdk/bu2;-><init>(Ljava/lang/String;ILjava/lang/String;Lads_mobile_sdk/vt2;)V

    .line 65
    new-instance v5, Lads_mobile_sdk/bu2;

    .line 68
    sget-object v6, Lads_mobile_sdk/vt2;->c:Lads_mobile_sdk/vt2;

    const/4 v7, 0x5

    .line 69
    const-string v8, "Buffer size exceeds recommended maximum."

    const-string v9, "EXCESSIVE_BUFFER"

    invoke-direct {v5, v9, v7, v8, v6}, Lads_mobile_sdk/bu2;-><init>(Ljava/lang/String;ILjava/lang/String;Lads_mobile_sdk/vt2;)V

    sput-object v5, Lads_mobile_sdk/bu2;->g:Lads_mobile_sdk/bu2;

    .line 70
    filled-new-array/range {v0 .. v5}, [Lads_mobile_sdk/bu2;

    move-result-object v0

    .line 71
    sput-object v0, Lads_mobile_sdk/bu2;->h:[Lads_mobile_sdk/bu2;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lads_mobile_sdk/vt2;)V
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/hy3;->a:[Lads_mobile_sdk/hy3;

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Lads_mobile_sdk/bu2;->a:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lads_mobile_sdk/bu2;->b:Lads_mobile_sdk/vt2;

    return-void
.end method

.method public static values()[Lads_mobile_sdk/bu2;
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/bu2;->h:[Lads_mobile_sdk/bu2;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/bu2;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "preloadId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lads_mobile_sdk/hy3;->a:[Lads_mobile_sdk/hy3;

    if-eqz p2, :cond_0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 81
    :goto_0
    iget-object v0, p0, Lads_mobile_sdk/bu2;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[GMA Validator WARNING] Violation detected ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") for preload ID \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\': "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
