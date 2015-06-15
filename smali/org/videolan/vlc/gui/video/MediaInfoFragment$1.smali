.class Lorg/videolan/vlc/gui/video/MediaInfoFragment$1;
.super Ljava/lang/Object;
.source "MediaInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/video/MediaInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/video/MediaInfoFragment;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/video/MediaInfoFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment$1;->this$0:Lorg/videolan/vlc/gui/video/MediaInfoFragment;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 112
    const/4 v3, 0x0

    .line 114
    .local v3, "mLibVlc":Lorg/videolan/libvlc/LibVLC;
    :try_start_0
    invoke-static {}, Lorg/videolan/vlc/util/VLCInstance;->getLibVlcInstance()Lorg/videolan/libvlc/LibVLC;
    :try_end_0
    .catch Lorg/videolan/libvlc/LibVlcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 119
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment$1;->this$0:Lorg/videolan/vlc/gui/video/MediaInfoFragment;

    iget-object v7, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment$1;->this$0:Lorg/videolan/vlc/gui/video/MediaInfoFragment;

    # getter for: Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mItem:Lorg/videolan/libvlc/Media;
    invoke-static {v7}, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->access$0(Lorg/videolan/vlc/gui/video/MediaInfoFragment;)Lorg/videolan/libvlc/Media;

    move-result-object v7

    invoke-virtual {v7}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/videolan/libvlc/LibVLC;->readTracksInfo(Ljava/lang/String;)[Lorg/videolan/libvlc/TrackInfo;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->access$1(Lorg/videolan/vlc/gui/video/MediaInfoFragment;[Lorg/videolan/libvlc/TrackInfo;)V

    .line 120
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment$1;->this$0:Lorg/videolan/vlc/gui/video/MediaInfoFragment;

    # getter for: Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->access$2(Lorg/videolan/vlc/gui/video/MediaInfoFragment;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 122
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 123
    .local v4, "screen":Landroid/util/DisplayMetrics;
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment$1;->this$0:Lorg/videolan/vlc/gui/video/MediaInfoFragment;

    invoke-virtual {v6}, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 124
    iget v6, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 125
    .local v5, "width":I
    mul-int/lit8 v6, v5, 0x9

    div-int/lit8 v2, v6, 0x10

    .line 128
    .local v2, "height":I
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment$1;->this$0:Lorg/videolan/vlc/gui/video/MediaInfoFragment;

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->access$3(Lorg/videolan/vlc/gui/video/MediaInfoFragment;Landroid/graphics/Bitmap;)V

    .line 130
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment$1;->this$0:Lorg/videolan/vlc/gui/video/MediaInfoFragment;

    # getter for: Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mItem:Lorg/videolan/libvlc/Media;
    invoke-static {v6}, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->access$0(Lorg/videolan/vlc/gui/video/MediaInfoFragment;)Lorg/videolan/libvlc/Media;

    move-result-object v6

    invoke-virtual {v6}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5, v2}, Lorg/videolan/libvlc/LibVLC;->getThumbnail(Ljava/lang/String;II)[B

    move-result-object v0

    .line 132
    .local v0, "b":[B
    if-nez v0, :cond_0

    .line 139
    .end local v0    # "b":[B
    .end local v2    # "height":I
    .end local v4    # "screen":Landroid/util/DisplayMetrics;
    .end local v5    # "width":I
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Lorg/videolan/libvlc/LibVlcException;
    goto :goto_0

    .line 135
    .end local v1    # "e":Lorg/videolan/libvlc/LibVlcException;
    .restart local v0    # "b":[B
    .restart local v2    # "height":I
    .restart local v4    # "screen":Landroid/util/DisplayMetrics;
    .restart local v5    # "width":I
    :cond_0
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment$1;->this$0:Lorg/videolan/vlc/gui/video/MediaInfoFragment;

    # getter for: Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mImage:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->access$4(Lorg/videolan/vlc/gui/video/MediaInfoFragment;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 136
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment$1;->this$0:Lorg/videolan/vlc/gui/video/MediaInfoFragment;

    iget-object v7, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment$1;->this$0:Lorg/videolan/vlc/gui/video/MediaInfoFragment;

    # getter for: Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mImage:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->access$4(Lorg/videolan/vlc/gui/video/MediaInfoFragment;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7, v5, v2}, Lorg/videolan/vlc/util/BitmapUtil;->cropBorders(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->access$3(Lorg/videolan/vlc/gui/video/MediaInfoFragment;Landroid/graphics/Bitmap;)V

    .line 138
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/MediaInfoFragment$1;->this$0:Lorg/videolan/vlc/gui/video/MediaInfoFragment;

    # getter for: Lorg/videolan/vlc/gui/video/MediaInfoFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->access$2(Lorg/videolan/vlc/gui/video/MediaInfoFragment;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
