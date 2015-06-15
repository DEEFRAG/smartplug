.class final Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;
.super Landroid/app/Presentation;
.source "VideoPlayerActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SecondaryDisplay"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/SecondaryDisplay"


# instance fields
.field private mLibVLC:Lorg/videolan/libvlc/LibVLC;

.field private mSubtitlesSurface:Landroid/view/SurfaceView;

.field private mSubtitlesSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurface:Landroid/view/SurfaceView;

.field private mSurfaceFrame:Landroid/widget/FrameLayout;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field final synthetic this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;


# direct methods
.method public constructor <init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Landroid/content/Context;Landroid/view/Display;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "display"    # Landroid/view/Display;

    .prologue
    .line 2374
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .line 2375
    invoke-direct {p0, p2, p3}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 2376
    instance-of v1, p2, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 2377
    check-cast p2, Landroid/app/Activity;

    .end local p2    # "context":Landroid/content/Context;
    invoke-virtual {p0, p2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->setOwnerActivity(Landroid/app/Activity;)V

    .line 2380
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/videolan/vlc/util/VLCInstance;->getLibVlcInstance()Lorg/videolan/libvlc/LibVLC;

    move-result-object v1

    iput-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    :try_end_0
    .catch Lorg/videolan/libvlc/LibVlcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2385
    :goto_0
    return-void

    .line 2381
    :catch_0
    move-exception v0

    .line 2382
    .local v0, "e":Lorg/videolan/libvlc/LibVlcException;
    const-string v1, "VLC/SecondaryDisplay"

    const-string v2, "LibVLC initialisation failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$0(Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;)Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 2367
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->mSurface:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$1(Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;)Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 2368
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->mSubtitlesSurface:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$2(Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;)Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 2369
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$3(Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;)Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 2370
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->mSubtitlesSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$4(Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 2371
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->mSurfaceFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 2389
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    .line 2390
    const v2, 0x7f0300b4

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->setContentView(I)V

    .line 2392
    const v2, 0x7f070316

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    iput-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->mSurface:Landroid/view/SurfaceView;

    .line 2393
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iput-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2394
    const v2, 0x7f070315

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->mSurfaceFrame:Landroid/widget/FrameLayout;

    .line 2395
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSettings:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$42(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "chroma_format"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2396
    .local v1, "chroma":Ljava/lang/String;
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isGingerbreadOrLater()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "YV12"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2397
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const v3, 0x32315659

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 2404
    :goto_0
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .line 2405
    .local v0, "activity":Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
    if-nez v0, :cond_2

    .line 2406
    const-string v2, "VLC/SecondaryDisplay"

    const-string v3, "Failed to get the VideoPlayerActivity instance, secondary display won\'t work"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    :goto_1
    return-void

    .line 2398
    .end local v0    # "activity":Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
    :cond_0
    const-string v2, "RV16"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2399
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_0

    .line 2401
    :cond_1
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_0

    .line 2410
    .restart local v0    # "activity":Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
    :cond_2
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$43(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Landroid/view/SurfaceHolder$Callback;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 2412
    const v2, 0x7f070317

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    iput-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->mSubtitlesSurface:Landroid/view/SurfaceView;

    .line 2413
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->mSubtitlesSurface:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iput-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->mSubtitlesSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2414
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->mSubtitlesSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v5}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 2415
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->mSubtitlesSurface:Landroid/view/SurfaceView;

    invoke-virtual {v2, v5}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 2416
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->mSubtitlesSurfaceHolder:Landroid/view/SurfaceHolder;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitlesSurfaceCallback:Landroid/view/SurfaceHolder$Callback;
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$44(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Landroid/view/SurfaceHolder$Callback;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 2419
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v2}, Lorg/videolan/libvlc/LibVLC;->isDirectRendering()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2420
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->mSubtitlesSurface:Landroid/view/SurfaceView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 2421
    :cond_3
    const-string v2, "VLC/SecondaryDisplay"

    const-string v3, "Secondary display created"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
