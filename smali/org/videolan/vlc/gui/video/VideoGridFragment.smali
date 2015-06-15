.class public Lorg/videolan/vlc/gui/video/VideoGridFragment;
.super Lorg/videolan/android/ui/SherlockGridFragment;
.source "VideoGridFragment.java"

# interfaces
.implements Lorg/videolan/vlc/interfaces/ISortable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/video/VideoGridFragment$VideoListHandler;
    }
.end annotation


# static fields
.field protected static final ACTION_SCAN_START:Ljava/lang/String; = "org.videolan.vlc.gui.ScanStart"

.field protected static final ACTION_SCAN_STOP:Ljava/lang/String; = "org.videolan.vlc.gui.ScanStop"

.field private static final GRID_HORIZONTAL_SPACING_DP:I = 0x14

.field private static final GRID_ITEM_WIDTH_DP:I = 0x9c

.field private static final GRID_STRETCH_MODE:I = 0x2

.field private static final GRID_VERTICAL_SPACING_DP:I = 0x14

.field private static final LIST_HORIZONTAL_SPACING_DP:I = 0x0

.field private static final LIST_STRETCH_MODE:I = 0x2

.field private static final LIST_VERTICAL_SPACING_DP:I = 0xa

.field public static final TAG:Ljava/lang/String; = "VLC/VideoListFragment"

.field protected static final UPDATE_ITEM:I


# instance fields
.field private mAnimator:Lorg/videolan/vlc/gui/video/VideoGridAnimator;

.field private mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

.field protected final mBarrier:Ljava/util/concurrent/CyclicBarrier;

.field private mGVFirstVisiblePos:I

.field protected mGridView:Landroid/widget/GridView;

.field protected mGroup:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field protected mItemToUpdate:Lorg/videolan/libvlc/Media;

.field protected mLayoutFlipperLoading:Landroid/widget/LinearLayout;

.field private mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

.field protected mTextViewNomedia:Landroid/widget/TextView;

.field private mThumbnailer:Lorg/videolan/vlc/Thumbnailer;

.field private mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

