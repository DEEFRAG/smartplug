.class public Lorg/videolan/vlc/Thumbnailer;
.super Ljava/lang/Object;
.source "Thumbnailer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/Thumbnailer"


# instance fields
.field private isStopping:Z

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private final mDensity:F

.field private final mItems:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/videolan/libvlc/Media;",
            ">;"
        }
    .end annotation
.end field

.field private mLibVlc:Lorg/videolan/libvlc/LibVLC;

.field private final mPrefix:Ljava/lang/String;

.field protected mThread:Ljava/lang/Thread;

.field private mVideoGridFragment:Lorg/videolan/vlc/gui/video/VideoGridFragment;

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private totalCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/videolan/vlc/Thumbnailer;->mItems:Ljava/util/Queue;

    .line 54
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/videolan/vlc/Thumbnailer;->isStopping:Z

    .line 55
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lorg/videolan/vlc/Thumbnailer;->lock:Ljava/util/concurrent/locks/Lock;

    .line 56
    iget-object v1, p0, Lorg/videolan/vlc/Thumbnailer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lorg/videolan/vlc/Thumbnailer;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 65
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 66
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 67
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lorg/videolan/vlc/Thumbnailer;->mDensity:F

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/videolan/vlc/Thumbnailer;->mPrefix:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public addJob(Lorg/videolan/libvlc/Media;)V
    .locals 2
    .param p1, "item"    # Lorg/videolan/libvlc/Media;

    .prologue
    .line 111
    invoke-static {p1}, Lorg/videolan/vlc/util/BitmapUtil;->getPictureFromCache(Lorg/videolan/libvlc/Media;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->isPictureParsed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lorg/videolan/vlc/Thumbnailer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 114
    iget-object v0, p0, Lorg/videolan/vlc/Thumbnailer;->mItems:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 115
    iget v0, p0, Lorg/videolan/vlc/Thumbnailer;->totalCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/videolan/vlc/Thumbnailer;->totalCount:I

    .line 116
    iget-object v0, p0, Lorg/videolan/vlc/Thumbnailer;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 117
    iget-object v0, p0, Lorg/videolan/vlc/Thumbnailer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 118
    const-string v0, "VLC/Thumbnailer"

    const-string v1, "Job added!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clearJobs()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/videolan/vlc/Thumbnailer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 101
    iget-object v0, p0, Lorg/videolan/vlc/Thumbnailer;->mItems:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lorg/videolan/vlc/Thumbnailer;->totalCount:I

    .line 103
    iget-object v0, p0, Lorg/videolan/vlc/Thumbnailer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 104
    return-void
.end method

.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 126
    const/4 v1, 0x0

    .line 127
    .local v1, "count":I
    const/4 v7, 0x0

    .line 129
    .local v7, "total":I
    const-string v9, "VLC/Thumbnailer"

    const-string v10, "Thumbnailer started"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_0
    iget-boolean v9, p0, Lorg/videolan/vlc/Thumbnailer;->isStopping:Z

    if-eqz v9, :cond_0

    .line 195
    :goto_1
    invoke-static {}, Lorg/videolan/vlc/gui/MainActivity;->hideProgressBar()V

    .line 196
    invoke-static {}, Lorg/videolan/vlc/gui/MainActivity;->clearTextInfo()V

    .line 197
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/videolan/vlc/Thumbnailer;->mVideoGridFragment:Lorg/videolan/vlc/gui/video/VideoGridFragment;

    .line 198
    const-string v9, "VLC/Thumbnailer"

    const-string v10, "Thumbnailer stopped"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void

    .line 132
    :cond_0
    iget-object v9, p0, Lorg/videolan/vlc/Thumbnailer;->mVideoGridFragment:Lorg/videolan/vlc/gui/video/VideoGridFragment;

    invoke-virtual {v9}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->resetBarrier()V

    .line 133
    iget-object v9, p0, Lorg/videolan/vlc/Thumbnailer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 135
    const/4 v4, 0x0

    .line 136
    .local v4, "interrupted":Z
    :goto_2
    iget-object v9, p0, Lorg/videolan/vlc/Thumbnailer;->mItems:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->size()I

    move-result v9

    if-eqz v9, :cond_1

    .line 148
    :goto_3
    if-eqz v4, :cond_2

    .line 149
    iget-object v9, p0, Lorg/videolan/vlc/Thumbnailer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 138
    :cond_1
    :try_start_0
    invoke-static {}, Lorg/videolan/vlc/gui/MainActivity;->hideProgressBar()V

    .line 139
    invoke-static {}, Lorg/videolan/vlc/gui/MainActivity;->clearTextInfo()V

    .line 140
    const/4 v9, 0x0

    iput v9, p0, Lorg/videolan/vlc/Thumbnailer;->totalCount:I

    .line 141
    iget-object v9, p0, Lorg/videolan/vlc/Thumbnailer;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 142
    :catch_0
    move-exception v2

    .line 143
    .local v2, "e":Ljava/lang/InterruptedException;
    const/4 v4, 0x1

    .line 144
    const-string v9, "VLC/Thumbnailer"

    const-string v10, "interruption probably requested by stop()"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 152
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget v7, p0, Lorg/videolan/vlc/Thumbnailer;->totalCount:I

    .line 153
    iget-object v9, p0, Lorg/videolan/vlc/Thumbnailer;->mItems:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/videolan/libvlc/Media;

    .line 154
    .local v5, "item":Lorg/videolan/libvlc/Media;
    iget-object v9, p0, Lorg/videolan/vlc/Thumbnailer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 156
    invoke-static {}, Lorg/videolan/vlc/gui/MainActivity;->showProgressBar()V

    .line 158
    const-string v9, "%s %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p0, Lorg/videolan/vlc/Thumbnailer;->mPrefix:Ljava/lang/String;

    aput-object v11, v10, v13

    invoke-virtual {v5}, Lorg/videolan/libvlc/Media;->getFileName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1, v7}, Lorg/videolan/vlc/gui/MainActivity;->sendTextInfo(Ljava/lang/String;II)V

    .line 159
    add-int/lit8 v1, v1, 0x1

    .line 161
    const/high16 v9, 0x42f00000    # 120.0f

    iget v10, p0, Lorg/videolan/vlc/Thumbnailer;->mDensity:F

    mul-float/2addr v9, v10

    float-to-int v8, v9

    .line 162
    .local v8, "width":I
    const/high16 v9, 0x42960000    # 75.0f

    iget v10, p0, Lorg/videolan/vlc/Thumbnailer;->mDensity:F

    mul-float/2addr v9, v10

    float-to-int v3, v9

    .line 165
    .local v3, "height":I
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v3, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 167
    .local v6, "thumbnail":Landroid/graphics/Bitmap;
    iget-object v9, p0, Lorg/videolan/vlc/Thumbnailer;->mLibVlc:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v5}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8, v3}, Lorg/videolan/libvlc/LibVLC;->getThumbnail(Ljava/lang/String;II)[B

    move-result-object v0

    .line 169
    .local v0, "b":[B
    if-nez v0, :cond_3

    .line 170
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v12, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {v5, v9}, Lorg/videolan/vlc/MediaDatabase;->setPicture(Lorg/videolan/libvlc/Media;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 174
    :cond_3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 176
    const-string v9, "VLC/Thumbnailer"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Thumbnail created for "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/videolan/libvlc/Media;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static {v5, v6}, Lorg/videolan/vlc/MediaDatabase;->setPicture(Lorg/videolan/libvlc/Media;Landroid/graphics/Bitmap;)V

    .line 180
    iget-object v9, p0, Lorg/videolan/vlc/Thumbnailer;->mVideoGridFragment:Lorg/videolan/vlc/gui/video/VideoGridFragment;

    invoke-virtual {v9, v5}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->setItemToUpdate(Lorg/videolan/libvlc/Media;)V

    .line 184
    :try_start_1
    iget-object v9, p0, Lorg/videolan/vlc/Thumbnailer;->mVideoGridFragment:Lorg/videolan/vlc/gui/video/VideoGridFragment;

    invoke-virtual {v9}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/BrokenBarrierException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 185
    :catch_1
    move-exception v2

    .line 186
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    const-string v9, "VLC/Thumbnailer"

    const-string v10, "interruption probably requested by stop()"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 188
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v2

    .line 189
    .local v2, "e":Ljava/util/concurrent/BrokenBarrierException;
    const-string v9, "VLC/Thumbnailer"

    const-string v10, "Unexpected BrokenBarrierException"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {v2}, Ljava/util/concurrent/BrokenBarrierException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public start(Lorg/videolan/vlc/gui/video/VideoGridFragment;)V
    .locals 3
    .param p1, "videoGridFragment"    # Lorg/videolan/vlc/gui/video/VideoGridFragment;

    .prologue
    .line 72
    iget-object v1, p0, Lorg/videolan/vlc/Thumbnailer;->mLibVlc:Lorg/videolan/libvlc/LibVLC;

    if-nez v1, :cond_0

    .line 74
    :try_start_0
    invoke-static {}, Lorg/videolan/vlc/util/VLCInstance;->getLibVlcInstance()Lorg/videolan/libvlc/LibVLC;

    move-result-object v1

    iput-object v1, p0, Lorg/videolan/vlc/Thumbnailer;->mLibVlc:Lorg/videolan/libvlc/LibVLC;
    :try_end_0
    .catch Lorg/videolan/libvlc/LibVlcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/videolan/vlc/Thumbnailer;->isStopping:Z

    .line 83
    iget-object v1, p0, Lorg/videolan/vlc/Thumbnailer;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/videolan/vlc/Thumbnailer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_2

    .line 84
    :cond_1
    iput-object p1, p0, Lorg/videolan/vlc/Thumbnailer;->mVideoGridFragment:Lorg/videolan/vlc/gui/video/VideoGridFragment;

    .line 85
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/videolan/vlc/Thumbnailer;->mThread:Ljava/lang/Thread;

    .line 86
    iget-object v1, p0, Lorg/videolan/vlc/Thumbnailer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 88
    :cond_2
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Lorg/videolan/libvlc/LibVlcException;
    const-string v1, "VLC/Thumbnailer"

    const-string v2, "Can\'t obtain libvlc instance"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVlcException;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/vlc/Thumbnailer;->isStopping:Z

    .line 92
    iget-object v0, p0, Lorg/videolan/vlc/Thumbnailer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lorg/videolan/vlc/Thumbnailer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 94
    :cond_0
    return-void
.end method
