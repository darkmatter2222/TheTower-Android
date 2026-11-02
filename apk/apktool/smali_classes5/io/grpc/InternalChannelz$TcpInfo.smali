.class public final Lio/grpc/InternalChannelz$TcpInfo;
.super Ljava/lang/Object;
.source "InternalChannelz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/InternalChannelz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TcpInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/InternalChannelz$TcpInfo$Builder;
    }
.end annotation


# instance fields
.field public final advmss:I

.field public final ato:I

.field public final backoff:I

.field public final caState:I

.field public final fackets:I

.field public final lastAckRecv:I

.field public final lastAckSent:I

.field public final lastDataRecv:I

.field public final lastDataSent:I

.field public final lost:I

.field public final options:I

.field public final pmtu:I

.field public final probes:I

.field public final rcvMss:I

.field public final rcvSsthresh:I

.field public final rcvWscale:I

.field public final reordering:I

.field public final retrans:I

.field public final retransmits:I

.field public final rto:I

.field public final rtt:I

.field public final rttvar:I

.field public final sacked:I

.field public final sndCwnd:I

.field public final sndMss:I

.field public final sndSsthresh:I

.field public final sndWscale:I

.field public final state:I

.field public final unacked:I


# direct methods
.method constructor <init>(IIIIIIIIIIIIIIIIIIIIIIIIIIIII)V
    .locals 0

    .line 765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 766
    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo;->state:I

    .line 767
    iput p2, p0, Lio/grpc/InternalChannelz$TcpInfo;->caState:I

    .line 768
    iput p3, p0, Lio/grpc/InternalChannelz$TcpInfo;->retransmits:I

    .line 769
    iput p4, p0, Lio/grpc/InternalChannelz$TcpInfo;->probes:I

    .line 770
    iput p5, p0, Lio/grpc/InternalChannelz$TcpInfo;->backoff:I

    .line 771
    iput p6, p0, Lio/grpc/InternalChannelz$TcpInfo;->options:I

    .line 772
    iput p7, p0, Lio/grpc/InternalChannelz$TcpInfo;->sndWscale:I

    .line 773
    iput p8, p0, Lio/grpc/InternalChannelz$TcpInfo;->rcvWscale:I

    .line 774
    iput p9, p0, Lio/grpc/InternalChannelz$TcpInfo;->rto:I

    .line 775
    iput p10, p0, Lio/grpc/InternalChannelz$TcpInfo;->ato:I

    .line 776
    iput p11, p0, Lio/grpc/InternalChannelz$TcpInfo;->sndMss:I

    .line 777
    iput p12, p0, Lio/grpc/InternalChannelz$TcpInfo;->rcvMss:I

    .line 778
    iput p13, p0, Lio/grpc/InternalChannelz$TcpInfo;->unacked:I

    .line 779
    iput p14, p0, Lio/grpc/InternalChannelz$TcpInfo;->sacked:I

    .line 780
    iput p15, p0, Lio/grpc/InternalChannelz$TcpInfo;->lost:I

    move/from16 p1, p16

    .line 781
    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo;->retrans:I

    move/from16 p1, p17

    .line 782
    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo;->fackets:I

    move/from16 p1, p18

    .line 783
    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo;->lastDataSent:I

    move/from16 p1, p19

    .line 784
    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo;->lastAckSent:I

    move/from16 p1, p20

    .line 785
    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo;->lastDataRecv:I

    move/from16 p1, p21

    .line 786
    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo;->lastAckRecv:I

    move/from16 p1, p22

    .line 787
    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo;->pmtu:I

    move/from16 p1, p23

    .line 788
    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo;->rcvSsthresh:I

    move/from16 p1, p24

    .line 789
    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo;->rtt:I

    move/from16 p1, p25

    .line 790
    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo;->rttvar:I

    move/from16 p1, p26

    .line 791
    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo;->sndSsthresh:I

    move/from16 p1, p27

    .line 792
    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo;->sndCwnd:I

    move/from16 p1, p28

    .line 793
    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo;->advmss:I

    move/from16 p1, p29

    .line 794
    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo;->reordering:I

    return-void
.end method
