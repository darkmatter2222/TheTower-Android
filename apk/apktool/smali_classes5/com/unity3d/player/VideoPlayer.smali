.class public Lcom/unity3d/player/VideoPlayer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field private static final CTRL_CANCELONTOUCH:I = 0x2

.field private static final CTRL_FULL:I = 0x0

.field private static final CTRL_HIDDEN:I = 0x3

.field private static final CTRL_MINIMAL:I = 0x1

.field private static LOG:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "Video"

.field public static final PLAYBACK_DONE:I = 0x3

.field public static final PLAYBACK_FAILED:I = 0x2

.field public static final PLAYBACK_STARTED:I = 0x1

.field public static final PLAYBACK_STARTING:I = 0x0

.field private static final SCALE_ASPECTFILL:I = 0x2

.field private static final SCALE_ASPECTFIT:I = 0x1

.field private static final SCALE_FILL:I = 0x3

.field private static final SCALE_NONE:I


# instance fields
.field private _timeoutThread:Lcom/unity3d/player/V0;

.field private mBufferPercentage:I

.field private final mContext:Landroid/content/Context;

.field private final mControlMode:I

.field private final mFileName:Ljava/lang/String;

.field private final mFrameLayout:Landroid/widget/FrameLayout;

.field private final mIsURL:Z

.field private mIsVideoReadyToBePlayed:Z

.field private mIsVideoSizeKnown:Z

.field private mLatestVideoPosition:I

.field private mMediaController:Landroid/widget/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnBackPressedDispatcher:Lcom/unity3d/player/a/x;

.field private mPlaybackPaused:Z

.field private final mScalingMode:I

.field private volatile mState:I

.field private mStateCallback:Lcom/unity3d/player/U0;

.field private mSurfaceCreated:Z

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private mVideoHeight:I

.field private final mVideoHolder:Landroid/view/SurfaceHolder;

.field private final mVideoLength:J

.field private final mVideoOffset:J

.field private final mVideoView:Landroid/view/SurfaceView;

.field private mVideoWidth:I


