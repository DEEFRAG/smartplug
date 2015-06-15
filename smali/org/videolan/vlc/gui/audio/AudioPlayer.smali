.class public Lorg/videolan/vlc/gui/audio/AudioPlayer;
.super Landroid/support/v4/app/Fragment;
.source "AudioPlayer.java"

# interfaces
.implements Lorg/videolan/vlc/interfaces/IAudioPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$videolan$vlc$audio$RepeatType:[I = null

.field private static final PREF_AUDIOPLAYER_TIPS_SHOWN:Ljava/lang/String; = "audioplayer_tips_shown"

.field private static final PREF_PLAYLIST_TIPS_SHOWN:Ljava/lang/String; = "playlist_tips_shown"

.field public static final TAG:Ljava/lang/String; = "VLC/AudioPlayer"


# instance fields
.field private mAdvFunc:Landroid/widget/ImageButton;

.field private mAdvFuncVisible:Z

.field private mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

.field private mCoverMediaSwitcher:Lorg/videolan/vlc/gui/audio/widget/CoverMediaSwitcher;

.field private final mCoverMediaSwitcherListener:Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;

.field private mHeaderMediaSwitcher:Lorg/videolan/vlc/gui/audio/widget/HeaderMediaSwitcher;

.field private final mHeaderMediaSwitcherListener:Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;

.field private mHeaderPlayPause:Landroid/widget/ImageButton;

.field private mHeaderPlayPauseVisible:Z

.field private mHeaderTime:Landroid/widget/TextView;

.field private mHeaderTimeVisible:Z

.field private mLength:Landroid/widget/TextView;

.field private mNext:Landroid/widget/ImageButton;

.field private mPlayPause:Landroid/widget/ImageButton;

.field private mPlaylistSwitch:Landroid/widget/ImageButton;

.field private mPlaylistSwitchVisible:Z

.field private mPreviewingSeek:Z

.field private mPrevious:Landroid/widget/ImageButton;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressBarVisible:Z

.field private mRepeat:Landroid/widget/ImageButton;

.field private mShowRemainingTime:Z

.field private mShuffle:Landroid/widget/ImageButton;

.field private mSongsList:Lorg/videolan/vlc/gui/audio/AudioPlaylistView;

.field private mSongsListAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

.field mSwitcher:Landroid/widget/ViewSwitcher;

.field private mTime:Landroid/widget/TextView;

.field private mTimeline:Landroid/widget/SeekBar;

.field mTimelineListner:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method static synthetic $SWITCH_TABLE$org$videolan$vlc$audio$RepeatType()[I
    .locals 3

    .prologue
    .line 69
    sget-object v0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->$SWITCH_TABLE$org$videolan$vlc$audio$RepeatType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/videolan/vlc/audio/RepeatType;->values()[Lorg/videolan/vlc/audio/RepeatType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/videolan/vlc/audio/RepeatType;->All:Lorg/videolan/vlc/audio/RepeatType;

    invoke-virtual {v1}, Lorg/videolan/vlc/audio/RepeatType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lorg/videolan/vlc/audio/RepeatType;->None:Lorg/videolan/vlc/audio/RepeatType;

    invoke-virtual {v1}, Lorg/videolan/vlc/audio/RepeatType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lorg/videolan/vlc/audio/RepeatType;->Once:Lorg/videolan/vlc/audio/RepeatType;

    invoke-virtual {v1}, Lorg/videolan/vlc/audio/RepeatType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->$SWITCH_TABLE$org$videolan$vlc$audio$RepeatType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 92
    iput-boolean v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mShowRemainingTime:Z

    .line 93
    iput-boolean v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mPreviewingSeek:Z

    .line 410
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioPlayer$1;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer$1;-><init>(Lorg/videolan/vlc/gui/audio/AudioPlayer;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mTimelineListner:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 526
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioPlayer$2;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer$2;-><init>(Lorg/videolan/vlc/gui/audio/AudioPlayer;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mHeaderMediaSwitcherListener:Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;

    .line 556
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioPlayer$3;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer$3;-><init>(Lorg/videolan/vlc/gui/audio/AudioPlayer;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mCoverMediaSwitcherListener:Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;

    .line 69
    return-void
.end method

.method static synthetic access$0(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Lorg/videolan/vlc/audio/AudioServiceController;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    return-object v0
.end method

.method static synthetic access$1(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10(Lorg/videolan/vlc/gui/audio/AudioPlayer;Z)V
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mPreviewingSeek:Z

    return-void
.end method

.method static synthetic access$11(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mPlaylistSwitch:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$12(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mSongsListAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mShowRemainingTime:Z

    return v0
.end method

.method static synthetic access$3(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mHeaderTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lorg/videolan/vlc/gui/audio/AudioPlayer;)V
    .locals 0

    .prologue
    .line 519
    invoke-direct {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->hideHedaderButtons()V

    return-void
.end method

.method static synthetic access$5(Lorg/videolan/vlc/gui/audio/AudioPlayer;)V
    .locals 0

    .prologue
    .line 511
    invoke-direct {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->restoreHedaderButtonVisibilities()V

    return-void
.end method

.method static synthetic access$6(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mTimeline:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$7(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$8(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mNext:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$9(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mPrevious:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private hideHedaderButtons()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 520
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAdvFunc:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mPlaylistSwitch:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mHeaderPlayPause:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 523
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mHeaderTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 524
    return-void
.end method

.method private restoreHedaderButtonVisibilities()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 512
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAdvFunc:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAdvFuncVisible:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 513
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mPlaylistSwitch:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mPlaylistSwitchVisible:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 514
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mHeaderPlayPause:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mHeaderPlayPauseVisible:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 515
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mProgressBar:Landroid/widget/ProgressBar;

    iget-boolean v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mProgressBarVisible:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mHeaderTime:Landroid/widget/TextView;

    iget-boolean v3, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mHeaderTimeVisible:Z

    if-eqz v3, :cond_4

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 517
    return-void

    :cond_0
    move v0, v2

    .line 512
    goto :goto_0

    :cond_1
    move v0, v2

    .line 513
    goto :goto_1

    :cond_2
    move v0, v2

    .line 514
    goto :goto_2

    :cond_3
    move v0, v2

    .line 515
    goto :goto_3

    :cond_4
    move v1, v2

    .line 516
    goto :goto_4
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 304
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 305
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "org.videolan.vlc.gui.ShowPlayer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 307
    return-void
.end method

.method private updateList()V
    .locals 7

    .prologue
    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v0, "audioList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/videolan/libvlc/Media;>;"
    const/4 v2, 0x0

    .line 388
    .local v2, "currentItem":Ljava/lang/String;
    const/4 v1, -0x1

    .line 390
    .local v1, "currentIndex":I
    invoke-static {}, Lorg/videolan/libvlc/LibVLC;->getExistingInstance()Lorg/videolan/libvlc/LibVLC;

    move-result-object v4

    .line 391
    .local v4, "libVLC":Lorg/videolan/libvlc/LibVLC;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v6

    invoke-virtual {v6}, Lorg/videolan/libvlc/MediaList;->size()I

    move-result v6

    if-lt v3, v6, :cond_0

    .line 394
    iget-object v6, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    invoke-virtual {v6}, Lorg/videolan/vlc/audio/AudioServiceController;->getCurrentMediaLocation()Ljava/lang/String;

    move-result-object v2

    .line 396
    iget-object v6, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mSongsListAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    invoke-virtual {v6}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->clear()V

    .line 398
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v3, v6, :cond_1

    .line 404
    iget-object v6, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mSongsListAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    invoke-virtual {v6, v1}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->setCurrentIndex(I)V

    .line 405
    iget-object v6, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mSongsList:Lorg/videolan/vlc/gui/audio/AudioPlaylistView;

    invoke-virtual {v6, v1}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->setSelection(I)V

    .line 407
    iget-object v6, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mSongsListAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    invoke-virtual {v6}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->notifyDataSetChanged()V

    .line 408
    return-void

    .line 392
    :cond_0
    invoke-virtual {v4}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/videolan/libvlc/MediaList;->getMedia(I)Lorg/videolan/libvlc/Media;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 399
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/videolan/libvlc/Media;

    .line 400
    .local v5, "media":Lorg/videolan/libvlc/Media;
    if-eqz v2, :cond_2

    invoke-virtual {v5}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 401
    move v1, v3

    .line 402
    :cond_2
    iget-object v6, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mSongsListAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    invoke-virtual {v6, v5}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->add(Lorg/videolan/libvlc/Media;)V

    .line 398
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 490
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/MainActivity;

    .line 491
    .local v0, "activity":Lorg/videolan/vlc/gui/MainActivity;
    invoke-virtual {v0}, Lorg/videolan/vlc/gui/MainActivity;->hideAudioPlayer()V

    .line 492
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 285
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 286
    .local v1, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    if-nez v1, :cond_0

    .line 287
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 295
    :goto_0
    return v2

    .line 288
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 290
    .local v0, "id":I
    const v2, 0x7f0703d1

    if-ne v0, v2, :cond_1

    .line 291
    const-string v2, "VLC/AudioPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Context menu removing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Lorg/videolan/vlc/audio/AudioServiceController;->remove(I)V

    .line 293
    const/4 v2, 0x1

    goto :goto_0

    .line 295
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-static {}, Lorg/videolan/vlc/audio/AudioServiceController;->getInstance()Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    .line 113
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mSongsListAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    .line 114
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 279
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 280
    .local v0, "menuInflater":Landroid/view/MenuInflater;
    const v1, 0x7f100005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 281
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 118
    const v2, 0x7f03003b

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 120
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f07010b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mProgressBar:Landroid/widget/ProgressBar;

    .line 122
    const v2, 0x7f07010c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/videolan/vlc/gui/audio/widget/HeaderMediaSwitcher;

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mHeaderMediaSwitcher:Lorg/videolan/vlc/gui/audio/widget/HeaderMediaSwitcher;

    .line 123
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mHeaderMediaSwitcher:Lorg/videolan/vlc/gui/audio/widget/HeaderMediaSwitcher;

    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mHeaderMediaSwitcherListener:Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;

    invoke-virtual {v2, v3}, Lorg/videolan/vlc/gui/audio/widget/HeaderMediaSwitcher;->setAudioMediaSwitcherListener(Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;)V

    .line 124
    const v2, 0x7f070112

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/videolan/vlc/gui/audio/widget/CoverMediaSwitcher;

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mCoverMediaSwitcher:Lorg/videolan/vlc/gui/audio/widget/CoverMediaSwitcher;

    .line 125
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mCoverMediaSwitcher:Lorg/videolan/vlc/gui/audio/widget/CoverMediaSwitcher;

    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mCoverMediaSwitcherListener:Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;

    invoke-virtual {v2, v3}, Lorg/videolan/vlc/gui/audio/widget/CoverMediaSwitcher;->setAudioMediaSwitcherListener(Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;)V

    .line 127
    const v2, 0x7f070113

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mTime:Landroid/widget/TextView;

    .line 128
    const v2, 0x7f07010f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mHeaderTime:Landroid/widget/TextView;

    .line 129
    const v2, 0x7f070115

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mLength:Landroid/widget/TextView;

    .line 130
    const v2, 0x7f070118

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mPlayPause:Landroid/widget/ImageButton;

    .line 131
    const v2, 0x7f070110

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mHeaderPlayPause:Landroid/widget/ImageButton;

    .line 132
    const v2, 0x7f070119

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mNext:Landroid/widget/ImageButton;

    .line 133
    const v2, 0x7f07011a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mPrevious:Landroid/widget/ImageButton;

    .line 134
    const v2, 0x7f070116

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mShuffle:Landroid/widget/ImageButton;

    .line 135
    const v2, 0x7f070117

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mRepeat:Landroid/widget/ImageButton;

    .line 136
    const v2, 0x7f07010e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAdvFunc:Landroid/widget/ImageButton;

    .line 137
    const v2, 0x7f07010d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mPlaylistSwitch:Landroid/widget/ImageButton;

    .line 138
    const v2, 0x7f070114

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mTimeline:Landroid/widget/SeekBar;

    .line 140
    const v2, 0x7f070103

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mSongsList:Lorg/videolan/vlc/gui/audio/AudioPlaylistView;

    .line 141
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mSongsList:Lorg/videolan/vlc/gui/audio/AudioPlaylistView;

    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mSongsListAdapter:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    invoke-virtual {v2, v3}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    const v2, 0x7f070111

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewSwitcher;

    iput-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mSwitcher:Landroid/widget/ViewSwitcher;

    .line 144
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/high16 v4, 0x10a0000

    invoke-virtual {v2, v3, v4}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/content/Context;I)V

    .line 145
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x10a0001

    invoke-virtual {v2, v3, v4}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    .line 147
    iput-boolean v6, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAdvFuncVisible:Z

    .line 148
    iput-boolean v6, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mPlaylistSwitchVisible:Z

    .line 149
    iput-boolean v7, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mHeaderPlayPauseVisible:Z

    .line 150
    iput-boolean v7, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mProgressBarVisible:Z

    .line 151
    iput-boolean v7, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mHeaderTimeVisible:Z

    .line 152
    invoke-direct {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->restoreHedaderButtonVisibilities()V

    .line 154
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mTime:Landroid/widget/TextView;

    new-instance v3, Lorg/videolan/vlc/gui/audio/AudioPlayer$4;

    invoke-direct {v3, p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer$4;-><init>(Lorg/videolan/vlc/gui/audio/AudioPlayer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mPlayPause:Landroid/widget/ImageButton;

    new-instance v3, Lorg/videolan/vlc/gui/audio/AudioPlayer$5;

    invoke-direct {v3, p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer$5;-><init>(Lorg/videolan/vlc/gui/audio/AudioPlayer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mPlayPause:Landroid/widget/ImageButton;

    new-instance v3, Lorg/videolan/vlc/gui/audio/AudioPlayer$6;

    invoke-direct {v3, p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer$6;-><init>(Lorg/videolan/vlc/gui/audio/AudioPlayer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 173
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mHeaderPlayPause:Landroid/widget/ImageButton;

    new-instance v3, Lorg/videolan/vlc/gui/audio/AudioPlayer$7;

    invoke-direct {v3, p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer$7;-><init>(Lorg/videolan/vlc/gui/audio/AudioPlayer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mHeaderPlayPause:Landroid/widget/ImageButton;

    new-instance v3, Lorg/videolan/vlc/gui/audio/AudioPlayer$8;

    invoke-direct {v3, p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer$8;-><init>(Lorg/videolan/vlc/gui/audio/AudioPlayer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 187
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 186
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 187
    const-string v3, "enable_black_theme"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 188
    .local v0, "blackTheme":Z
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mNext:Landroid/widget/ImageButton;

    new-instance v5, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;

    .line 189
    if-eqz v0, :cond_0

    const v2, 0x7f020232

    move v3, v2

    .line 191
    :goto_0
    if-eqz v0, :cond_1

    const v2, 0x7f020234

    .line 192
    :goto_1
    invoke-direct {v5, p0, v7, v3, v2}, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;-><init>(Lorg/videolan/vlc/gui/audio/AudioPlayer;ZII)V

    .line 188
    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 193
    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mPrevious:Landroid/widget/ImageButton;

    new-instance v5, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;

    .line 194
    if-eqz v0, :cond_2

    const v2, 0x7f020257

    move v3, v2

    .line 196
    :goto_2
    if-eqz v0, :cond_3

    const v2, 0x7f020259

    .line 197
    :goto_3
    invoke-direct {v5, p0, v6, v3, v2}, Lorg/videolan/vlc/gui/audio/AudioPlayer$LongSeekListener;-><init>(Lorg/videolan/vlc/gui/audio/AudioPlayer;ZII)V

    .line 193
    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 198
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mShuffle:Landroid/widget/ImageButton;

    new-instance v3, Lorg/videolan/vlc/gui/audio/AudioPlayer$9;

    invoke-direct {v3, p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer$9;-><init>(Lorg/videolan/vlc/gui/audio/AudioPlayer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mRepeat:Landroid/widget/ImageButton;

    new-instance v3, Lorg/videolan/vlc/gui/audio/AudioPlayer$10;

    invoke-direct {v3, p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer$10;-><init>(Lorg/videolan/vlc/gui/audio/AudioPlayer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAdvFunc:Landroid/widget/ImageButton;

    new-instance v3, Lorg/videolan/vlc/gui/audio/AudioPlayer$11;

    invoke-direct {v3, p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer$11;-><init>(Lorg/videolan/vlc/gui/audio/AudioPlayer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mPlaylistSwitch:Landroid/widget/ImageButton;

    new-instance v3, Lorg/videolan/vlc/gui/audio/AudioPlayer$12;

    invoke-direct {v3, p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer$12;-><init>(Lorg/videolan/vlc/gui/audio/AudioPlayer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mSongsList:Lorg/videolan/vlc/gui/audio/AudioPlaylistView;

    new-instance v3, Lorg/videolan/vlc/gui/audio/AudioPlayer$13;

    invoke-direct {v3, p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer$13;-><init>(Lorg/videolan/vlc/gui/audio/AudioPlayer;)V

    invoke-virtual {v2, v3}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 234
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mSongsList:Lorg/videolan/vlc/gui/audio/AudioPlaylistView;

    new-instance v3, Lorg/videolan/vlc/gui/audio/AudioPlayer$14;

    invoke-direct {v3, p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer$14;-><init>(Lorg/videolan/vlc/gui/audio/AudioPlayer;)V

    invoke-virtual {v2, v3}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 242
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mSongsList:Lorg/videolan/vlc/gui/audio/AudioPlaylistView;

    new-instance v3, Lorg/videolan/vlc/gui/audio/AudioPlayer$15;

    invoke-direct {v3, p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer$15;-><init>(Lorg/videolan/vlc/gui/audio/AudioPlayer;)V

    invoke-virtual {v2, v3}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->setOnItemDraggedListener(Lorg/videolan/vlc/gui/audio/AudioPlaylistView$OnItemDraggedListener;)V

    .line 248
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mSongsList:Lorg/videolan/vlc/gui/audio/AudioPlaylistView;

    new-instance v3, Lorg/videolan/vlc/gui/audio/AudioPlayer$16;

    invoke-direct {v3, p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer$16;-><init>(Lorg/videolan/vlc/gui/audio/AudioPlayer;)V

    invoke-virtual {v2, v3}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->setOnItemRemovedListener(Lorg/videolan/vlc/gui/audio/AudioPlaylistView$OnItemRemovedListener;)V

    .line 254
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mSongsList:Lorg/videolan/vlc/gui/audio/AudioPlaylistView;

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->registerForContextMenu(Landroid/view/View;)V

    .line 256
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->setVolumeControlStream(I)V

    .line 258
    return-object v1

    .line 190
    :cond_0
    const v2, 0x7f020231

    move v3, v2

    goto/16 :goto_0

    .line 192
    :cond_1
    const v2, 0x7f020233

    goto/16 :goto_1

    .line 195
    :cond_2
    const v2, 0x7f020256

    move v3, v2

    goto :goto_2

    .line 197
    :cond_3
    const v2, 0x7f020258

    goto :goto_3
.end method

.method public onNextClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 452
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    invoke-virtual {v0}, Lorg/videolan/vlc/audio/AudioServiceController;->next()V

    .line 453
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 268
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 269
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 270
    return-void
.end method

.method public onPlayPauseClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 440
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    invoke-virtual {v0}, Lorg/videolan/vlc/audio/AudioServiceController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    invoke-virtual {v0}, Lorg/videolan/vlc/audio/AudioServiceController;->pause()V

    .line 445
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    invoke-virtual {v0}, Lorg/videolan/vlc/audio/AudioServiceController;->play()V

    goto :goto_0
.end method

.method public onPreviousClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 456
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    invoke-virtual {v0}, Lorg/videolan/vlc/audio/AudioServiceController;->previous()V

    .line 457
    return-void
.end method

.method public onRepeatClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 460
    invoke-static {}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->$SWITCH_TABLE$org$videolan$vlc$audio$RepeatType()[I

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    invoke-virtual {v1}, Lorg/videolan/vlc/audio/AudioServiceController;->getRepeatType()Lorg/videolan/vlc/audio/RepeatType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/videolan/vlc/audio/RepeatType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 469
    :pswitch_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    sget-object v1, Lorg/videolan/vlc/audio/RepeatType;->None:Lorg/videolan/vlc/audio/RepeatType;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/audio/AudioServiceController;->setRepeatType(Lorg/videolan/vlc/audio/RepeatType;)V

    .line 472
    :goto_0
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->update()V

    .line 473
    return-void

    .line 462
    :pswitch_1
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    sget-object v1, Lorg/videolan/vlc/audio/RepeatType;->All:Lorg/videolan/vlc/audio/RepeatType;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/audio/AudioServiceController;->setRepeatType(Lorg/videolan/vlc/audio/RepeatType;)V

    goto :goto_0

    .line 465
    :pswitch_2
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    sget-object v1, Lorg/videolan/vlc/audio/RepeatType;->Once:Lorg/videolan/vlc/audio/RepeatType;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/audio/AudioServiceController;->setRepeatType(Lorg/videolan/vlc/audio/RepeatType;)V

    goto :goto_0

    .line 460
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 263
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 264
    return-void
.end method

.method public onShuffleClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 476
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    invoke-virtual {v0}, Lorg/videolan/vlc/audio/AudioServiceController;->shuffle()V

    .line 477
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->update()V

    .line 478
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 274
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 275
    return-void
.end method

.method public onStopClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 448
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    invoke-virtual {v0}, Lorg/videolan/vlc/audio/AudioServiceController;->stop()V

    .line 449
    return-void
.end method

.method public onTimeLabelClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 435
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mShowRemainingTime:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mShowRemainingTime:Z

    .line 436
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->update()V

    .line 437
    return-void

    .line 435
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setHeaderVisibilities(ZZZZZ)V
    .locals 0
    .param p1, "advFuncVisible"    # Z
    .param p2, "playlistSwitchVisible"    # Z
    .param p3, "headerPlayPauseVisible"    # Z
    .param p4, "progressBarVisible"    # Z
    .param p5, "headerTimeVisible"    # Z

    .prologue
    .line 503
    iput-boolean p1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAdvFuncVisible:Z

    .line 504
    iput-boolean p2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mPlaylistSwitchVisible:Z

    .line 505
    iput-boolean p3, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mHeaderPlayPauseVisible:Z

    .line 506
    iput-boolean p4, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mProgressBarVisible:Z

    .line 507
    iput-boolean p5, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mHeaderTimeVisible:Z

    .line 508
    invoke-direct {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->restoreHedaderButtonVisibilities()V

    .line 509
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 485
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/MainActivity;

    .line 486
    .local v0, "activity":Lorg/videolan/vlc/gui/MainActivity;
    invoke-virtual {v0}, Lorg/videolan/vlc/gui/MainActivity;->showAudioPlayer()V

    .line 487
    return-void
.end method

.method public showAdvancedOptions(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 481
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lorg/videolan/vlc/gui/CommonDialogs$MenuType;->Audio:Lorg/videolan/vlc/gui/CommonDialogs$MenuType;

    invoke-static {v0, p1, v1}, Lorg/videolan/vlc/gui/CommonDialogs;->advancedOptions(Landroid/content/Context;Landroid/view/View;Lorg/videolan/vlc/gui/CommonDialogs$MenuType;)V

    .line 482
    return-void
.end method

.method public showAudioPlayerTips()V
    .locals 3

    .prologue
    .line 671
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/MainActivity;

    .line 672
    .local v0, "activity":Lorg/videolan/vlc/gui/MainActivity;
    if-eqz v0, :cond_0

    .line 673
    const v1, 0x7f03003c

    const-string v2, "audioplayer_tips_shown"

    invoke-virtual {v0, v1, v2}, Lorg/videolan/vlc/gui/MainActivity;->showTipViewIfNeeded(ILjava/lang/String;)V

    .line 674
    :cond_0
    return-void
.end method

.method public showPlaylistTips()V
    .locals 3

    .prologue
    .line 665
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/MainActivity;

    .line 666
    .local v0, "activity":Lorg/videolan/vlc/gui/MainActivity;
    if-eqz v0, :cond_0

    .line 667
    const v1, 0x7f03003f

    const-string v2, "playlist_tips_shown"

    invoke-virtual {v0, v1, v2}, Lorg/videolan/vlc/gui/MainActivity;->showTipViewIfNeeded(ILjava/lang/String;)V

    .line 668
    :cond_0
    return-void
.end method

.method public declared-synchronized update()V
    .locals 3

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 366
    :goto_0
    monitor-exit p0

    return-void

    .line 315
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    invoke-virtual {v1}, Lorg/videolan/vlc/audio/AudioServiceController;->hasMedia()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->show()V

    .line 322
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mHeaderMediaSwitcher:Lorg/videolan/vlc/gui/audio/widget/HeaderMediaSwitcher;

    invoke-virtual {v1}, Lorg/videolan/vlc/gui/audio/widget/HeaderMediaSwitcher;->updateMedia()V

    .line 323
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mCoverMediaSwitcher:Lorg/videolan/vlc/gui/audio/widget/CoverMediaSwitcher;

    invoke-virtual {v1}, Lorg/videolan/vlc/gui/audio/widget/CoverMediaSwitcher;->updateMedia()V

    .line 325
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 327
    .local v0, "act":Landroid/support/v4/app/FragmentActivity;
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    invoke-virtual {v1}, Lorg/videolan/vlc/audio/AudioServiceController;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 328
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mPlayPause:Landroid/widget/ImageButton;

    const v2, 0x7f010094

    invoke-static {v0, v2}, Lorg/videolan/vlc/util/Util;->getResourceFromAttribute(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 329
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mPlayPause:Landroid/widget/ImageButton;

    const v2, 0x7f0c0022

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mHeaderPlayPause:Landroid/widget/ImageButton;

    const v2, 0x7f010096

    invoke-static {v0, v2}, Lorg/videolan/vlc/util/Util;->getResourceFromAttribute(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 331
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mHeaderPlayPause:Landroid/widget/ImageButton;

    const v2, 0x7f0c0022

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 338
    :goto_1
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    invoke-virtual {v1}, Lorg/videolan/vlc/audio/AudioServiceController;->isShuffling()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 339
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mShuffle:Landroid/widget/ImageButton;

    const v2, 0x7f010091

    invoke-static {v0, v2}, Lorg/videolan/vlc/util/Util;->getResourceFromAttribute(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 343
    :goto_2
    invoke-static {}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->$SWITCH_TABLE$org$videolan$vlc$audio$RepeatType()[I

    move-result-object v1

    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    invoke-virtual {v2}, Lorg/videolan/vlc/audio/AudioServiceController;->getRepeatType()Lorg/videolan/vlc/audio/RepeatType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/videolan/vlc/audio/RepeatType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 352
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mRepeat:Landroid/widget/ImageButton;

    const v2, 0x7f01008e

    invoke-static {v0, v2}, Lorg/videolan/vlc/util/Util;->getResourceFromAttribute(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 355
    :goto_3
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    invoke-virtual {v1}, Lorg/videolan/vlc/audio/AudioServiceController;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 356
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mNext:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 359
    :goto_4
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    invoke-virtual {v1}, Lorg/videolan/vlc/audio/AudioServiceController;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 360
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mPrevious:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 363
    :goto_5
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mTimeline:Landroid/widget/SeekBar;

    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mTimelineListner:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 365
    invoke-direct {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->updateList()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 312
    .end local v0    # "act":Landroid/support/v4/app/FragmentActivity;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 318
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->hide()V

    goto/16 :goto_0

    .line 333
    .restart local v0    # "act":Landroid/support/v4/app/FragmentActivity;
    :cond_2
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mPlayPause:Landroid/widget/ImageButton;

    const v2, 0x7f010093

    invoke-static {v0, v2}, Lorg/videolan/vlc/util/Util;->getResourceFromAttribute(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 334
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mPlayPause:Landroid/widget/ImageButton;

    const v2, 0x7f0c0014

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mHeaderPlayPause:Landroid/widget/ImageButton;

    const v2, 0x7f010095

    invoke-static {v0, v2}, Lorg/videolan/vlc/util/Util;->getResourceFromAttribute(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 336
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mHeaderPlayPause:Landroid/widget/ImageButton;

    const v2, 0x7f0c0014

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 341
    :cond_3
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mShuffle:Landroid/widget/ImageButton;

    const v2, 0x7f010090

    invoke-static {v0, v2}, Lorg/videolan/vlc/util/Util;->getResourceFromAttribute(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_2

    .line 345
    :pswitch_0
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mRepeat:Landroid/widget/ImageButton;

    const v2, 0x7f01008d

    invoke-static {v0, v2}, Lorg/videolan/vlc/util/Util;->getResourceFromAttribute(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_3

    .line 348
    :pswitch_1
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mRepeat:Landroid/widget/ImageButton;

    const v2, 0x7f01008f

    invoke-static {v0, v2}, Lorg/videolan/vlc/util/Util;->getResourceFromAttribute(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_3

    .line 358
    :cond_4
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mNext:Landroid/widget/ImageButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_4

    .line 362
    :cond_5
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mPrevious:Landroid/widget/ImageButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized updateProgress()V
    .locals 6

    .prologue
    .line 370
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    invoke-virtual {v2}, Lorg/videolan/vlc/audio/AudioServiceController;->getTime()I

    move-result v1

    .line 371
    .local v1, "time":I
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    invoke-virtual {v2}, Lorg/videolan/vlc/audio/AudioServiceController;->getLength()I

    move-result v0

    .line 373
    .local v0, "length":I
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mHeaderTime:Landroid/widget/TextView;

    int-to-long v3, v1

    invoke-static {v3, v4}, Lorg/videolan/vlc/util/Strings;->millisToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mLength:Landroid/widget/TextView;

    int-to-long v3, v0

    invoke-static {v3, v4}, Lorg/videolan/vlc/util/Strings;->millisToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mTimeline:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 376
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 378
    iget-boolean v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mPreviewingSeek:Z

    if-nez v2, :cond_0

    .line 379
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mTime:Landroid/widget/TextView;

    iget-boolean v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mShowRemainingTime:Z

    if-eqz v2, :cond_1

    sub-int v2, v1, v0

    :goto_0
    int-to-long v4, v2

    invoke-static {v4, v5}, Lorg/videolan/vlc/util/Strings;->millisToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mTimeline:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 381
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    move v2, v1

    .line 379
    goto :goto_0

    .line 370
    .end local v0    # "length":I
    .end local v1    # "time":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
