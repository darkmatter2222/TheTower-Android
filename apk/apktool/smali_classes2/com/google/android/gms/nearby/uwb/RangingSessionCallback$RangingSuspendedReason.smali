.class public interface abstract annotation Lcom/google/android/gms/nearby/uwb/RangingSessionCallback$RangingSuspendedReason;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/uwb/RangingSessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "RangingSuspendedReason"
.end annotation


# static fields
.field public static final FAILED_TO_START:I = 0x2

.field public static final MAX_RANGING_ROUND_RETRY_REACHED:I = 0x5

.field public static final STOPPED_BY_PEER:I = 0x3

.field public static final STOP_RANGING_CALLED:I = 0x4

.field public static final SYSTEM_POLICY:I = 0x6

.field public static final UNKNOWN:I = 0x0

.field public static final WRONG_PARAMETERS:I = 0x1