# direct methods
.method static bridge synthetic -$$Nest$mchangeState(Lcom/unity3d/player/VideoPlayer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/player/VideoPlayer;->changeState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG()Z
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/VideoPlayer;->LOG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$smLog(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/unity3d/player/VideoPlayer;->Log(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;IIIZJJLcom/unity3d/player/U0;)V
    .locals 2

    .line 109
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/unity3d/player/VideoPlayer;->mIsVideoSizeKnown:Z

    .line 84
    iput-boolean v0, p0, Lcom/unity3d/player/VideoPlayer;->mIsVideoReadyToBePlayed:Z

    .line 85
    iput v0, p0, Lcom/unity3d/player/VideoPlayer;->mBufferPercentage:I

    .line 86
    iput-boolean v0, p0, Lcom/unity3d/player/VideoPlayer;->mPlaybackPaused:Z

    .line 87
    iput v0, p0, Lcom/unity3d/player/VideoPlayer;->mLatestVideoPosition:I

    .line 88
    iput-boolean v0, p0, Lcom/unity3d/player/VideoPlayer;->mSurfaceCreated:Z

    const/4 v1, 0x0

    .line 89
    iput-object v1, p0, Lcom/unity3d/player/VideoPlayer;->mOnBackPressedDispatcher:Lcom/unity3d/player/a/x;

    .line 100
    iput v0, p0, Lcom/unity3d/player/VideoPlayer;->mState:I

    .line 110
    iput-object p12, p0, Lcom/unity3d/player/VideoPlayer;->mStateCallback:Lcom/unity3d/player/U0;

    .line 111
    iput-object p1, p0, Lcom/unity3d/player/VideoPlayer;->mContext:Landroid/content/Context;

    .line 112
    iput-object p0, p0, Lcom/unity3d/player/VideoPlayer;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 113
    new-instance p12, Landroid/view/SurfaceView;

    invoke-direct {p12, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p12, p0, Lcom/unity3d/player/VideoPlayer;->mVideoView:Landroid/view/SurfaceView;

    .line 114
    invoke-virtual {p12}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/player/VideoPlayer;->mVideoHolder:Landroid/view/SurfaceHolder;

    .line 115
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 116
    invoke-virtual {p0, p4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 117
    invoke-virtual {p0, p12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 119
    iput-object p3, p0, Lcom/unity3d/player/VideoPlayer;->mFileName:Ljava/lang/String;

    .line 120
    iput p5, p0, Lcom/unity3d/player/VideoPlayer;->mControlMode:I

    .line 121
    iput p6, p0, Lcom/unity3d/player/VideoPlayer;->mScalingMode:I

    .line 122
    iput-boolean p7, p0, Lcom/unity3d/player/VideoPlayer;->mIsURL:Z

    .line 123
    iput-wide p8, p0, Lcom/unity3d/player/VideoPlayer;->mVideoOffset:J

    .line 124
    iput-wide p10, p0, Lcom/unity3d/player/VideoPlayer;->mVideoLength:J

    .line 126
    sget-boolean p1, Lcom/unity3d/player/VideoPlayer;->LOG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p12, "fileName: "

    invoke-direct {p1, p12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/VideoPlayer;->Log(Ljava/lang/String;)V

    .line 127
    :cond_0
    sget-boolean p1, Lcom/unity3d/player/VideoPlayer;->LOG:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "backgroundColor: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/VideoPlayer;->Log(Ljava/lang/String;)V

    .line 128
    :cond_1
    sget-boolean p1, Lcom/unity3d/player/VideoPlayer;->LOG:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "controlMode: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/VideoPlayer;->Log(Ljava/lang/String;)V

    .line 129
    :cond_2
    sget-boolean p1, Lcom/unity3d/player/VideoPlayer;->LOG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "scalingMode: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/VideoPlayer;->Log(Ljava/lang/String;)V

    .line 130
    :cond_3
    sget-boolean p1, Lcom/unity3d/player/VideoPlayer;->LOG:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "isURL: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/VideoPlayer;->Log(Ljava/lang/String;)V

    .line 131
    :cond_4
    sget-boolean p1, Lcom/unity3d/player/VideoPlayer;->LOG:Z

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "videoOffset: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p8, p9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/VideoPlayer;->Log(Ljava/lang/String;)V

    .line 132
    :cond_5
    sget-boolean p1, Lcom/unity3d/player/VideoPlayer;->LOG:Z

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "videoLength: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p10, p11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/VideoPlayer;->Log(Ljava/lang/String;)V

    :cond_6
    const/4 p1, 0x1

    .line 134
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 135
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 137
    new-instance p1, Lcom/unity3d/player/T0;

    invoke-direct {p1, p0}, Lcom/unity3d/player/T0;-><init>(Lcom/unity3d/player/VideoPlayer;)V

    .line 144
    invoke-virtual {p2}, Lcom/unity3d/player/UnityPlayer;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const p3, 0xf4240

    .line 143
    invoke-static {p2, p3, p1}, Lcom/unity3d/player/q;->a(Ljava/lang/Object;ILjava/lang/Runnable;)Lcom/unity3d/player/a/x;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/player/VideoPlayer;->mOnBackPressedDispatcher:Lcom/unity3d/player/a/x;

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoPlayer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Video"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private changeState(I)V
    .locals 3

    .line 155
    iput p1, p0, Lcom/unity3d/player/VideoPlayer;->mState:I

    .line 156
    iget-object p1, p0, Lcom/unity3d/player/VideoPlayer;->mStateCallback:Lcom/unity3d/player/U0;

    if-eqz p1, :cond_2

    .line 157
    iget v0, p0, Lcom/unity3d/player/VideoPlayer;->mState:I

    check-cast p1, Lcom/unity3d/player/X0;

    .line 60
    iget-object v1, p1, Lcom/unity3d/player/X0;->a:Lcom/unity3d/player/Y0;

    iget-object v1, v1, Lcom/unity3d/player/Y0;->h:Lcom/unity3d/player/c1;

    iget-object v1, v1, Lcom/unity3d/player/c1;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 61
    iget-object v1, p1, Lcom/unity3d/player/X0;->a:Lcom/unity3d/player/Y0;

    iget-object v1, v1, Lcom/unity3d/player/Y0;->h:Lcom/unity3d/player/c1;

    iput v0, v1, Lcom/unity3d/player/c1;->g:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 63
    iget-boolean v2, v1, Lcom/unity3d/player/c1;->i:Z

    if-eqz v2, :cond_0

    .line 65
    new-instance v2, Lcom/unity3d/player/W0;

    invoke-direct {v2, p1}, Lcom/unity3d/player/W0;-><init>(Lcom/unity3d/player/X0;)V

    invoke-virtual {v1, v2}, Lcom/unity3d/player/c1;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p1, Lcom/unity3d/player/X0;->a:Lcom/unity3d/player/Y0;

    iget-object v0, v0, Lcom/unity3d/player/Y0;->h:Lcom/unity3d/player/c1;

    iget-object v0, v0, Lcom/unity3d/player/c1;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 74
    :cond_1
    iget-object p1, p1, Lcom/unity3d/player/X0;->a:Lcom/unity3d/player/Y0;

    iget-object p1, p1, Lcom/unity3d/player/Y0;->h:Lcom/unity3d/player/c1;

    iget-object p1, p1, Lcom/unity3d/player/c1;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    return-void
.end method

.method private logUsedInTests(Ljava/lang/String;)V
    .locals 1

    .line 182
    sget-boolean v0, Lcom/unity3d/player/VideoPlayer;->LOG:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/unity3d/player/VideoPlayer;->Log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private pauseMediaPlayer()V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/unity3d/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/unity3d/player/VideoPlayer;->mLatestVideoPosition:I

    .line 218
    iget-object v0, p0, Lcom/unity3d/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 219
    const-string v0, "pauseMediaPlayer"

    invoke-direct {p0, v0}, Lcom/unity3d/player/VideoPlayer;->logUsedInTests(Ljava/lang/String;)V

    return-void
.end method

.method private playVideo()V
    .locals 8

    .line 225
    iget-object v0, p0, Lcom/unity3d/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 227
    iget-object v1, p0, Lcom/unity3d/player/VideoPlayer;->mVideoHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 228
    iget-boolean v0, p0, Lcom/unity3d/player/VideoPlayer;->mPlaybackPaused:Z

    if-nez v0, :cond_5

    .line 230
    sget-boolean v0, Lcom/unity3d/player/VideoPlayer;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "Resuming playback"

    invoke-static {v0}, Lcom/unity3d/player/VideoPlayer;->Log(Ljava/lang/String;)V

    .line 231
    :cond_0
    invoke-direct {p0}, Lcom/unity3d/player/VideoPlayer;->startMediaPlayer()V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 235
    invoke-direct {p0, v0}, Lcom/unity3d/player/VideoPlayer;->changeState(I)V

    .line 237
    invoke-virtual {p0}, Lcom/unity3d/player/VideoPlayer;->doCleanUp()V

    .line 240
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/unity3d/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 242
    iget-boolean v1, p0, Lcom/unity3d/player/VideoPlayer;->mIsURL:Z

    if-eqz v1, :cond_2

    .line 244
    iget-object v1, p0, Lcom/unity3d/player/VideoPlayer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/unity3d/player/VideoPlayer;->mFileName:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 246
    :cond_2
    iget-wide v0, p0, Lcom/unity3d/player/VideoPlayer;->mVideoLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 248
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/unity3d/player/VideoPlayer;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 249
    iget-object v2, p0, Lcom/unity3d/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    iget-wide v4, p0, Lcom/unity3d/player/VideoPlayer;->mVideoOffset:J

    iget-wide v6, p0, Lcom/unity3d/player/VideoPlayer;->mVideoLength:J

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 250
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 254
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 257
    :try_start_1
    iget-object v1, p0, Lcom/unity3d/player/VideoPlayer;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/unity3d/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 259
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 263
    :catch_0
    :try_start_2
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/unity3d/player/VideoPlayer;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/unity3d/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 265
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 269
    :goto_0
    iget-object v0, p0, Lcom/unity3d/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/unity3d/player/VideoPlayer;->mVideoHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 270
    iget-object v0, p0, Lcom/unity3d/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 271
    iget-object v0, p0, Lcom/unity3d/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 272
    iget-object v0, p0, Lcom/unity3d/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 273
    iget-object v0, p0, Lcom/unity3d/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 274
    iget-object v0, p0, Lcom/unity3d/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 275
    iget-object v0, p0, Lcom/unity3d/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 277
    invoke-virtual {v2, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x3

    .line 278
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 279
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 275
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 280
    iget-object v0, p0, Lcom/unity3d/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 282
    new-instance v0, Lcom/unity3d/player/V0;

    invoke-direct {v0, p0}, Lcom/unity3d/player/V0;-><init>(Lcom/unity3d/player/VideoPlayer;)V

    iput-object v0, p0, Lcom/unity3d/player/VideoPlayer;->_timeoutThread:Lcom/unity3d/player/V0;

    .line 283
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/unity3d/player/VideoPlayer;->_timeoutThread:Lcom/unity3d/player/V0;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 287
    sget-boolean v1, Lcom/unity3d/player/VideoPlayer;->LOG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/VideoPlayer;->Log(Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x2

    .line 288
    invoke-direct {p0, v0}, Lcom/unity3d/player/VideoPlayer;->changeState(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method private printResumingInformation()V
    .locals 2

    .line 176
    iget v0, p0, Lcom/unity3d/player/VideoPlayer;->mLatestVideoPosition:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "MediaPlayer resume : {latestPosition=%d} {currentPosition=%d}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/player/VideoPlayer;->logUsedInTests(Ljava/lang/String;)V

    return-void
.end method

.method private resumeVideoInPauseMode()V
    .locals 2

    .line 206
    sget-boolean v0, Lcom/unity3d/player/VideoPlayer;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "resumeVideoInPauseMode"

    invoke-static {v0}, Lcom/unity3d/player/VideoPlayer;->Log(Ljava/lang/String;)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/unity3d/player/VideoPlayer;->mSurfaceCreated:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/unity3d/player/VideoPlayer;->mLatestVideoPosition:I

    if-lez v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/unity3d/player/VideoPlayer;->mVideoHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 210
    iget-object v0, p0, Lcom/unity3d/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/unity3d/player/VideoPlayer;->mLatestVideoPosition:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 211
    invoke-direct {p0}, Lcom/unity3d/player/VideoPlayer;->printResumingInformation()V

    :cond_1
    return-void
.end method

.method private startMediaPlayer()V
    .locals 2

    .line 190
    const-string v0, "startMediaPlayer"

    invoke-direct {p0, v0}, Lcom/unity3d/player/VideoPlayer;->logUsedInTests(Ljava/lang/String;)V

    .line 191
    iget v0, p0, Lcom/unity3d/player/VideoPlayer;->mLatestVideoPosition:I

    if-lez v0, :cond_0

    .line 193
    iget-object v1, p0, Lcom/unity3d/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 194
    invoke-direct {p0}, Lcom/unity3d/player/VideoPlayer;->printResumingInformation()V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x0

    .line 197
    iput v0, p0, Lcom/unity3d/player/VideoPlayer;->mLatestVideoPosition:I

    return-void
.end method

.method private startVideoPlayback()V
    .locals 1

    .line 501
    invoke-virtual {p0}, Lcom/unity3d/player/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 503
    invoke-direct {p0, v0}, Lcom/unity3d/player/VideoPlayer;->changeState(I)V

    .line 505
    sget-boolean v0, Lcom/unity3d/player/VideoPlayer;->LOG:Z

    if-eqz v0, :cond_1

    const-string v0, "startVideoPlayback"

    invoke-static {v0}, Lcom/unity3d/player/VideoPlayer;->Log(Ljava/lang/String;)V

    .line 506
    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/player/VideoPlayer;->updateVideoLayout()V

    .line 507
    iget-boolean v0, p0, Lcom/unity3d/player/VideoPlayer;->mPlaybackPaused:Z

    if-nez v0, :cond_2

    .line 508
    invoke-virtual {p0}, Lcom/unity3d/player/VideoPlayer;->start()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cancelOnPrepare()V
    .locals 1

    const/4 v0, 0x2

    .line 322
    invoke-direct {p0, v0}, Lcom/unity3d/player/VideoPlayer;->changeState(I)V

    return-void
.end method

.method protected destroyPlayer()V
    .locals 1

    .line 163
    sget-boolean v0, Lcom/unity3d/player/VideoPlayer;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "destroyPlayer"

    invoke-static {v0}, Lcom/unity3d/player/VideoPlayer;->Log(Ljava/lang/String;)V

    .line 164
    :cond_0
    iget-boolean v0, p0, Lcom/unity3d/player/VideoPlayer;->mPlaybackPaused:Z

    if-nez v0, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/unity3d/player/VideoPlayer;->pause()V

    .line 166
    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/player/VideoPlayer;->doCleanUp()V

    .line 168
    iget-object v0, p0, Lcom/unity3d/player/VideoPlayer;->mOnBackPressedDispatcher:Lcom/unity3d/player/a/x;

    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {v0}, Lcom/unity3d/player/a/x;->unregisterOnBackPressedCallback()V

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lcom/unity3d/player/VideoPlayer;->mOnBackPressedDispatcher:Lcom/unity3d/player/a/x;

    :cond_2
    return-void
.end method

.method protected doCleanUp()V
    .locals 3

    .line 480
    iget-object v0, p0, Lcom/unity3d/player/VideoPlayer;->_timeoutThread:Lcom/unity3d/player/V0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 317
    iput-boolean v2, v0, Lcom/unity3d/player/V0;->b:Z

    .line 483
    iput-object v1, p0, Lcom/unity3d/player/VideoPlayer;->_timeoutThread:Lcom/unity3d/player/V0;

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 488
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 489
    iget-object v0, p0, Lcom/unity3d/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 490
    iput-object v1, p0, Lcom/unity3d/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    const/4 v0, 0x0

    .line 492
    iput v0, p0, Lcom/unity3d/player/VideoPlayer;->mVideoWidth:I

    .line 493
    iput v0, p0, Lcom/unity3d/player/VideoPlayer;->mVideoHeight:I

    .line 495
    iput-boolean v0, p0, Lcom/unity3d/player/VideoPlayer;->mIsVideoReadyToBePlayed:Z

    .line 496
    iput-boolean v0, p0, Lcom/unity3d/player/VideoPlayer;->mIsVideoSizeKnown:Z

    return-void
.end method

.method public exitOnKeypress(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    .line 327
    iget v0, p0, Lcom/unity3d/player/VideoPlayer;->mControlMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 330
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 332
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/unity3d/player/VideoPlayer;->mOnBackPressedDispatcher:Lcom/unity3d/player/a/x;

    .line 48
    iget-object p1, p1, Lcom/unity3d/player/a/x;->a:Lcom/unity3d/player/a/w;

    if-eqz p1, :cond_2

    .line 74
    iget-object p1, p1, Lcom/unity3d/player/a/w;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 75
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public getAudioSessionId()I
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/unity3d/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .line 590
    iget-boolean v0, p0, Lcom/unity3d/player/VideoPlayer;->mIsURL:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/unity3d/player/VideoPlayer;->mBufferPercentage:I

    return v0

    :cond_0
    const/16 v0, 0x64

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/unity3d/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 598
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/unity3d/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 606
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method isPaused()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/unity3d/player/VideoPlayer;->mPlaybackPaused:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 4

    .line 612
    iget-boolean v0, p0, Lcom/unity3d/player/VideoPlayer;->mIsVideoReadyToBePlayed:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/unity3d/player/VideoPlayer;->mIsVideoSizeKnown:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 613
    :goto_0
    iget-object v3, p0, Lcom/unity3d/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v3, :cond_1

    xor-int/2addr v0, v2

    return v0

    .line 615
    :cond_1
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v2
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    .line 378
    sget-boolean p1, Lcom/unity3d/player/VideoPlayer;->LOG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onBufferingUpdate percent:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/VideoPlayer;->Log(Ljava/lang/String;)V

    .line 379
    :cond_0
    iput p2, p0, Lcom/unity3d/player/VideoPlayer;->mBufferPercentage:I

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 387
    sget-boolean p1, Lcom/unity3d/player/VideoPlayer;->LOG:Z

    if-eqz p1, :cond_0

    const-string p1, "onCompletion called"

    invoke-static {p1}, Lcom/unity3d/player/VideoPlayer;->Log(Ljava/lang/String;)V

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/player/VideoPlayer;->destroyPlayer()V

    const/4 p1, 0x3

    .line 389
    invoke-direct {p0, p1}, Lcom/unity3d/player/VideoPlayer;->changeState(I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/unity3d/player/VideoPlayer;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 355
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 341
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/player/VideoPlayer;->exitOnKeypress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/VideoPlayer;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 346
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 414
    sget-boolean p1, Lcom/unity3d/player/VideoPlayer;->LOG:Z

    if-eqz p1, :cond_0

    const-string p1, "onPrepared called"

    invoke-static {p1}, Lcom/unity3d/player/VideoPlayer;->Log(Ljava/lang/String;)V

    .line 416
    :cond_0
    iget-object p1, p0, Lcom/unity3d/player/VideoPlayer;->_timeoutThread:Lcom/unity3d/player/V0;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 317
    iput-boolean v0, p1, Lcom/unity3d/player/V0;->b:Z

    const/4 p1, 0x0

    .line 419
    iput-object p1, p0, Lcom/unity3d/player/VideoPlayer;->_timeoutThread:Lcom/unity3d/player/V0;

    .line 422
    :cond_1
    iget p1, p0, Lcom/unity3d/player/VideoPlayer;->mControlMode:I

    if-eqz p1, :cond_2

    if-ne p1, v0, :cond_4

    .line 423
    :cond_2
    new-instance p1, Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/unity3d/player/VideoPlayer;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unity3d/player/VideoPlayer;->mMediaController:Landroid/widget/MediaController;

    .line 424
    invoke-virtual {p1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 425
    iget-object p1, p0, Lcom/unity3d/player/VideoPlayer;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p1, p0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 426
    iget-object p1, p0, Lcom/unity3d/player/VideoPlayer;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p1, v0}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 52
    sget-boolean p1, Lcom/unity3d/player/PlatformSupport;->RED_VELVET_CAKE_SUPPORT:Z

    if-nez p1, :cond_3

    .line 430
    iget-object p1, p0, Lcom/unity3d/player/VideoPlayer;->mContext:Landroid/content/Context;

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 432
    check-cast p1, Landroid/app/Activity;

    .line 433
    iget-object v1, p0, Lcom/unity3d/player/VideoPlayer;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/MediaController;->setSystemUiVisibility(I)V

    .line 435
    :cond_3
    iget-object p1, p0, Lcom/unity3d/player/VideoPlayer;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p1}, Landroid/widget/MediaController;->show()V

    .line 438
    :cond_4
    iput-boolean v0, p0, Lcom/unity3d/player/VideoPlayer;->mIsVideoReadyToBePlayed:Z

    .line 439
    iget-boolean p1, p0, Lcom/unity3d/player/VideoPlayer;->mIsVideoSizeKnown:Z

    if-eqz p1, :cond_5

    .line 441
    invoke-direct {p0}, Lcom/unity3d/player/VideoPlayer;->startVideoPlayback()V

    :cond_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 361
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 362
    iget v1, p0, Lcom/unity3d/player/VideoPlayer;->mControlMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/unity3d/player/VideoPlayer;->destroyPlayer()V

    const/4 p1, 0x3

    .line 365
    invoke-direct {p0, p1}, Lcom/unity3d/player/VideoPlayer;->changeState(I)V

    const/4 p1, 0x1

    return p1

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/VideoPlayer;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    .line 369
    invoke-virtual {v0, p1}, Landroid/widget/MediaController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 370
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    .line 397
    sget-boolean p1, Lcom/unity3d/player/VideoPlayer;->LOG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onVideoSizeChanged called "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/VideoPlayer;->Log(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 403
    iput-boolean p1, p0, Lcom/unity3d/player/VideoPlayer;->mIsVideoSizeKnown:Z

    .line 404
    iput p2, p0, Lcom/unity3d/player/VideoPlayer;->mVideoWidth:I

    .line 405
    iput p3, p0, Lcom/unity3d/player/VideoPlayer;->mVideoHeight:I

    .line 406
    iget-boolean p1, p0, Lcom/unity3d/player/VideoPlayer;->mIsVideoReadyToBePlayed:Z

    if-eqz p1, :cond_3

    .line 408
    invoke-direct {p0}, Lcom/unity3d/player/VideoPlayer;->startVideoPlayback()V

    return-void

    .line 400
    :cond_2
    :goto_0
    sget-boolean p1, Lcom/unity3d/player/VideoPlayer;->LOG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "invalid video width("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") or height("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/VideoPlayer;->Log(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public pause()V
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/unity3d/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 623
    :cond_0
    iget-boolean v0, p0, Lcom/unity3d/player/VideoPlayer;->mSurfaceCreated:Z

    if-eqz v0, :cond_1

    .line 624
    invoke-direct {p0}, Lcom/unity3d/player/VideoPlayer;->pauseMediaPlayer()V

    :cond_1
    const/4 v0, 0x1

    .line 625
    iput-boolean v0, p0, Lcom/unity3d/player/VideoPlayer;->mPlaybackPaused:Z

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/unity3d/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 633
    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 639
    sget-boolean v0, Lcom/unity3d/player/VideoPlayer;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "Start"

    invoke-static {v0}, Lcom/unity3d/player/VideoPlayer;->Log(Ljava/lang/String;)V

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    return-void

    .line 642
    :cond_1
    iget-boolean v0, p0, Lcom/unity3d/player/VideoPlayer;->mSurfaceCreated:Z

    if-eqz v0, :cond_2

    .line 643
    invoke-direct {p0}, Lcom/unity3d/player/VideoPlayer;->startMediaPlayer()V

    :cond_2
    const/4 v0, 0x0

    .line 644
    iput-boolean v0, p0, Lcom/unity3d/player/VideoPlayer;->mPlaybackPaused:Z

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .line 450
    sget-boolean p1, Lcom/unity3d/player/VideoPlayer;->LOG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "surfaceChanged called "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/VideoPlayer;->Log(Ljava/lang/String;)V

    .line 451
    :cond_0
    iget p1, p0, Lcom/unity3d/player/VideoPlayer;->mSurfaceWidth:I

    if-ne p1, p3, :cond_1

    iget p1, p0, Lcom/unity3d/player/VideoPlayer;->mSurfaceHeight:I

    if-eq p1, p4, :cond_2

    .line 453
    :cond_1
    iput p3, p0, Lcom/unity3d/player/VideoPlayer;->mSurfaceWidth:I

    .line 454
    iput p4, p0, Lcom/unity3d/player/VideoPlayer;->mSurfaceHeight:I

    .line 455
    iget-boolean p1, p0, Lcom/unity3d/player/VideoPlayer;->mSurfaceCreated:Z

    if-eqz p1, :cond_2

    .line 456
    invoke-virtual {p0}, Lcom/unity3d/player/VideoPlayer;->updateVideoLayout()V

    :cond_2
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 470
    sget-boolean p1, Lcom/unity3d/player/VideoPlayer;->LOG:Z

    if-eqz p1, :cond_0

    const-string p1, "surfaceCreated called"

    invoke-static {p1}, Lcom/unity3d/player/VideoPlayer;->Log(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    .line 471
    iput-boolean p1, p0, Lcom/unity3d/player/VideoPlayer;->mSurfaceCreated:Z

    .line 472
    iget-boolean p1, p0, Lcom/unity3d/player/VideoPlayer;->mPlaybackPaused:Z

    if-eqz p1, :cond_1

    .line 473
    invoke-direct {p0}, Lcom/unity3d/player/VideoPlayer;->resumeVideoInPauseMode()V

    return-void

    .line 475
    :cond_1
    invoke-direct {p0}, Lcom/unity3d/player/VideoPlayer;->playVideo()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 463
    sget-boolean p1, Lcom/unity3d/player/VideoPlayer;->LOG:Z

    if-eqz p1, :cond_0

    const-string p1, "surfaceDestroyed called"

    invoke-static {p1}, Lcom/unity3d/player/VideoPlayer;->Log(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 464
    iput-boolean p1, p0, Lcom/unity3d/player/VideoPlayer;->mSurfaceCreated:Z

    return-void
.end method

.method protected updateVideoLayout()V
    .locals 10

    .line 513
    sget-boolean v0, Lcom/unity3d/player/VideoPlayer;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "updateVideoLayout"

    invoke-static {v0}, Lcom/unity3d/player/VideoPlayer;->Log(Ljava/lang/String;)V

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    goto :goto_2

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/VideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unity3d/player/d1;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 520
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_2

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-lez v0, :cond_2

    .line 522
    iput v1, p0, Lcom/unity3d/player/VideoPlayer;->mSurfaceWidth:I

    .line 523
    iput v0, p0, Lcom/unity3d/player/VideoPlayer;->mSurfaceHeight:I

    .line 526
    :cond_2
    iget v0, p0, Lcom/unity3d/player/VideoPlayer;->mSurfaceWidth:I

    .line 527
    iget v1, p0, Lcom/unity3d/player/VideoPlayer;->mSurfaceHeight:I

    .line 529
    iget-boolean v2, p0, Lcom/unity3d/player/VideoPlayer;->mIsVideoSizeKnown:Z

    if-eqz v2, :cond_6

    .line 531
    iget v2, p0, Lcom/unity3d/player/VideoPlayer;->mVideoWidth:I

    int-to-float v3, v2

    iget v4, p0, Lcom/unity3d/player/VideoPlayer;->mVideoHeight:I

    int-to-float v5, v4

    div-float/2addr v3, v5

    int-to-float v5, v0

    int-to-float v6, v1

    div-float v7, v5, v6

    .line 534
    iget v8, p0, Lcom/unity3d/player/VideoPlayer;->mScalingMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    cmpg-float v2, v7, v3

    if-gtz v2, :cond_4

    goto :goto_0

    :cond_3
    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    cmpl-float v2, v7, v3

    if-ltz v2, :cond_4

    :goto_0
    div-float/2addr v5, v3

    float-to-int v1, v5

    goto :goto_1

    :cond_4
    mul-float/2addr v6, v3

    float-to-int v0, v6

    goto :goto_1

    :cond_5
    if-nez v8, :cond_7

    move v0, v2

    move v1, v4

    goto :goto_1

    .line 556
    :cond_6
    sget-boolean v2, Lcom/unity3d/player/VideoPlayer;->LOG:Z

    if-eqz v2, :cond_7

    const-string v2, "updateVideoLayout: Video size is not known yet"

    invoke-static {v2}, Lcom/unity3d/player/VideoPlayer;->Log(Ljava/lang/String;)V

    .line 559
    :cond_7
    :goto_1
    iget v2, p0, Lcom/unity3d/player/VideoPlayer;->mSurfaceWidth:I

    if-ne v2, v0, :cond_9

    iget v2, p0, Lcom/unity3d/player/VideoPlayer;->mSurfaceHeight:I

    if-eq v2, v1, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    return-void

    .line 561
    :cond_9
    :goto_3
    sget-boolean v2, Lcom/unity3d/player/VideoPlayer;->LOG:Z

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "frameWidth = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; frameHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/player/VideoPlayer;->Log(Ljava/lang/String;)V

    .line 562
    :cond_a
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 563
    iget-object v0, p0, Lcom/unity3d/player/VideoPlayer;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/unity3d/player/VideoPlayer;->mVideoView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