.field private final messageReceiverVideoListFragment:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 112
    invoke-direct {p0}, Lorg/videolan/android/ui/SherlockGridFragment;-><init>()V

    .line 99
    new-instance v0, Ljava/util/concurrent/CyclicBarrier;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CyclicBarrier;-><init>(I)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mBarrier:Ljava/util/concurrent/CyclicBarrier;

    .line 382
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoGridFragment$VideoListHandler;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment$VideoListHandler;-><init>(Lorg/videolan/vlc/gui/video/VideoGridFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mHandler:Landroid/os/Handler;

    .line 485
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoGridFragment$1;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment$1;-><init>(Lorg/videolan/vlc/gui/video/VideoGridFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->messageReceiverVideoListFragment:Landroid/content/BroadcastReceiver;

    .line 112
    return-void
.end method

.method static synthetic access$0(Lorg/videolan/vlc/gui/video/VideoGridFragment;)V
    .locals 0

    .prologue
    .line 409
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->updateItem()V

    return-void
.end method

.method static synthetic access$1(Lorg/videolan/vlc/gui/video/VideoGridFragment;)Lorg/videolan/vlc/gui/video/VideoGridAnimator;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mAnimator:Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    return-object v0
.end method

.method static synthetic access$2(Lorg/videolan/vlc/gui/video/VideoGridFragment;)V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->updateList()V

    return-void
.end method

.method static synthetic access$3(Lorg/videolan/vlc/gui/video/VideoGridFragment;)Lorg/videolan/vlc/MediaLibrary;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

    return-object v0
.end method

.method static synthetic access$4(Lorg/videolan/vlc/gui/video/VideoGridFragment;)Lorg/videolan/vlc/gui/video/VideoListAdapter;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lorg/videolan/vlc/gui/video/VideoGridFragment;)Lorg/videolan/vlc/audio/AudioServiceController;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    return-object v0
.end method

.method static synthetic access$6(Lorg/videolan/vlc/gui/video/VideoGridFragment;Landroid/view/MenuItem;I)Z
    .locals 1

    .prologue
    .line 294
    invoke-direct {p0, p1, p2}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->handleContextItemSelected(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public static actionScanStart()V
    .locals 2

    .prologue
    .line 501
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 502
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "org.videolan.vlc.gui.ScanStart"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 504
    return-void
.end method

.method public static actionScanStop()V
    .locals 2

    .prologue
    .line 507
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 508
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "org.videolan.vlc.gui.ScanStop"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 510
    return-void
.end method

.method private focusHelper(Z)V
    .locals 3
    .param p1, "idIsEmpty"    # Z

    .prologue
    const v2, 0x102000a

    .line 419
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 420
    .local v1, "parent":Landroid/view/View;
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/MainActivity;

    .line 421
    .local v0, "main":Lorg/videolan/vlc/gui/MainActivity;
    invoke-virtual {v0, p1, v2}, Lorg/videolan/vlc/gui/MainActivity;->setMenuFocusDown(ZI)V

    .line 422
    invoke-virtual {v0, p1, v1, v2}, Lorg/videolan/vlc/gui/MainActivity;->setSearchAsFocusDown(ZLandroid/view/View;I)V

    .line 424
    return-void
.end method

.method private handleContextItemSelected(Landroid/view/MenuItem;I)Z
    .locals 8
    .param p1, "menu"    # Landroid/view/MenuItem;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x1

    .line 295
    iget-object v5, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    invoke-virtual {v5, p2}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/videolan/libvlc/Media;

    .line 296
    .local v3, "media":Lorg/videolan/libvlc/Media;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 327
    const/4 v4, 0x0

    :cond_0
    :goto_0
    return v4

    .line 299
    :pswitch_0
    invoke-virtual {p0, v3, v4}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->playVideo(Lorg/videolan/libvlc/Media;Z)V

    goto :goto_0

    .line 302
    :pswitch_1
    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->playAudio(Lorg/videolan/libvlc/Media;)V

    goto :goto_0

    .line 305
    :pswitch_2
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/MainActivity;

    .line 306
    .local v0, "activity":Lorg/videolan/vlc/gui/MainActivity;
    const-string v5, "mediaInfo"

    invoke-virtual {v0, v5}, Lorg/videolan/vlc/gui/MainActivity;->showSecondaryFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lorg/videolan/vlc/gui/video/MediaInfoFragment;

    .line 307
    .local v2, "frag":Lorg/videolan/vlc/gui/video/MediaInfoFragment;
    if-eqz v2, :cond_0

    .line 308
    invoke-virtual {v3}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/videolan/vlc/gui/video/MediaInfoFragment;->setMediaLocation(Ljava/lang/String;)V

    goto :goto_0

    .line 313
    .end local v0    # "activity":Lorg/videolan/vlc/gui/MainActivity;
    .end local v2    # "frag":Lorg/videolan/vlc/gui/video/MediaInfoFragment;
    :pswitch_3
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 314
    invoke-virtual {v3}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v6

    .line 315
    new-instance v7, Lorg/videolan/vlc/gui/video/VideoGridFragment$2;

    invoke-direct {v7, p0, v3}, Lorg/videolan/vlc/gui/video/VideoGridFragment$2;-><init>(Lorg/videolan/vlc/gui/video/VideoGridFragment;Ljava/lang/Object;)V

    .line 312
    invoke-static {v5, v6, v7}, Lorg/videolan/vlc/gui/CommonDialogs;->deleteMedia(Landroid/content/Context;Ljava/lang/String;Lorg/videolan/vlc/util/VLCRunnable;)Landroid/app/AlertDialog;

    move-result-object v1

    .line 324
    .local v1, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x7f0703e7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private hasSpaceForGrid(Landroid/view/View;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 212
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 213
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v5

    .line 216
    :cond_1
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 217
    .local v3, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 219
    const/16 v6, 0x9c

    invoke-static {v6}, Lorg/videolan/vlc/util/Util;->convertDpToPx(I)I

    move-result v2

    .line 220
    .local v2, "itemWidth":I
    const/16 v6, 0x14

    invoke-static {v6}, Lorg/videolan/vlc/util/Util;->convertDpToPx(I)I

    move-result v1

    .line 221
    .local v1, "horizontalspacing":I
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v6

    iget-object v7, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v7}, Landroid/widget/GridView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v1

    .line 222
    mul-int/lit8 v7, v2, 0x2

    .line 221
    add-int v4, v6, v7

    .line 223
    .local v4, "width":I
    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt v4, v6, :cond_0

    .line 225
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setContextMenuItems(Landroid/view/Menu;Lorg/videolan/libvlc/Media;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "media"    # Lorg/videolan/libvlc/Media;

    .prologue
    .line 343
    invoke-virtual {p2}, Lorg/videolan/libvlc/Media;->getTime()J

    move-result-wide v0

    .line 344
    .local v0, "lastTime":J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 345
    const v3, 0x7f0703e7

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 346
    .local v2, "playFromStart":Landroid/view/MenuItem;
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 348
    .end local v2    # "playFromStart":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method private updateItem()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mItemToUpdate:Lorg/videolan/libvlc/Media;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->update(Lorg/videolan/libvlc/Media;)V

    .line 412
    :try_start_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mBarrier:Ljava/util/concurrent/CyclicBarrier;

    invoke-virtual {v0}, Ljava/util/concurrent/CyclicBarrier;->await()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/BrokenBarrierException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_0
    return-void

    .line 414
    :catch_0
    move-exception v0

    goto :goto_0

    .line 413
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private updateList()V
    .locals 6

    .prologue
    .line 427
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

    invoke-virtual {v3}, Lorg/videolan/vlc/MediaLibrary;->getVideoItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 429
    .local v2, "itemList":Ljava/util/List;, "Ljava/util/List<Lorg/videolan/libvlc/Media;>;"
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mThumbnailer:Lorg/videolan/vlc/Thumbnailer;

    if-eqz v3, :cond_3

    .line 430
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mThumbnailer:Lorg/videolan/vlc/Thumbnailer;

    invoke-virtual {v3}, Lorg/videolan/vlc/Thumbnailer;->clearJobs()V

    .line 434
    :goto_0
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    invoke-virtual {v3}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->clear()V

    .line 436
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 437
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mGroup:Ljava/lang/String;

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xa

    if-gt v3, v4, :cond_6

    .line 438
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 454
    :cond_2
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    invoke-virtual {v3}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->sort()V

    .line 455
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v3

    iput v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mGVFirstVisiblePos:I

    .line 456
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mGridView:Landroid/widget/GridView;

    iget v4, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mGVFirstVisiblePos:I

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setSelection(I)V

    .line 457
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->requestFocus()Z

    .line 458
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->focusHelper(Z)V

    .line 461
    :goto_2
    return-void

    .line 432
    :cond_3
    const-string v3, "VLC/VideoListFragment"

    const-string v4, "Can\'t generate thumbnails, the thumbnailer is missing"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 438
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/libvlc/Media;

    .line 439
    .local v1, "item":Lorg/videolan/libvlc/Media;
    iget-object v4, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mGroup:Ljava/lang/String;

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Lorg/videolan/libvlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mGroup:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 440
    :cond_5
    iget-object v4, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    invoke-virtual {v4, v1}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->add(Ljava/lang/Object;)V

    .line 441
    iget-object v4, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mThumbnailer:Lorg/videolan/vlc/Thumbnailer;

    if-eqz v4, :cond_1

    .line 442
    iget-object v4, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mThumbnailer:Lorg/videolan/vlc/Thumbnailer;

    invoke-virtual {v4, v1}, Lorg/videolan/vlc/Thumbnailer;->addJob(Lorg/videolan/libvlc/Media;)V

    goto :goto_1

    .line 447
    .end local v1    # "item":Lorg/videolan/libvlc/Media;
    :cond_6
    invoke-static {v2}, Lorg/videolan/vlc/MediaGroup;->group(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 448
    .local v0, "groups":Ljava/util/List;, "Ljava/util/List<Lorg/videolan/vlc/MediaGroup;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/MediaGroup;

    .line 449
    .local v1, "item":Lorg/videolan/vlc/MediaGroup;
    iget-object v4, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    invoke-virtual {v1}, Lorg/videolan/vlc/MediaGroup;->getMedia()Lorg/videolan/libvlc/Media;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->add(Ljava/lang/Object;)V

    .line 450
    iget-object v4, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mThumbnailer:Lorg/videolan/vlc/Thumbnailer;

    if-eqz v4, :cond_7

    .line 451
    iget-object v4, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mThumbnailer:Lorg/videolan/vlc/Thumbnailer;

    invoke-virtual {v4, v1}, Lorg/videolan/vlc/Thumbnailer;->addJob(Lorg/videolan/libvlc/Media;)V

    goto :goto_3

    .line 460
    .end local v0    # "groups":Ljava/util/List;, "Ljava/util/List<Lorg/videolan/vlc/MediaGroup;>;"
    .end local v1    # "item":Lorg/videolan/vlc/MediaGroup;
    :cond_8
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->focusHelper(Z)V

    goto :goto_2
.end method

.method private updateViewMode()V
    .locals 12

    .prologue
    const/16 v11, 0x14

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 229
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 230
    :cond_0
    const-string v2, "VLC/VideoListFragment"

    const-string v3, "Unable to setup the view"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_0
    return-void

    .line 235
    :cond_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 236
    .local v0, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 237
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    double-to-int v1, v2

    .line 238
    .local v1, "sidePadding":I
    const/16 v2, 0x64

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 239
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getPaddingTop()I

    move-result v3

    .line 240
    iget-object v4, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getPaddingBottom()I

    move-result v4

    .line 239
    invoke-virtual {v2, v1, v3, v1, v4}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 243
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->hasSpaceForGrid(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 244
    const-string v2, "VLC/VideoListFragment"

    const-string v3, "Switching to grid mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mGridView:Landroid/widget/GridView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 246
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v10}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 247
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mGridView:Landroid/widget/GridView;

    invoke-static {v11}, Lorg/videolan/vlc/util/Util;->convertDpToPx(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 248
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mGridView:Landroid/widget/GridView;

    invoke-static {v11}, Lorg/videolan/vlc/util/Util;->convertDpToPx(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 249
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mGridView:Landroid/widget/GridView;

    const/16 v3, 0x9c

    invoke-static {v3}, Lorg/videolan/vlc/util/Util;->convertDpToPx(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 250
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    invoke-virtual {v2, v8}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->setListMode(Z)V

    goto/16 :goto_0

    .line 252
    :cond_2
    const-string v2, "VLC/VideoListFragment"

    const-string v3, "Switching to list mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v9}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 254
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v10}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 255
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v8}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 256
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mGridView:Landroid/widget/GridView;

    const/16 v3, 0xa

    invoke-static {v3}, Lorg/videolan/vlc/util/Util;->convertDpToPx(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 257
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    invoke-virtual {v2, v9}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->setListMode(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public await()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/BrokenBarrierException;
        }
    .end annotation

    .prologue
    .line 478
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mBarrier:Ljava/util/concurrent/CyclicBarrier;

    invoke-virtual {v0}, Ljava/util/concurrent/CyclicBarrier;->await()I

    .line 479
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 263
    invoke-super {p0, p1}, Lorg/videolan/android/ui/SherlockGridFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 265
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 266
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 267
    :cond_0
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->updateViewMode()V

    .line 269
    :cond_1
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/MenuItem;

    .prologue
    .line 352
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 353
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, p1, v1}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->handleContextItemSelected(Landroid/view/MenuItem;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    const/4 v1, 0x1

    .line 355
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lorg/videolan/android/ui/SherlockGridFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onContextPopupMenu(Landroid/view/View;I)V
    .locals 5
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "position"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 360
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isHoneycombOrLater()Z

    move-result v2

    if-nez v2, :cond_0

    .line 362
    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    .line 377
    :goto_0
    return-void

    .line 366
    :cond_0
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 367
    .local v1, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f10000f

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 368
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    invoke-virtual {v2, p2}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/libvlc/Media;

    .line 369
    .local v0, "media":Lorg/videolan/libvlc/Media;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->setContextMenuItems(Landroid/view/Menu;Lorg/videolan/libvlc/Media;)V

    .line 370
    new-instance v2, Lorg/videolan/vlc/gui/video/VideoGridFragment$3;

    invoke-direct {v2, p0, p2}, Lorg/videolan/vlc/gui/video/VideoGridFragment$3;-><init>(Lorg/videolan/vlc/gui/video/VideoGridFragment;I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 376
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1}, Lorg/videolan/android/ui/SherlockGridFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-static {}, Lorg/videolan/vlc/audio/AudioServiceController;->getInstance()Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v1

    iput-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    .line 120
    new-instance v1, Lorg/videolan/vlc/gui/video/VideoListAdapter;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lorg/videolan/vlc/gui/video/VideoListAdapter;-><init>(Landroid/content/Context;Lorg/videolan/vlc/gui/video/VideoGridFragment;)V

    iput-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    .line 121
    invoke-static {}, Lorg/videolan/vlc/MediaLibrary;->getInstance()Lorg/videolan/vlc/MediaLibrary;

    move-result-object v1

    iput-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

    .line 122
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 126
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    if-eqz v0, :cond_0

    .line 127
    new-instance v1, Lorg/videolan/vlc/Thumbnailer;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/videolan/vlc/Thumbnailer;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mThumbnailer:Lorg/videolan/vlc/Thumbnailer;

    .line 128
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 333
    move-object v1, p3

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 334
    .local v1, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/videolan/libvlc/Media;

    .line 335
    .local v2, "media":Lorg/videolan/libvlc/Media;
    instance-of v3, v2, Lorg/videolan/vlc/MediaGroup;

    if-eqz v3, :cond_0

    .line 340
    :goto_0
    return-void

    .line 337
    :cond_0
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 338
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v3, 0x7f10000f

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 339
    invoke-direct {p0, p1, v2}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->setContextMenuItems(Landroid/view/Menu;Lorg/videolan/libvlc/Media;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0c002e

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 135
    const v1, 0x7f0300f2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 138
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0703a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mLayoutFlipperLoading:Landroid/widget/LinearLayout;

    .line 139
    const v1, 0x7f0703a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mTextViewNomedia:Landroid/widget/TextView;

    .line 140
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mGridView:Landroid/widget/GridView;

    .line 142
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Lorg/videolan/android/ui/SherlockGridFragment;->onDestroy()V

    .line 205
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mThumbnailer:Lorg/videolan/vlc/Thumbnailer;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mThumbnailer:Lorg/videolan/vlc/Thumbnailer;

    invoke-virtual {v0}, Lorg/videolan/vlc/Thumbnailer;->clearJobs()V

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mBarrier:Ljava/util/concurrent/CyclicBarrier;

    invoke-virtual {v0}, Ljava/util/concurrent/CyclicBarrier;->reset()V

    .line 208
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->clear()V

    .line 209
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->messageReceiverVideoListFragment:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 199
    invoke-super {p0}, Lorg/videolan/android/ui/SherlockGridFragment;->onDestroyView()V

    .line 200
    return-void
.end method

.method public onGridItemClick(Landroid/widget/GridView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/GridView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 273
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/videolan/libvlc/Media;

    .line 274
    .local v2, "media":Lorg/videolan/libvlc/Media;
    instance-of v3, v2, Lorg/videolan/vlc/MediaGroup;

    if-eqz v3, :cond_1

    .line 275
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/MainActivity;

    .line 276
    .local v0, "activity":Lorg/videolan/vlc/gui/MainActivity;
    const-string v3, "videoGroupList"

    invoke-virtual {v0, v3}, Lorg/videolan/vlc/gui/MainActivity;->showSecondaryFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/gui/video/VideoGridFragment;

    .line 277
    .local v1, "frag":Lorg/videolan/vlc/gui/video/VideoGridFragment;
    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {v2}, Lorg/videolan/libvlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->setGroup(Ljava/lang/String;)V

    .line 283
    .end local v0    # "activity":Lorg/videolan/vlc/gui/MainActivity;
    .end local v1    # "frag":Lorg/videolan/vlc/gui/video/VideoGridFragment;
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p5}, Lorg/videolan/android/ui/SherlockGridFragment;->onGridItemClick(Landroid/widget/GridView;Landroid/view/View;IJ)V

    .line 284
    return-void

    .line 282
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->playVideo(Lorg/videolan/libvlc/Media;Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Lorg/videolan/android/ui/SherlockGridFragment;->onPause()V

    .line 166
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mGVFirstVisiblePos:I

    .line 167
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/MediaLibrary;->removeUpdateHandler(Landroid/os/Handler;)V

    .line 170
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mThumbnailer:Lorg/videolan/vlc/Thumbnailer;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mThumbnailer:Lorg/videolan/vlc/Thumbnailer;

    invoke-virtual {v0}, Lorg/videolan/vlc/Thumbnailer;->stop()V

    .line 172
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 176
    invoke-super {p0}, Lorg/videolan/android/ui/SherlockGridFragment;->onResume()V

    .line 177
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    invoke-virtual {v2}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->isEmpty()Z

    move-result v0

    .line 178
    .local v0, "refresh":Z
    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->updateList()V

    .line 181
    invoke-static {}, Lorg/videolan/vlc/MediaDatabase;->getInstance()Lorg/videolan/vlc/MediaDatabase;

    move-result-object v2

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/videolan/vlc/MediaDatabase;->getVideoTimes(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    .line 182
    .local v1, "times":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    invoke-virtual {v2, v1}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->setTimes(Ljava/util/HashMap;)V

    .line 183
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    invoke-virtual {v2}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->notifyDataSetChanged()V

    .line 185
    .end local v1    # "times":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_0
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lorg/videolan/vlc/MediaLibrary;->addUpdateHandler(Landroid/os/Handler;)V

    .line 186
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mGridView:Landroid/widget/GridView;

    iget v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mGVFirstVisiblePos:I

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setSelection(I)V

    .line 187
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->updateViewMode()V

    .line 188
    if-eqz v0, :cond_1

    .line 189
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mAnimator:Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    invoke-virtual {v2}, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->animate()V

    .line 192
    :cond_1
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mThumbnailer:Lorg/videolan/vlc/Thumbnailer;

    if-eqz v2, :cond_2

    .line 193
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mThumbnailer:Lorg/videolan/vlc/Thumbnailer;

    invoke-virtual {v2, p0}, Lorg/videolan/vlc/Thumbnailer;->start(Lorg/videolan/vlc/gui/video/VideoGridFragment;)V

    .line 194
    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-super {p0, p1, p2}, Lorg/videolan/android/ui/SherlockGridFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 148
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getGridView()Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 152
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "org.videolan.vlc.gui.ScanStart"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v1, "org.videolan.vlc.gui.ScanStop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->messageReceiverVideoListFragment:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    const-string v1, "VLC/VideoListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mMediaLibrary.isWorking() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

    invoke-virtual {v3}, Lorg/videolan/vlc/MediaLibrary;->isWorking()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

    invoke-virtual {v1}, Lorg/videolan/vlc/MediaLibrary;->isWorking()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    invoke-static {}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->actionScanStart()V

    .line 160
    :cond_0
    new-instance v1, Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getGridView()Landroid/widget/GridView;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/videolan/vlc/gui/video/VideoGridAnimator;-><init>(Landroid/widget/GridView;)V

    iput-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mAnimator:Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    .line 161
    return-void
.end method

.method protected playAudio(Lorg/videolan/libvlc/Media;)V
    .locals 3
    .param p1, "media"    # Lorg/videolan/libvlc/Media;

    .prologue
    .line 291
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/videolan/vlc/audio/AudioServiceController;->load(Ljava/lang/String;Z)V

    .line 292
    return-void
.end method

.method protected playVideo(Lorg/videolan/libvlc/Media;Z)V
    .locals 3
    .param p1, "media"    # Lorg/videolan/libvlc/Media;
    .param p2, "fromStart"    # Z

    .prologue
    .line 287
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 288
    return-void
.end method

.method public resetBarrier()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mBarrier:Ljava/util/concurrent/CyclicBarrier;

    invoke-virtual {v0}, Ljava/util/concurrent/CyclicBarrier;->reset()V

    .line 483
    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 474
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mGroup:Ljava/lang/String;

    .line 475
    return-void
.end method

.method public setItemToUpdate(Lorg/videolan/libvlc/Media;)V
    .locals 2
    .param p1, "item"    # Lorg/videolan/libvlc/Media;

    .prologue
    .line 469
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mItemToUpdate:Lorg/videolan/libvlc/Media;

    .line 470
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 471
    return-void
.end method

.method public sortBy(I)V
    .locals 1
    .param p1, "sortby"    # I

    .prologue
    .line 465
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment;->mVideoAdapter:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    invoke-virtual {v0, p1}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->sortBy(I)V

    .line 466
    return-void
.end method
