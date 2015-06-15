.class public Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
.super Landroid/app/Activity;
.source "VideoPlayerActivity.java"

# interfaces
.implements Lorg/videolan/libvlc/IVideoPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;,
        Lorg/videolan/vlc/gui/video/VideoPlayerActivity$VideoPlayerEventHandler;,
        Lorg/videolan/vlc/gui/video/VideoPlayerActivity$VideoPlayerHandler;
    }
.end annotation


# static fields
.field private static final AUDIO_SERVICE_CONNECTION_FAILED:I = 0x6

.field private static final AUDIO_SERVICE_CONNECTION_SUCCESS:I = 0x5

.field private static final FADE_OUT:I = 0x1

.field private static final FADE_OUT_INFO:I = 0x4

.field private static final JOYSTICK_INPUT_DELAY:I = 0x12c

.field private static final OVERLAY_INFINITE:I = 0x36ee80

.field private static final OVERLAY_TIMEOUT:I = 0xfa0

.field private static final PLAY_FROM_VIDEOGRID:Ljava/lang/String; = "org.videolan.vlc.gui.video.PLAY_FROM_VIDEOGRID"

.field private static final PREF_TIPS_SHOWN:Ljava/lang/String; = "video_player_tips_shown"

.field private static final SHOW_PROGRESS:I = 0x2

.field private static final SURFACE_16_9:I = 0x4

.field private static final SURFACE_4_3:I = 0x5

.field private static final SURFACE_BEST_FIT:I = 0x0

.field private static final SURFACE_FILL:I = 0x3

.field private static final SURFACE_FIT_HORIZONTAL:I = 0x1

.field private static final SURFACE_FIT_VERTICAL:I = 0x2

.field private static final SURFACE_ORIGINAL:I = 0x6

.field private static final SURFACE_SIZE:I = 0x3

.field public static final TAG:Ljava/lang/String; = "VLC/VideoPlayerActivity"

.field private static final TOUCH_BRIGHTNESS:I = 0x2

.field private static final TOUCH_NONE:I = 0x0

.field private static final TOUCH_SEEK:I = 0x3

.field private static final TOUCH_VOLUME:I = 0x1


# instance fields
.field private final eventHandler:Landroid/os/Handler;

.field private mActionBar:Landroid/app/ActionBar;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioMax:I

.field private mAudioTrack:Landroid/widget/ImageButton;

.field private final mAudioTrackListener:Landroid/view/View$OnClickListener;

.field private mAudioTracksList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBackward:Landroid/widget/ImageButton;

.field private final mBackwardListener:Landroid/view/View$OnClickListener;

.field private mBattery:Landroid/widget/TextView;

.field private mCanSeek:Z

.field private mCurrentSize:I

.field private mDisabledHardwareAcceleration:Z

.field private mDisplayRemainingTime:Z

.field private mDragging:Z

.field private mEnableBrightnessGesture:Z

.field private mEnableCloneMode:Z

.field private mEnableJumpButtons:Z

.field private mEndReached:Z

.field private mForward:Landroid/widget/ImageButton;

.field private final mForwardListener:Landroid/view/View$OnClickListener;

.field private final mHandler:Landroid/os/Handler;

.field private mHardwareAccelerationError:Z

.field private mHasMenu:Z

.field private mInfo:Landroid/widget/TextView;

.field private mIsFirstBrightnessGesture:Z

.field private mIsLocked:Z

.field private mIsNavMenu:Z

.field private mLastAudioTrack:I

.field private mLastMove:J

.field private mLastSpuTrack:I

.field private mLength:Landroid/widget/TextView;

.field private mLibVLC:Lorg/videolan/libvlc/LibVLC;

.field private mLoading:Landroid/widget/ImageView;

.field private mLoadingText:Landroid/widget/TextView;

.field private mLocation:Ljava/lang/String;

.field private mLock:Landroid/widget/ImageButton;

.field private final mLockListener:Landroid/view/View$OnClickListener;

.field private mMediaRouter:Landroid/media/MediaRouter;

.field private mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

.field private mMenu:Landroid/widget/ImageButton;

.field private mMute:Z

.field private mNavMenu:Landroid/widget/ImageButton;

.field private final mNavMenuListener:Landroid/view/View$OnClickListener;

.field private final mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mOverlayBackground:Landroid/view/View;

.field private mOverlayHeader:Landroid/view/View;

.field private mOverlayOption:Landroid/view/View;

.field private mOverlayProgress:Landroid/view/View;

.field private mOverlayTips:Landroid/view/View;

.field private mOverlayUseStatusBar:Z

.field private mPlayPause:Landroid/widget/ImageButton;

.field private final mPlayPauseListener:Landroid/view/View$OnClickListener;

.field private mPresentation:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

.field private mPreviousHardwareAccelerationMode:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRemainingTimeListener:Landroid/view/View$OnClickListener;

.field private mSarDen:I

.field private mSarNum:I

.field private mScreenOrientation:I

.field private mScreenOrientationLock:I

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeekbar:Landroid/widget/SeekBar;

.field private mSettings:Landroid/content/SharedPreferences;

.field private mShowing:Z

.field private mSize:Landroid/widget/ImageButton;

.field private final mSizeListener:Landroid/view/View$OnClickListener;

.field private mSubtitle:Landroid/widget/ImageButton;

.field private final mSubtitleSelectedFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSubtitleTracksList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubtitlesListener:Landroid/view/View$OnClickListener;

.field private mSubtitlesSurface:Landroid/view/SurfaceView;

.field private final mSubtitlesSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSubtitlesSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurface:Landroid/view/SurfaceView;

.field private final mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSurfaceFrame:Landroid/widget/FrameLayout;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceYDisplayRange:I

.field private mSwitchingView:Z

.field private mSysTime:Landroid/widget/TextView;

.field private mTime:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTouchAction:I

.field private mTouchX:F

.field private mTouchY:F

.field private mUiVisibility:I

.field private mVideoHeight:I

.field private mVideoVisibleHeight:I

.field private mVideoVisibleWidth:I

.field private mVideoWidth:I

.field private mVol:I

.field private mVolSave:I

.field private savedIndexPosition:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 145
    iput v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mCurrentSize:I

    .line 166
    iput v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mUiVisibility:I

    .line 182
    iput-boolean v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mDisplayRemainingTime:Z

    .line 190
    iput-boolean v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mIsLocked:Z

    .line 191
    iput v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLastAudioTrack:I

    .line 192
    const/4 v0, -0x2

    iput v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLastSpuTrack:I

    .line 203
    iput v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->savedIndexPosition:I

    .line 217
    iput-boolean v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mMute:Z

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mIsFirstBrightnessGesture:Z

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitleSelectedFiles:Ljava/util/ArrayList;

    .line 247
    iput-boolean v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mDisabledHardwareAcceleration:Z

    .line 256
    iput-boolean v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHasMenu:Z

    .line 257
    iput-boolean v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mIsNavMenu:Z

    .line 679
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$1;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$1;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 955
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$VideoPlayerEventHandler;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$VideoPlayerEventHandler;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->eventHandler:Landroid/os/Handler;

    .line 1033
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$VideoPlayerHandler;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$VideoPlayerHandler;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    .line 1499
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$2;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$2;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1529
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$3;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$3;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioTrackListener:Landroid/view/View$OnClickListener;

    .line 1581
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$4;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$4;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitlesListener:Landroid/view/View$OnClickListener;

    .line 1629
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$5;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$5;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mNavMenuListener:Landroid/view/View$OnClickListener;

    .line 1645
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$6;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPlayPauseListener:Landroid/view/View$OnClickListener;

    .line 1663
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$7;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$7;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mBackwardListener:Landroid/view/View$OnClickListener;

    .line 1673
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$8;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$8;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mForwardListener:Landroid/view/View$OnClickListener;

    .line 1693
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$9;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$9;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLockListener:Landroid/view/View$OnClickListener;

    .line 1710
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$10;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$10;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSizeListener:Landroid/view/View$OnClickListener;

    .line 1751
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$11;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$11;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mRemainingTimeListener:Landroid/view/View$OnClickListener;

    .line 1762
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$12;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$12;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 1788
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$13;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$13;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitlesSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 2353
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$14;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$14;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 119
    return-void
.end method

.method static synthetic access$0(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mBattery:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 164
    iput-boolean p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mDragging:Z

    return-void
.end method

.method static synthetic access$10(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 1536
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->selectAudioTrack()V

    return-void
.end method

.method static synthetic access$11(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 1588
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->selectSubtitles()V

    return-void
.end method

.method static synthetic access$12(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 1636
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showNavMenu()V

    return-void
.end method

.method static synthetic access$13(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 1652
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->doPlayPause()V

    return-void
.end method

.method static synthetic access$14(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mIsLocked:Z

    return v0
.end method

.method static synthetic access$15(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 190
    iput-boolean p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mIsLocked:Z

    return-void
.end method

.method static synthetic access$16(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 840
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->unlockScreen()V

    return-void
.end method

.method static synthetic access$17(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 821
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->lockScreen()V

    return-void
.end method

.method static synthetic access$18(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 1718
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->resizeVideo()V

    return-void
.end method

.method static synthetic access$19(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mDisplayRemainingTime:Z

    return v0
.end method

.method static synthetic access$2(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;I)V
    .locals 0

    .prologue
    .line 1824
    invoke-direct {p0, p1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showOverlay(I)V

    return-void
.end method

.method static synthetic access$20(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 182
    iput-boolean p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mDisplayRemainingTime:Z

    return-void
.end method

.method static synthetic access$21(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPresentation:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

    return-object v0
.end method

.method static synthetic access$22(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPresentation:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

    return-void
.end method

.method static synthetic access$23(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSwitchingView:Z

    return v0
.end method

.method static synthetic access$24(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 2459
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->updateNavStatus()V

    return-void
.end method

.method static synthetic access$25(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHasMenu:Z

    return v0
.end method

.method static synthetic access$26(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 1157
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->switchToAudioMode()V

    return-void
.end method

.method static synthetic access$27(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 2442
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->stopLoadingAnimation()V

    return-void
.end method

.method static synthetic access$28(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 1974
    invoke-direct {p0, p1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setESTrackLists(Z)V

    return-void
.end method

.method static synthetic access$29(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 1963
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setESTracks()V

    return-void
.end method

.method static synthetic access$3(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 1809
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showOverlay()V

    return-void
.end method

.method static synthetic access$30(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Z)I
    .locals 1

    .prologue
    .line 904
    invoke-direct {p0, p1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->changeAudioFocus(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$31(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 1077
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->endReached()V

    return-void
.end method

.method static synthetic access$32(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 1148
    invoke-direct {p0, p1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->handleVout(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$33(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 200
    iput-boolean p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mCanSeek:Z

    return-void
.end method

.method static synthetic access$34(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 1093
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->encounteredError()V

    return-void
.end method

.method static synthetic access$35(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 1113
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->handleHardwareAccelerationError()V

    return-void
.end method

.method static synthetic access$36(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 1920
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->updateOverlayPausePlay()V

    return-void
.end method

.method static synthetic access$37(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 1855
    invoke-direct {p0, p1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->hideOverlay(Z)V

    return-void
.end method

.method static synthetic access$38(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 1073
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->canShowProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$39(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 1171
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->changeSurfaceSize()V

    return-void
.end method

.method static synthetic access$4(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 892
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->hideInfo()V

    return-void
.end method

.method static synthetic access$40(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 896
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->fadeOutInfo()V

    return-void
.end method

.method static synthetic access$41(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 602
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->startPlayback()V

    return-void
.end method

.method static synthetic access$42(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSettings:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$43(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Landroid/view/SurfaceHolder$Callback;
    .locals 1

    .prologue
    .line 1762
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    return-object v0
.end method

.method static synthetic access$44(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Landroid/view/SurfaceHolder$Callback;
    .locals 1

    .prologue
    .line 1788
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitlesSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    return-object v0
.end method

.method static synthetic access$45(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 2337
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->removePresentation()V

    return-void
.end method

.method static synthetic access$46(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mUiVisibility:I

    return v0
.end method

.method static synthetic access$47(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$48(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$49(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoVisibleWidth:I

    return v0
.end method

.method static synthetic access$5(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mCanSeek:Z

    return v0
.end method

.method static synthetic access$50(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoVisibleHeight:I

    return v0
.end method

.method static synthetic access$51(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSarNum:I

    return v0
.end method

.method static synthetic access$52(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSarDen:I

    return v0
.end method

.method static synthetic access$53(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mShowing:Z

    return v0
.end method

.method static synthetic access$54(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;I)V
    .locals 0

    .prologue
    .line 166
    iput p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mUiVisibility:I

    return-void
.end method

.method static synthetic access$55(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$56(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 2021
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->loadMedia()V

    return-void
.end method

.method static synthetic access$57(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 247
    iput-boolean p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mDisabledHardwareAcceleration:Z

    return-void
.end method

.method static synthetic access$58(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;I)V
    .locals 0

    .prologue
    .line 248
    iput p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPreviousHardwareAccelerationMode:I

    return-void
.end method

.method static synthetic access$59(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitlesSurface:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$6(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/libvlc/LibVLC;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    return-object v0
.end method

.method static synthetic access$60(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioTracksList:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$61(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$62(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitleTracksList:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$7(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I
    .locals 1

    .prologue
    .line 1935
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setOverlayProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$8(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 875
    invoke-direct {p0, p1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showInfo(Ljava/lang/String;)V

    return-void
.end method

.method private canShowProgress()Z
    .locals 1

    .prologue
    .line 1074
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mDragging:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private changeAudioFocus(Z)I
    .locals 4
    .param p1, "acquire"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 905
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isFroyoOrLater()Z

    move-result v1

    if-nez v1, :cond_0

    .line 949
    :goto_0
    return v0

    .line 908
    :cond_0
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-nez v1, :cond_1

    .line 909
    new-instance v1, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$20;

    invoke-direct {v1, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$20;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    iput-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 935
    :cond_1
    if-eqz p1, :cond_2

    .line 936
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 937
    const/4 v3, 0x3

    .line 936
    invoke-virtual {v1, v2, v3, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 938
    .local v0, "result":I
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "bgm_state=true"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 941
    .end local v0    # "result":I
    :cond_2
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_3

    .line 942
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    .line 943
    .restart local v0    # "result":I
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "bgm_state=false"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 946
    .end local v0    # "result":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method private changeBrightness(F)V
    .locals 4
    .param p1, "delta"    # F

    .prologue
    .line 1489
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1490
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    add-float/2addr v1, p1

    const v2, 0x3c23d70a    # 0.01f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1492
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1493
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f0c005b

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v3, 0x41700000    # 15.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-direct {p0, v1, v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showInfo(Ljava/lang/String;I)V

    .line 1494
    return-void
.end method

.method private changeSurfaceSize()V
    .locals 26
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPresentation:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

    move-object/from16 v22, v0

    if-nez v22, :cond_4

    .line 1177
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getWidth()I

    move-result v19

    .line 1178
    .local v19, "sw":I
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getHeight()I

    move-result v13

    .line 1184
    .local v13, "sh":I
    :goto_0
    move/from16 v0, v19

    int-to-double v9, v0

    .local v9, "dw":D
    int-to-double v7, v13

    .line 1187
    .local v7, "dh":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPresentation:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

    move-object/from16 v22, v0

    if-nez v22, :cond_6

    .line 1189
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    const/4 v11, 0x1

    .line 1194
    .local v11, "isPortrait":Z
    :goto_1
    move/from16 v0, v19

    if-le v0, v13, :cond_0

    if-nez v11, :cond_1

    :cond_0
    move/from16 v0, v19

    if-ge v0, v13, :cond_2

    if-nez v11, :cond_2

    .line 1195
    :cond_1
    int-to-double v9, v13

    .line 1196
    move/from16 v0, v19

    int-to-double v7, v0

    .line 1200
    :cond_2
    mul-double v22, v9, v7

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoHeight:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    if-nez v22, :cond_7

    .line 1201
    :cond_3
    const-string v22, "VLC/VideoPlayerActivity"

    const-string v23, "Invalid surface size"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :goto_2
    return-void

    .line 1180
    .end local v7    # "dh":D
    .end local v9    # "dw":D
    .end local v11    # "isPortrait":Z
    .end local v13    # "sh":I
    .end local v19    # "sw":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPresentation:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->getWindow()Landroid/view/Window;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getWidth()I

    move-result v19

    .line 1181
    .restart local v19    # "sw":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPresentation:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->getWindow()Landroid/view/Window;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getHeight()I

    move-result v13

    .restart local v13    # "sh":I
    goto :goto_0

    .line 1189
    .restart local v7    # "dh":D
    .restart local v9    # "dw":D
    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    .line 1191
    :cond_6
    const/4 v11, 0x0

    .restart local v11    # "isPortrait":Z
    goto :goto_1

    .line 1207
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSarDen:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSarNum:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 1209
    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoVisibleWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v20, v0

    .line 1210
    .local v20, "vw":D
    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoVisibleWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoVisibleHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v3, v22, v24

    .line 1218
    .local v3, "ar":D
    :goto_3
    div-double v5, v9, v7

    .line 1220
    .local v5, "dar":D
    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mCurrentSize:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 1261
    :goto_4
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPresentation:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

    move-object/from16 v22, v0

    if-nez v22, :cond_c

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurface:Landroid/view/SurfaceView;

    move-object/from16 v16, v0

    .line 1263
    .local v16, "surface":Landroid/view/SurfaceView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitlesSurface:Landroid/view/SurfaceView;

    .line 1264
    .local v14, "subtitlesSurface":Landroid/view/SurfaceView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v18, v0

    .line 1265
    .local v18, "surfaceHolder":Landroid/view/SurfaceHolder;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitlesSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1266
    .local v15, "subtitlesSurfaceHolder":Landroid/view/SurfaceHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceFrame:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    .line 1276
    .local v17, "surfaceFrame":Landroid/widget/FrameLayout;
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoHeight:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 1277
    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoHeight:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v15, v0, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 1280
    invoke-virtual/range {v16 .. v16}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 1281
    .local v12, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v22, v22, v9

    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoVisibleWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1282
    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v22, v22, v7

    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoVisibleHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1283
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1284
    invoke-virtual {v14, v12}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1287
    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 1288
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1289
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1290
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1292
    invoke-virtual/range {v16 .. v16}, Landroid/view/SurfaceView;->invalidate()V

    .line 1293
    invoke-virtual {v14}, Landroid/view/SurfaceView;->invalidate()V

    goto/16 :goto_2

    .line 1213
    .end local v3    # "ar":D
    .end local v5    # "dar":D
    .end local v12    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v14    # "subtitlesSurface":Landroid/view/SurfaceView;
    .end local v15    # "subtitlesSurfaceHolder":Landroid/view/SurfaceHolder;
    .end local v16    # "surface":Landroid/view/SurfaceView;
    .end local v17    # "surfaceFrame":Landroid/widget/FrameLayout;
    .end local v18    # "surfaceHolder":Landroid/view/SurfaceHolder;
    .end local v20    # "vw":D
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoVisibleWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSarNum:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSarDen:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v20, v22, v24

    .line 1214
    .restart local v20    # "vw":D
    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoVisibleHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v3, v20, v22

    .restart local v3    # "ar":D
    goto/16 :goto_3

    .line 1222
    .restart local v5    # "dar":D
    :pswitch_1
    cmpg-double v22, v5, v3

    if-gez v22, :cond_9

    .line 1223
    div-double v7, v9, v3

    goto/16 :goto_4

    .line 1225
    :cond_9
    mul-double v9, v7, v3

    .line 1226
    goto/16 :goto_4

    .line 1228
    :pswitch_2
    div-double v7, v9, v3

    .line 1229
    goto/16 :goto_4

    .line 1231
    :pswitch_3
    mul-double v9, v7, v3

    .line 1232
    goto/16 :goto_4

    .line 1236
    :pswitch_4
    const-wide v3, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 1237
    cmpg-double v22, v5, v3

    if-gez v22, :cond_a

    .line 1238
    div-double v7, v9, v3

    goto/16 :goto_4

    .line 1240
    :cond_a
    mul-double v9, v7, v3

    .line 1241
    goto/16 :goto_4

    .line 1243
    :pswitch_5
    const-wide v3, 0x3ff5555555555555L    # 1.3333333333333333

    .line 1244
    cmpg-double v22, v5, v3

    if-gez v22, :cond_b

    .line 1245
    div-double v7, v9, v3

    goto/16 :goto_4

    .line 1247
    :cond_b
    mul-double v9, v7, v3

    .line 1248
    goto/16 :goto_4

    .line 1250
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoVisibleHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v7, v0

    .line 1251
    move-wide/from16 v9, v20

    goto/16 :goto_4

    .line 1268
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPresentation:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

    move-object/from16 v22, v0

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->mSurface:Landroid/view/SurfaceView;
    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->access$0(Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;)Landroid/view/SurfaceView;

    move-result-object v16

    .line 1269
    .restart local v16    # "surface":Landroid/view/SurfaceView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPresentation:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

    move-object/from16 v22, v0

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->mSubtitlesSurface:Landroid/view/SurfaceView;
    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->access$1(Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;)Landroid/view/SurfaceView;

    move-result-object v14

    .line 1270
    .restart local v14    # "subtitlesSurface":Landroid/view/SurfaceView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPresentation:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

    move-object/from16 v22, v0

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->access$2(Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;)Landroid/view/SurfaceHolder;

    move-result-object v18

    .line 1271
    .restart local v18    # "surfaceHolder":Landroid/view/SurfaceHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPresentation:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

    move-object/from16 v22, v0

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->mSubtitlesSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->access$3(Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;)Landroid/view/SurfaceHolder;

    move-result-object v15

    .line 1272
    .restart local v15    # "subtitlesSurfaceHolder":Landroid/view/SurfaceHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPresentation:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

    move-object/from16 v22, v0

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->mSurfaceFrame:Landroid/widget/FrameLayout;
    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->access$4(Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;)Landroid/widget/FrameLayout;

    move-result-object v17

    .restart local v17    # "surfaceFrame":Landroid/widget/FrameLayout;
    goto/16 :goto_5

    .line 1220
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private createPresentation()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2311
    iget-object v4, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mMediaRouter:Landroid/media/MediaRouter;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mEnableCloneMode:Z

    if-eqz v4, :cond_1

    .line 2334
    :cond_0
    :goto_0
    return-void

    .line 2315
    :cond_1
    iget-object v4, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mMediaRouter:Landroid/media/MediaRouter;

    .line 2316
    const/4 v5, 0x2

    .line 2315
    invoke-virtual {v4, v5}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    .line 2318
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v1

    .line 2320
    .local v1, "presentationDisplay":Landroid/view/Display;
    :goto_1
    if-eqz v1, :cond_3

    .line 2322
    const-string v4, "VLC/VideoPlayerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Showing presentation on display: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    new-instance v4, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

    invoke-direct {v4, p0, p0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Landroid/content/Context;Landroid/view/Display;)V

    iput-object v4, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPresentation:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

    .line 2324
    iget-object v4, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPresentation:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

    iget-object v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v4, v5}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2326
    :try_start_0
    iget-object v4, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPresentation:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

    invoke-virtual {v4}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2327
    :catch_0
    move-exception v0

    .line 2328
    .local v0, "ex":Landroid/view/WindowManager$InvalidDisplayException;
    const-string v4, "VLC/VideoPlayerActivity"

    const-string v5, "Couldn\'t show presentation!  Display was removed in the meantime."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2330
    iput-object v3, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPresentation:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

    goto :goto_0

    .end local v0    # "ex":Landroid/view/WindowManager$InvalidDisplayException;
    .end local v1    # "presentationDisplay":Landroid/view/Display;
    :cond_2
    move-object v1, v3

    .line 2318
    goto :goto_1

    .line 2333
    .restart local v1    # "presentationDisplay":Landroid/view/Display;
    :cond_3
    const-string v3, "VLC/VideoPlayerActivity"

    const-string v4, "No secondary display detected"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dimStatusBar(Z)V
    .locals 3
    .param p1, "dim"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1898
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isHoneycombOrLater()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/videolan/vlc/util/AndroidDevices;->hasNavBar()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mIsNavMenu:Z

    if-eqz v2, :cond_1

    .line 1918
    :cond_0
    :goto_0
    return-void

    .line 1900
    :cond_1
    const/4 v0, 0x0

    .line 1901
    .local v0, "layout":I
    invoke-static {}, Lorg/videolan/vlc/util/AndroidDevices;->hasCombBar()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isJellyBeanOrLater()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1902
    const/16 v0, 0x300

    .line 1903
    :cond_2
    iget-boolean v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayUseStatusBar:Z

    if-eqz v2, :cond_3

    .line 1904
    or-int/lit16 v0, v0, 0x400

    .line 1906
    :cond_3
    move v1, v0

    .line 1907
    .local v1, "visibility":I
    if-eqz p1, :cond_5

    .line 1908
    or-int/lit8 v1, v1, 0x1

    .line 1909
    invoke-static {}, Lorg/videolan/vlc/util/AndroidDevices;->hasCombBar()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1910
    or-int/lit8 v1, v1, 0x2

    .line 1911
    iget-boolean v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayUseStatusBar:Z

    if-eqz v2, :cond_4

    .line 1912
    or-int/lit8 v1, v1, 0x4

    .line 1917
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 1915
    :cond_5
    or-int/lit8 v1, v1, 0x0

    goto :goto_1
.end method

.method private doBrightnessTouch(F)V
    .locals 3
    .param p1, "y_changed"    # F

    .prologue
    const/4 v2, 0x2

    .line 1476
    iget v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTouchAction:I

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTouchAction:I

    if-eq v1, v2, :cond_0

    .line 1485
    :goto_0
    return-void

    .line 1478
    :cond_0
    iget-boolean v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mIsFirstBrightnessGesture:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->initBrightnessTouch()V

    .line 1479
    :cond_1
    iput v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTouchAction:I

    .line 1482
    neg-float v1, p1

    iget v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceYDisplayRange:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const v2, 0x3d8f5c29    # 0.07f

    mul-float v0, v1, v2

    .line 1484
    .local v0, "delta":F
    invoke-direct {p0, v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->changeBrightness(F)V

    goto :goto_0
.end method

.method private final doPlayPause()V
    .locals 1

    .prologue
    .line 1653
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1654
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->pause()V

    .line 1657
    :goto_0
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showOverlay()V

    .line 1658
    return-void

    .line 1656
    :cond_0
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->play()V

    goto :goto_0
.end method

.method private doSeekTouch(FFZ)V
    .locals 13
    .param p1, "coef"    # F
    .param p2, "gesturesize"    # F
    .param p3, "seek"    # Z

    .prologue
    .line 1393
    float-to-double v5, p1

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    cmpl-double v5, v5, v7

    if-gtz v5, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_0

    iget-boolean v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mCanSeek:Z

    if-nez v5, :cond_1

    .line 1427
    :cond_0
    :goto_0
    return-void

    .line 1396
    :cond_1
    iget v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTouchAction:I

    if-eqz v5, :cond_2

    iget v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTouchAction:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 1398
    :cond_2
    const/4 v5, 0x3

    iput v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTouchAction:I

    .line 1401
    iget-boolean v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mShowing:Z

    if-nez v5, :cond_3

    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showOverlay()V

    .line 1403
    :cond_3
    iget-object v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v5}, Lorg/videolan/libvlc/LibVLC;->getLength()J

    move-result-wide v1

    .line 1404
    .local v1, "length":J
    iget-object v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v5}, Lorg/videolan/libvlc/LibVLC;->getTime()J

    move-result-wide v3

    .line 1407
    .local v3, "time":J
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x41224f8000000000L    # 600000.0

    const/high16 v9, 0x41000000    # 8.0f

    div-float v9, p2, v9

    float-to-double v9, v9

    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double/2addr v7, v9

    const-wide v9, 0x40a7700000000000L    # 3000.0

    add-double/2addr v7, v9

    mul-double/2addr v5, v7

    double-to-int v0, v5

    .line 1410
    .local v0, "jump":I
    if-lez v0, :cond_4

    int-to-long v5, v0

    add-long/2addr v5, v3

    cmp-long v5, v5, v1

    if-lez v5, :cond_4

    .line 1411
    sub-long v5, v1, v3

    long-to-int v0, v5

    .line 1412
    :cond_4
    if-gez v0, :cond_5

    int-to-long v5, v0

    add-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_5

    .line 1413
    neg-long v5, v3

    long-to-int v0, v5

    .line 1416
    :cond_5
    if-eqz p3, :cond_6

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_6

    .line 1417
    iget-object v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    int-to-long v6, v0

    add-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Lorg/videolan/libvlc/LibVLC;->setTime(J)J

    .line 1419
    :cond_6
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_8

    .line 1421
    const-string v6, "%s%s (%s)"

    const/4 v5, 0x3

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 1422
    if-ltz v0, :cond_7

    const-string v5, "+"

    :goto_1
    aput-object v5, v7, v8

    const/4 v5, 0x1

    .line 1423
    int-to-long v8, v0

    invoke-static {v8, v9}, Lorg/videolan/vlc/util/Strings;->millisToString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v5, 0x2

    .line 1424
    int-to-long v8, v0

    add-long/2addr v8, v3

    invoke-static {v8, v9}, Lorg/videolan/vlc/util/Strings;->millisToString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 1421
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1424
    const/16 v6, 0x3e8

    .line 1421
    invoke-direct {p0, v5, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showInfo(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1422
    :cond_7
    const-string v5, ""

    goto :goto_1

    .line 1426
    :cond_8
    const v5, 0x7f0c0050

    const/16 v6, 0x3e8

    invoke-direct {p0, v5, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showInfo(II)V

    goto/16 :goto_0
.end method

.method private doVolumeTouch(F)V
    .locals 4
    .param p1, "y_changed"    # F

    .prologue
    .line 1430
    iget v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTouchAction:I

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTouchAction:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 1437
    :cond_0
    :goto_0
    return-void

    .line 1432
    :cond_1
    iget v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceYDisplayRange:I

    int-to-float v2, v2

    div-float v2, p1, v2

    iget v3, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioMax:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v0, v2

    .line 1433
    .local v0, "delta":I
    iget v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVol:I

    add-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioMax:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1434
    .local v1, "vol":I
    if-eqz v0, :cond_0

    .line 1435
    invoke-direct {p0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setAudioVolume(I)V

    goto :goto_0
.end method

.method private encounteredError()V
    .locals 4

    .prologue
    .line 1095
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1096
    const v2, 0x7f0c0239

    new-instance v3, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$22;

    invoke-direct {v3, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$22;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1102
    const v2, 0x7f0c0076

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1103
    const v2, 0x7f0c0077

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1104
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1105
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1106
    return-void
.end method

.method private endReached()V
    .locals 4

    .prologue
    .line 1078
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v0

    iget v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->savedIndexPosition:I

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaList;->expandMedia(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1079
    const-string v0, "VLC/VideoPlayerActivity"

    const-string v1, "Found a video playlist, expanding it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$21;

    invoke-direct {v1, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$21;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    .line 1085
    const-wide/16 v2, 0x3e8

    .line 1080
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1091
    :goto_0
    return-void

    .line 1088
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mEndReached:Z

    .line 1089
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->finish()V

    goto :goto_0
.end method

.method private fadeOutInfo()V
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 898
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mInfo:Landroid/widget/TextView;

    .line 899
    const v1, 0x10a0001

    .line 898
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 900
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mInfo:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 901
    return-void
.end method

.method private getScreenOrientation()I
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/16 v7, 0x9

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2251
    const-string v8, "window"

    invoke-virtual {p0, v8}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 2252
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 2253
    .local v1, "display":Landroid/view/Display;
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getScreenRotation()I

    move-result v2

    .line 2261
    .local v2, "rot":I
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v9

    if-le v8, v9, :cond_3

    move v0, v5

    .line 2262
    .local v0, "defaultWide":Z
    :goto_0
    if-eq v2, v5, :cond_0

    const/4 v8, 0x3

    if-ne v2, v8, :cond_1

    .line 2263
    :cond_0
    if-eqz v0, :cond_4

    move v0, v4

    .line 2264
    :cond_1
    :goto_1
    if-eqz v0, :cond_6

    .line 2265
    packed-switch v2, :pswitch_data_0

    .line 2300
    :cond_2
    :goto_2
    :pswitch_0
    return v4

    .end local v0    # "defaultWide":Z
    :cond_3
    move v0, v4

    .line 2261
    goto :goto_0

    .restart local v0    # "defaultWide":Z
    :cond_4
    move v0, v5

    .line 2263
    goto :goto_1

    :pswitch_1
    move v4, v5

    .line 2269
    goto :goto_2

    .line 2273
    :pswitch_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v6, :cond_2

    move v4, v6

    goto :goto_2

    .line 2278
    :pswitch_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_5

    move v5, v7

    :cond_5
    move v4, v5

    goto :goto_2

    .line 2284
    :cond_6
    packed-switch v2, :pswitch_data_1

    goto :goto_2

    :pswitch_4
    move v4, v5

    .line 2286
    goto :goto_2

    .line 2292
    :pswitch_5
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_7

    :goto_3
    move v4, v7

    goto :goto_2

    :cond_7
    move v7, v5

    .line 2293
    goto :goto_3

    .line 2297
    :pswitch_6
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v6, :cond_8

    :goto_4
    move v4, v6

    goto :goto_2

    :cond_8
    move v6, v4

    .line 2298
    goto :goto_4

    .line 2265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2284
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getScreenRotation()I
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 2235
    const-string v4, "window"

    invoke-virtual {p0, v4}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 2236
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2237
    .local v0, "display":Landroid/view/Display;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x8

    if-lt v4, v6, :cond_0

    .line 2239
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "getRotation"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2240
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 2245
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .line 2241
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move v4, v5

    .line 2242
    goto :goto_0

    .line 2245
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v4

    goto :goto_0
.end method

.method private handleHardwareAccelerationError()V
    .locals 4

    .prologue
    .line 1114
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHardwareAccelerationError:Z

    .line 1115
    iget-boolean v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSwitchingView:Z

    if-eqz v1, :cond_1

    .line 1146
    :cond_0
    :goto_0
    return-void

    .line 1117
    :cond_1
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v1}, Lorg/videolan/libvlc/LibVLC;->stop()V

    .line 1118
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1119
    const v2, 0x7f0c0239

    new-instance v3, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$23;

    invoke-direct {v3, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$23;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1129
    const v2, 0x7f0c023b

    new-instance v3, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$24;

    invoke-direct {v3, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$24;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1135
    new-instance v2, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$25;

    invoke-direct {v2, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$25;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1141
    const v2, 0x7f0c007b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1142
    const v2, 0x7f0c007c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1143
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1144
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1145
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private handleVout(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1149
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mEndReached:Z

    if-nez v0, :cond_0

    .line 1151
    const-string v0, "VLC/VideoPlayerActivity"

    const-string v1, "Video track lost, switching to audio"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSwitchingView:Z

    .line 1153
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->finish()V

    .line 1155
    :cond_0
    return-void
.end method

.method private hideInfo()V
    .locals 1

    .prologue
    .line 893
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->hideInfo(I)V

    .line 894
    return-void
.end method

.method private hideInfo(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 886
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 887
    return-void
.end method

.method private hideOverlay(Z)V
    .locals 6
    .param p1, "fromUser"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x10a0001

    const/4 v2, 0x4

    .line 1856
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mShowing:Z

    if-eqz v0, :cond_7

    .line 1857
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1858
    const-string v0, "VLC/VideoPlayerActivity"

    const-string v1, "remove View!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayTips:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayTips:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1860
    :cond_0
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mIsLocked:Z

    if-nez v0, :cond_2

    .line 1861
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayHeader:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1862
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayHeader:Landroid/view/View;

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1863
    :cond_1
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayOption:Landroid/view/View;

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1864
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayProgress:Landroid/view/View;

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1865
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPlayPause:Landroid/widget/ImageButton;

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1866
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mMenu:Landroid/widget/ImageButton;

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1868
    :cond_2
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPresentation:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

    if-eqz v0, :cond_3

    .line 1869
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayBackground:Landroid/view/View;

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1870
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1872
    :cond_3
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayUseStatusBar:Z

    if-eqz v0, :cond_6

    .line 1873
    invoke-direct {p0, v4}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setActionBarVisibility(Z)V

    .line 1876
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayOption:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1877
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1878
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPlayPause:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1879
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1880
    iput-boolean v4, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mShowing:Z

    .line 1881
    invoke-direct {p0, v5}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->dimStatusBar(Z)V

    .line 1890
    :cond_5
    :goto_1
    return-void

    .line 1874
    :cond_6
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayHeader:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1875
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1882
    :cond_7
    if-nez p1, :cond_5

    .line 1888
    invoke-direct {p0, v5}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->dimStatusBar(Z)V

    goto :goto_1
.end method

.method private initBrightnessTouch()V
    .locals 5

    .prologue
    .line 1460
    const v0, 0x3c23d70a    # 0.01f

    .line 1463
    .local v0, "brightnesstemp":F
    :try_start_0
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1464
    const-string v4, "screen_brightness"

    .line 1463
    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    int-to-float v3, v3

    .line 1464
    const/high16 v4, 0x437f0000    # 255.0f

    .line 1463
    div-float v0, v3, v4

    .line 1469
    :goto_0
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1470
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1471
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1472
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mIsFirstBrightnessGesture:Z

    .line 1473
    return-void

    .line 1465
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v1

    .line 1467
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private loadMedia()V
    .locals 34

    .prologue
    .line 2022
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    .line 2023
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 2024
    .local v32, "title":Ljava/lang/String;
    const/4 v13, 0x0

    .line 2025
    .local v13, "dontParse":Z
    const/16 v18, 0x0

    .line 2026
    .local v18, "fromStart":Z
    const/16 v23, 0x0

    .line 2027
    .local v23, "itemTitle":Ljava/lang/String;
    const/16 v22, -0x1

    .line 2028
    .local v22, "itemPosition":I
    const-wide/16 v19, -0x1

    .line 2030
    .local v19, "intentPosition":J
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 2031
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2033
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 2034
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 2035
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2038
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "media"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2039
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2041
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 2042
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_data"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2041
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2043
    .local v12, "cursor":Landroid/database/Cursor;
    if-eqz v12, :cond_2

    .line 2044
    const-string v2, "_data"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 2045
    .local v11, "column_index":I
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2046
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/videolan/libvlc/LibVLC;->PathToURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    .line 2047
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2110
    .end local v11    # "column_index":I
    .end local v12    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2111
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "position"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v19

    .line 2124
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurface:Landroid/view/SurfaceView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    .line 2126
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    if-nez v2, :cond_c

    .line 2231
    :goto_2
    return-void

    .line 2049
    :catch_0
    move-exception v15

    .line 2050
    .local v15, "e":Ljava/lang/Exception;
    const-string v2, "VLC/VideoPlayerActivity"

    const-string v3, "Couldn\'t read the file from media or MMS"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    invoke-direct/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->encounteredError()V

    goto :goto_0

    .line 2056
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.fsck.k9.attachmentprovider"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2057
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gmail-ls"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2059
    :cond_5
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 2060
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_display_name"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2059
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2061
    .restart local v12    # "cursor":Landroid/database/Cursor;
    if-eqz v12, :cond_2

    .line 2062
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2063
    const-string v2, "_display_name"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2064
    .local v17, "filename":Ljava/lang/String;
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2065
    const-string v2, "VLC/VideoPlayerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Getting file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from content:// URI"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v21

    .line 2068
    .local v21, "is":Ljava/io/InputStream;
    new-instance v27, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/Download/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 2069
    .local v27, "os":Ljava/io/OutputStream;
    const/16 v2, 0x400

    new-array v9, v2, [B

    .line 2070
    .local v9, "buffer":[B
    const/4 v10, 0x0

    .line 2071
    .local v10, "bytesRead":I
    :goto_3
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-gez v10, :cond_6

    .line 2074
    invoke-virtual/range {v27 .. v27}, Ljava/io/OutputStream;->close()V

    .line 2075
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V

    .line 2076
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/Download/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/videolan/libvlc/LibVLC;->PathToURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2078
    .end local v9    # "buffer":[B
    .end local v10    # "bytesRead":I
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v17    # "filename":Ljava/lang/String;
    .end local v21    # "is":Ljava/io/InputStream;
    .end local v27    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v15

    .line 2079
    .restart local v15    # "e":Ljava/lang/Exception;
    const-string v2, "VLC/VideoPlayerActivity"

    const-string v3, "Couldn\'t download file from mail URI"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    invoke-direct/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->encounteredError()V

    goto/16 :goto_0

    .line 2072
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v9    # "buffer":[B
    .restart local v10    # "bytesRead":I
    .restart local v12    # "cursor":Landroid/database/Cursor;
    .restart local v17    # "filename":Ljava/lang/String;
    .restart local v21    # "is":Ljava/io/InputStream;
    .restart local v27    # "os":Ljava/io/OutputStream;
    :cond_6
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, v27

    invoke-virtual {v0, v9, v2, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 2086
    .end local v9    # "buffer":[B
    .end local v10    # "bytesRead":I
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v17    # "filename":Ljava/lang/String;
    .end local v21    # "is":Ljava/io/InputStream;
    .end local v27    # "os":Ljava/io/OutputStream;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    goto/16 :goto_0

    .line 2089
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 2091
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    .line 2093
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    const-string v3, "vlc://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2094
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    .line 2097
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2099
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 2100
    :catch_2
    move-exception v15

    .line 2101
    .local v15, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "VLC/VideoPlayerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UnsupportedEncodingException while decoding MRL "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2105
    .end local v15    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_a
    const-string v2, "VLC/VideoPlayerActivity"

    const-string v3, "Couldn\'t understand the intent"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    invoke-direct/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->encounteredError()V

    goto/16 :goto_0

    .line 2114
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2115
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "org.videolan.vlc.gui.video.PLAY_FROM_VIDEOGRID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2116
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2117
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "itemLocation"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    .line 2118
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "itemTitle"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 2119
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "dontParse"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 2120
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "fromStart"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    .line 2121
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "itemPosition"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v22

    goto/16 :goto_1

    .line 2131
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    if-eqz v2, :cond_e

    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isKitKatOrLater()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2132
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    .line 2133
    .local v24, "locationLC":Ljava/lang/String;
    const-string v2, ".ts"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 2134
    const-string v2, ".tts"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 2135
    const-string v2, ".m2t"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 2136
    const-string v2, ".mts"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 2137
    const-string v2, ".m2ts"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2138
    :cond_d
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mDisabledHardwareAcceleration:Z

    .line 2139
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v2}, Lorg/videolan/libvlc/LibVLC;->getHardwareAcceleration()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPreviousHardwareAccelerationMode:I

    .line 2140
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/videolan/libvlc/LibVLC;->setHardwareAcceleration(I)V

    .line 2145
    .end local v24    # "locationLC":Ljava/lang/String;
    :cond_e
    if-eqz v13, :cond_16

    if-ltz v22, :cond_16

    .line 2147
    const-string v2, "VLC/VideoPlayerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Continuing playback from AudioService at index "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->savedIndexPosition:I

    .line 2149
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v2}, Lorg/videolan/libvlc/LibVLC;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_15

    .line 2151
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->savedIndexPosition:I

    invoke-virtual {v2, v3}, Lorg/videolan/libvlc/LibVLC;->playIndex(I)V

    .line 2152
    const/4 v13, 0x0

    .line 2158
    :goto_4
    invoke-direct/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->updateNavStatus()V

    .line 2170
    :cond_f
    :goto_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mCanSeek:Z

    .line 2172
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1b

    if-nez v13, :cond_1b

    .line 2174
    invoke-static {}, Lorg/videolan/vlc/MediaDatabase;->getInstance()Lorg/videolan/vlc/MediaDatabase;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/videolan/vlc/MediaDatabase;->getMedia(Ljava/lang/String;)Lorg/videolan/libvlc/Media;

    move-result-object v25

    .line 2175
    .local v25, "media":Lorg/videolan/libvlc/Media;
    if-eqz v25, :cond_18

    .line 2177
    invoke-virtual/range {v25 .. v25}, Lorg/videolan/libvlc/Media;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_10

    if-nez v18, :cond_10

    .line 2178
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual/range {v25 .. v25}, Lorg/videolan/libvlc/Media;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/videolan/libvlc/LibVLC;->setTime(J)J

    .line 2181
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "fromStart"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2183
    invoke-virtual/range {v25 .. v25}, Lorg/videolan/libvlc/Media;->getAudioTrack()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLastAudioTrack:I

    .line 2184
    invoke-virtual/range {v25 .. v25}, Lorg/videolan/libvlc/Media;->getSpuTrack()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLastSpuTrack:I

    .line 2199
    :cond_11
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v3, "VideoSubtitleFiles"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 2200
    .local v31, "subtitleList_serialized":Ljava/lang/String;
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 2201
    .local v28, "prefsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v31, :cond_12

    .line 2202
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2204
    .local v8, "bis":Ljava/io/ByteArrayInputStream;
    :try_start_4
    new-instance v26, Ljava/io/ObjectInputStream;

    move-object/from16 v0, v26

    invoke-direct {v0, v8}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2205
    .local v26, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual/range {v26 .. v26}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    move-object/from16 v28, v0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/StreamCorruptedException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 2210
    .end local v8    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v26    # "ois":Ljava/io/ObjectInputStream;
    :cond_12
    :goto_7
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 2217
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v32

    .line 2221
    :goto_9
    const-string v2, "file:"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2222
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v32

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v32

    .line 2223
    const/16 v2, 0x2e

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 2224
    .local v14, "dotIndex":I
    const/4 v2, -0x1

    if-eq v14, v2, :cond_14

    .line 2225
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    .line 2230
    .end local v14    # "dotIndex":I
    .end local v25    # "media":Lorg/videolan/libvlc/Media;
    .end local v28    # "prefsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v31    # "subtitleList_serialized":Ljava/lang/String;
    :cond_14
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTitle:Landroid/widget/TextView;

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2155
    :cond_15
    invoke-direct/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->stopLoadingAnimation()V

    .line 2156
    invoke-direct/range {p0 .. p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showOverlay()V

    goto/16 :goto_4

    .line 2159
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->savedIndexPosition:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_17

    .line 2160
    invoke-static {}, Lorg/videolan/vlc/audio/AudioServiceController;->getInstance()Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/videolan/vlc/audio/AudioServiceController;->stop()V

    .line 2161
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v2}, Lorg/videolan/libvlc/LibVLC;->setMediaList()V

    .line 2162
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->savedIndexPosition:I

    invoke-virtual {v2, v3}, Lorg/videolan/libvlc/LibVLC;->playIndex(I)V

    goto/16 :goto_5

    .line 2163
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_f

    if-nez v13, :cond_f

    .line 2164
    invoke-static {}, Lorg/videolan/vlc/audio/AudioServiceController;->getInstance()Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/videolan/vlc/audio/AudioServiceController;->stop()V

    .line 2165
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v2}, Lorg/videolan/libvlc/LibVLC;->setMediaList()V

    .line 2166
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v2}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v2

    new-instance v3, Lorg/videolan/libvlc/Media;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/videolan/libvlc/MediaList;->add(Lorg/videolan/libvlc/Media;)V

    .line 2167
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v2}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/videolan/libvlc/MediaList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->savedIndexPosition:I

    .line 2168
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->savedIndexPosition:I

    invoke-virtual {v2, v3}, Lorg/videolan/libvlc/LibVLC;->playIndex(I)V

    goto/16 :goto_5

    .line 2187
    .restart local v25    # "media":Lorg/videolan/libvlc/Media;
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v3, "VideoResumeTime"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v29

    .line 2188
    .local v29, "rTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    .line 2189
    .local v16, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "VideoResumeTime"

    const-wide/16 v3, -0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2190
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2191
    const-wide/16 v2, 0x0

    cmp-long v2, v29, v2

    if-lez v2, :cond_19

    .line 2192
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    move-wide/from16 v0, v29

    invoke-virtual {v2, v0, v1}, Lorg/videolan/libvlc/LibVLC;->setTime(J)J

    .line 2194
    :cond_19
    const-wide/16 v2, 0x0

    cmp-long v2, v19, v2

    if-lez v2, :cond_11

    .line 2195
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    move-wide/from16 v0, v19

    invoke-virtual {v2, v0, v1}, Lorg/videolan/libvlc/LibVLC;->setTime(J)J

    goto/16 :goto_6

    .line 2210
    .end local v16    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v29    # "rTime":J
    .restart local v28    # "prefsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v31    # "subtitleList_serialized":Ljava/lang/String;
    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 2211
    .local v33, "x":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitleSelectedFiles:Ljava/util/ArrayList;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 2212
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitleSelectedFiles:Ljava/util/ArrayList;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 2227
    .end local v25    # "media":Lorg/videolan/libvlc/Media;
    .end local v28    # "prefsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v31    # "subtitleList_serialized":Ljava/lang/String;
    .end local v33    # "x":Ljava/lang/String;
    :cond_1b
    if-eqz v23, :cond_14

    .line 2228
    move-object/from16 v32, v23

    goto/16 :goto_a

    .line 2219
    .restart local v25    # "media":Lorg/videolan/libvlc/Media;
    .restart local v28    # "prefsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v31    # "subtitleList_serialized":Ljava/lang/String;
    :catch_3
    move-exception v2

    goto/16 :goto_9

    .line 2218
    :catch_4
    move-exception v2

    goto/16 :goto_9

    .line 2208
    .restart local v8    # "bis":Ljava/io/ByteArrayInputStream;
    :catch_5
    move-exception v2

    goto/16 :goto_7

    .line 2207
    :catch_6
    move-exception v2

    goto/16 :goto_7

    .line 2206
    :catch_7
    move-exception v2

    goto/16 :goto_7
.end method

.method private lockScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 822
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mScreenOrientation:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 823
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 824
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setRequestedOrientation(I)V

    .line 827
    :goto_0
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getScreenOrientation()I

    move-result v0

    iput v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mScreenOrientationLock:I

    .line 829
    :cond_0
    const v0, 0x7f0c0048

    const/16 v1, 0x3e8

    invoke-direct {p0, v0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showInfo(II)V

    .line 830
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLock:Landroid/widget/ImageButton;

    const v1, 0x7f020209

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 831
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 832
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 833
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLength:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 834
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->hideOverlay(Z)V

    .line 835
    return-void

    .line 826
    :cond_1
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getScreenOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private mediaRouterAddCallback(Z)V
    .locals 3
    .param p1, "add"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 594
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isJellyBeanMR1OrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mMediaRouter:Landroid/media/MediaRouter;

    if-nez v0, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    if-eqz p1, :cond_2

    .line 597
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mMediaRouter:Landroid/media/MediaRouter;

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    goto :goto_0

    .line 599
    :cond_2
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    goto :goto_0
.end method

.method private pause()V
    .locals 2

    .prologue
    .line 2012
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->pause()V

    .line 2013
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurface:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    .line 2014
    return-void
.end method

.method private play()V
    .locals 2

    .prologue
    .line 2004
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->play()V

    .line 2005
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurface:Landroid/view/SurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    .line 2006
    return-void
.end method

.method private removePresentation()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 2338
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mMediaRouter:Landroid/media/MediaRouter;

    if-nez v0, :cond_0

    .line 2348
    :goto_0
    return-void

    .line 2342
    :cond_0
    const-string v0, "VLC/VideoPlayerActivity"

    const-string v1, "Dismissing presentation because the current route no longer has a presentation display."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->pause()V

    .line 2345
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->finish()V

    .line 2346
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPresentation:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPresentation:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->dismiss()V

    .line 2347
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPresentation:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

    goto :goto_0
.end method

.method private resizeVideo()V
    .locals 3

    .prologue
    const/16 v2, 0x3e8

    .line 1719
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mCurrentSize:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 1720
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mCurrentSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mCurrentSize:I

    .line 1724
    :goto_0
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->changeSurfaceSize()V

    .line 1725
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mCurrentSize:I

    packed-switch v0, :pswitch_data_0

    .line 1748
    :goto_1
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showOverlay()V

    .line 1749
    return-void

    .line 1722
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mCurrentSize:I

    goto :goto_0

    .line 1727
    :pswitch_0
    const v0, 0x7f0c004a

    invoke-direct {p0, v0, v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showInfo(II)V

    goto :goto_1

    .line 1730
    :pswitch_1
    const v0, 0x7f0c004b

    invoke-direct {p0, v0, v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showInfo(II)V

    goto :goto_1

    .line 1733
    :pswitch_2
    const v0, 0x7f0c004c

    invoke-direct {p0, v0, v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showInfo(II)V

    goto :goto_1

    .line 1736
    :pswitch_3
    const v0, 0x7f0c004d

    invoke-direct {p0, v0, v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showInfo(II)V

    goto :goto_1

    .line 1739
    :pswitch_4
    const-string v0, "16:9"

    invoke-direct {p0, v0, v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showInfo(Ljava/lang/String;I)V

    goto :goto_1

    .line 1742
    :pswitch_5
    const-string v0, "4:3"

    invoke-direct {p0, v0, v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showInfo(Ljava/lang/String;I)V

    goto :goto_1

    .line 1745
    :pswitch_6
    const v0, 0x7f0c004e

    invoke-direct {p0, v0, v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showInfo(II)V

    goto :goto_1

    .line 1725
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private selectAudioTrack()V
    .locals 8

    .prologue
    .line 1537
    iget-object v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioTracksList:Ljava/util/Map;

    if-nez v5, :cond_0

    .line 1576
    :goto_0
    return-void

    .line 1539
    :cond_0
    iget-object v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioTracksList:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    .line 1540
    .local v0, "arrList":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1541
    .local v3, "i":I
    const/4 v4, 0x0

    .line 1542
    .local v4, "listPosition":I
    iget-object v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioTracksList:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1549
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1550
    const v6, 0x7f0c0052

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1551
    new-instance v6, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$26;

    invoke-direct {v6, p0, v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$26;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;[Ljava/lang/String;)V

    invoke-virtual {v5, v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1572
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1573
    .local v1, "dialog":Landroid/app/AlertDialog;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1574
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1575
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1542
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1543
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v0, v3

    .line 1545
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v7, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v7}, Lorg/videolan/libvlc/LibVLC;->getAudioTrack()I

    move-result v7

    if-ne v5, v7, :cond_2

    .line 1546
    move v4, v3

    .line 1547
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private selectSubtitles()V
    .locals 8

    .prologue
    .line 1589
    iget-object v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitleTracksList:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    .line 1590
    .local v0, "arrList":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1591
    .local v3, "i":I
    const/4 v4, 0x0

    .line 1592
    .local v4, "listPosition":I
    iget-object v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitleTracksList:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1600
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1601
    const v6, 0x7f0c0054

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1602
    new-instance v6, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$27;

    invoke-direct {v6, p0, v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$27;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;[Ljava/lang/String;)V

    invoke-virtual {v5, v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1623
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1624
    .local v1, "dialog":Landroid/app/AlertDialog;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1625
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1626
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1627
    return-void

    .line 1592
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1593
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v0, v3

    .line 1595
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v7, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v7}, Lorg/videolan/libvlc/LibVLC;->getSpuTrack()I

    move-result v7

    if-ne v5, v7, :cond_1

    .line 1596
    move v4, v3

    .line 1597
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private setActionBarVisibility(Z)V
    .locals 1
    .param p1, "show"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1815
    if-eqz p1, :cond_0

    .line 1816
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 1819
    :goto_0
    return-void

    .line 1818
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_0
.end method

.method private setAudioVolume(I)V
    .locals 3
    .param p1, "vol"    # I

    .prologue
    .line 1440
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1441
    const/4 v0, 0x1

    iput v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTouchAction:I

    .line 1442
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x7f0c0058

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-direct {p0, v0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showInfo(Ljava/lang/String;I)V

    .line 1443
    return-void
.end method

.method private setESTrackLists(Z)V
    .locals 5
    .param p1, "force"    # Z

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1975
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioTracksList:Ljava/util/Map;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 1976
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->getAudioTracksCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_4

    .line 1977
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->getAudioTrackDescription()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioTracksList:Ljava/util/Map;

    .line 1978
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioTrack:Landroid/widget/ImageButton;

    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioTrackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1979
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioTrack:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1986
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitleTracksList:Ljava/util/Map;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_3

    .line 1987
    :cond_2
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->getSpuTracksCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 1988
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->getSpuTrackDescription()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitleTracksList:Ljava/util/Map;

    .line 1989
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitle:Landroid/widget/ImageButton;

    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitlesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1990
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitle:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1997
    :cond_3
    :goto_1
    return-void

    .line 1982
    :cond_4
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioTrack:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1983
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioTrack:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1993
    :cond_5
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitle:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1994
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitle:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private setESTracks()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1964
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLastAudioTrack:I

    if-ltz v0, :cond_0

    .line 1965
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    iget v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLastAudioTrack:I

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/LibVLC;->setAudioTrack(I)I

    .line 1966
    iput v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLastAudioTrack:I

    .line 1968
    :cond_0
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLastSpuTrack:I

    if-lt v0, v2, :cond_1

    .line 1969
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    iget v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLastSpuTrack:I

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/LibVLC;->setSpuTrack(I)I

    .line 1970
    const/4 v0, -0x2

    iput v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLastSpuTrack:I

    .line 1972
    :cond_1
    return-void
.end method

.method private setOverlayProgress()I
    .locals 9

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x0

    .line 1936
    iget-object v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    if-nez v5, :cond_0

    .line 1960
    :goto_0
    return v4

    .line 1939
    :cond_0
    iget-object v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v5}, Lorg/videolan/libvlc/LibVLC;->getTime()J

    move-result-wide v7

    long-to-int v3, v7

    .line 1940
    .local v3, "time":I
    iget-object v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v5}, Lorg/videolan/libvlc/LibVLC;->getLength()J

    move-result-wide v7

    long-to-int v1, v7

    .line 1941
    .local v1, "length":I
    if-nez v1, :cond_1

    .line 1942
    invoke-static {}, Lorg/videolan/vlc/MediaDatabase;->getInstance()Lorg/videolan/vlc/MediaDatabase;

    move-result-object v5

    iget-object v7, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lorg/videolan/vlc/MediaDatabase;->getMedia(Ljava/lang/String;)Lorg/videolan/libvlc/Media;

    move-result-object v2

    .line 1943
    .local v2, "media":Lorg/videolan/libvlc/Media;
    if-eqz v2, :cond_1

    .line 1944
    invoke-virtual {v2}, Lorg/videolan/libvlc/Media;->getLength()J

    move-result-wide v7

    long-to-int v1, v7

    .line 1948
    .end local v2    # "media":Lorg/videolan/libvlc/Media;
    :cond_1
    iget-boolean v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mEnableJumpButtons:Z

    if-eqz v5, :cond_5

    if-lez v1, :cond_5

    const/4 v0, 0x1

    .line 1949
    .local v0, "isSeekable":Z
    :goto_1
    iget-object v7, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mBackward:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    move v5, v4

    :goto_2
    invoke-virtual {v7, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1950
    iget-object v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mForward:Landroid/widget/ImageButton;

    if-eqz v0, :cond_7

    :goto_3
    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1951
    iget-object v4, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1952
    iget-object v4, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1953
    iget-object v4, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSysTime:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 1954
    iget-object v4, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSysTime:Landroid/widget/TextView;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1955
    :cond_2
    if-ltz v3, :cond_3

    iget-object v4, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTime:Landroid/widget/TextView;

    int-to-long v5, v3

    invoke-static {v5, v6}, Lorg/videolan/vlc/util/Strings;->millisToString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1956
    :cond_3
    if-ltz v1, :cond_4

    iget-object v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLength:Landroid/widget/TextView;

    iget-boolean v4, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mDisplayRemainingTime:Z

    if-eqz v4, :cond_8

    if-lez v1, :cond_8

    .line 1957
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "- "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int v6, v1, v3

    int-to-long v6, v6

    invoke-static {v6, v7}, Lorg/videolan/vlc/util/Strings;->millisToString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1956
    :goto_4
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    move v4, v3

    .line 1960
    goto/16 :goto_0

    .end local v0    # "isSeekable":Z
    :cond_5
    move v0, v4

    .line 1948
    goto :goto_1

    .restart local v0    # "isSeekable":Z
    :cond_6
    move v5, v6

    .line 1949
    goto :goto_2

    :cond_7
    move v4, v6

    .line 1950
    goto :goto_3

    .line 1958
    :cond_8
    int-to-long v6, v1

    invoke-static {v6, v7}, Lorg/videolan/vlc/util/Strings;->millisToString(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_4
.end method

.method private showInfo(II)V
    .locals 4
    .param p1, "textid"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v3, 0x4

    .line 865
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mInfo:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 866
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 867
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 868
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 869
    return-void
.end method

.method private showInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 876
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mInfo:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 877
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 878
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 879
    return-void
.end method

.method private showInfo(Ljava/lang/String;I)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    const/4 v3, 0x4

    .line 858
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mInfo:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 859
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 860
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 861
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 862
    return-void
.end method

.method private showNavMenu()V
    .locals 2

    .prologue
    .line 1639
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/LibVLC;->setTitle(I)V

    .line 1640
    return-void
.end method

.method private showOverlay()V
    .locals 1

    .prologue
    .line 1810
    const/16 v0, 0xfa0

    invoke-direct {p0, v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showOverlay(I)V

    .line 1811
    return-void
.end method

.method private showOverlay(I)V
    .locals 5
    .param p1, "timeout"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1825
    iget-boolean v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mIsNavMenu:Z

    if-eqz v1, :cond_0

    .line 1849
    :goto_0
    return-void

    .line 1827
    :cond_0
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1828
    iget-boolean v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mShowing:Z

    if-nez v1, :cond_3

    .line 1829
    iput-boolean v4, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mShowing:Z

    .line 1830
    iget-boolean v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mIsLocked:Z

    if-nez v1, :cond_2

    .line 1831
    iget-boolean v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayUseStatusBar:Z

    if-eqz v1, :cond_5

    .line 1832
    invoke-direct {p0, v4}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setActionBarVisibility(Z)V

    .line 1835
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayOption:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1836
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPlayPause:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1837
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mMenu:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1838
    invoke-direct {p0, v3}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->dimStatusBar(Z)V

    .line 1840
    :cond_2
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayProgress:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1841
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPresentation:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayBackground:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1843
    :cond_3
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1844
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_4

    .line 1845
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1846
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1848
    :cond_4
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->updateOverlayPausePlay()V

    goto :goto_0

    .line 1833
    .end local v0    # "msg":Landroid/os/Message;
    :cond_5
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayHeader:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1834
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayHeader:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 649
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 650
    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "fromStart"    # Ljava/lang/Boolean;

    .prologue
    .line 653
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 654
    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "position"    # I
    .param p4, "dontParse"    # Ljava/lang/Boolean;

    .prologue
    .line 661
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 662
    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "position"    # I
    .param p4, "dontParse"    # Ljava/lang/Boolean;
    .param p5, "fromStart"    # Ljava/lang/Boolean;

    .prologue
    .line 665
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 666
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "org.videolan.vlc.gui.video.PLAY_FROM_VIDEOGRID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    const-string v1, "itemLocation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 668
    const-string v1, "itemTitle"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    const-string v1, "dontParse"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 670
    const-string v1, "fromStart"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 671
    const-string v1, "itemPosition"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 673
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 674
    const/high16 v1, 0x18000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 676
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 677
    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "dontParse"    # Ljava/lang/Boolean;

    .prologue
    .line 657
    const/4 v3, -0x1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 658
    return-void
.end method

.method private startLoadingAnimation()V
    .locals 8

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 2429
    new-instance v7, Landroid/view/animation/AnimationSet;

    invoke-direct {v7, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2430
    .local v7, "anim":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 2431
    .local v0, "rotate":Landroid/view/animation/RotateAnimation;
    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 2432
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2433
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 2434
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2435
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLoading:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2436
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLoadingText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2437
    return-void
.end method

.method private startPlayback()V
    .locals 5

    .prologue
    .line 603
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->loadMedia()V

    .line 611
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$19;

    invoke-direct {v2, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$19;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    .line 619
    const-wide/16 v3, 0x1f4

    .line 611
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 622
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitleSelectedFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 623
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitleSelectedFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 628
    :cond_0
    return-void

    .line 623
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 624
    .local v0, "file":Ljava/lang/String;
    const-string v2, "VLC/VideoPlayerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Adding user-selected subtitle "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v2, v0}, Lorg/videolan/libvlc/LibVLC;->addSubtitleTrack(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopLoadingAnimation()V
    .locals 2

    .prologue
    .line 2443
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLoading:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2444
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLoading:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2445
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLoadingText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2446
    return-void
.end method

.method private switchToAudioMode()V
    .locals 3

    .prologue
    .line 1158
    iget-boolean v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHardwareAccelerationError:Z

    if-eqz v1, :cond_0

    .line 1168
    :goto_0
    return-void

    .line 1160
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSwitchingView:Z

    .line 1162
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1163
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1164
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/videolan/vlc/gui/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1165
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1167
    .end local v0    # "i":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->finish()V

    goto :goto_0
.end method

.method private unlockScreen()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 841
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mScreenOrientation:I

    if-ne v0, v1, :cond_0

    .line 842
    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setRequestedOrientation(I)V

    .line 843
    :cond_0
    const v0, 0x7f0c0049

    const/16 v1, 0x3e8

    invoke-direct {p0, v0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showInfo(II)V

    .line 844
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLock:Landroid/widget/ImageButton;

    const v1, 0x7f020208

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 845
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 846
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 847
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLength:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 848
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mShowing:Z

    .line 849
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showOverlay()V

    .line 850
    return-void
.end method

.method private updateMute()V
    .locals 5

    .prologue
    const/16 v4, 0x3e8

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 1446
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mMute:Z

    if-nez v0, :cond_0

    .line 1447
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVol:I

    iput v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVolSave:I

    .line 1448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mMute:Z

    .line 1449
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, v2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1450
    const v0, 0x7f0c005a

    invoke-direct {p0, v0, v4}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showInfo(II)V

    .line 1457
    :goto_0
    return-void

    .line 1452
    :cond_0
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVolSave:I

    iput v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVol:I

    .line 1453
    iput-boolean v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mMute:Z

    .line 1454
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVol:I

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1455
    const v0, 0x7f0c0059

    invoke-direct {p0, v0, v4}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showInfo(II)V

    goto :goto_0
.end method

.method private updateNavStatus()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2460
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v0, v2}, Lorg/videolan/libvlc/LibVLC;->getChapterCountForTitle(I)I

    move-result v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->getTitleCount()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHasMenu:Z

    .line 2461
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHasMenu:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->getTitle()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mIsNavMenu:Z

    .line 2467
    const-string v0, "VLC/VideoPlayerActivity"

    .line 2468
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateNavStatus: getChapterCountForTitle(0) = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2469
    iget-object v4, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v4, v2}, Lorg/videolan/libvlc/LibVLC;->getChapterCountForTitle(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2470
    const-string v4, ", getTitleCount() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v4}, Lorg/videolan/libvlc/LibVLC;->getTitleCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2468
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2467
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mIsNavMenu:Z

    if-eqz v0, :cond_2

    .line 2476
    invoke-direct {p0, v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->hideOverlay(Z)V

    .line 2489
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 2460
    goto :goto_0

    :cond_1
    move v0, v2

    .line 2461
    goto :goto_1

    .line 2478
    :cond_2
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHasMenu:Z

    if-eqz v0, :cond_3

    .line 2479
    invoke-direct {p0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setESTrackLists(Z)V

    .line 2480
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setESTracks()V

    .line 2483
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mNavMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2484
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mNavMenu:Landroid/widget/ImageButton;

    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mNavMenuListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 2487
    :cond_3
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mNavMenu:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateOverlayPausePlay()V
    .locals 2

    .prologue
    .line 1921
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    if-nez v0, :cond_0

    .line 1930
    :goto_0
    return-void

    .line 1924
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPresentation:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

    if-nez v0, :cond_2

    .line 1925
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPlayPause:Landroid/widget/ImageButton;

    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f020237

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 1926
    :cond_1
    const v0, 0x7f020245

    goto :goto_1

    .line 1928
    :cond_2
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPlayPause:Landroid/widget/ImageButton;

    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f020239

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 1929
    :cond_3
    const v0, 0x7f020247

    goto :goto_2
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 712
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    .line 715
    .local v1, "mInputDevice":Landroid/view/InputDevice;
    const/4 v7, 0x0

    .line 714
    invoke-static {p1, v1, v7}, Lorg/videolan/vlc/util/AndroidDevices;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)F

    move-result v4

    .line 717
    .local v4, "x":F
    const/4 v7, 0x1

    .line 716
    invoke-static {p1, v1, v7}, Lorg/videolan/vlc/util/AndroidDevices;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)F

    move-result v5

    .line 719
    .local v5, "y":F
    const/16 v7, 0xb

    .line 718
    invoke-static {p1, v1, v7}, Lorg/videolan/vlc/util/AndroidDevices;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)F

    move-result v6

    .line 721
    .local v6, "z":F
    const/16 v7, 0xe

    .line 720
    invoke-static {p1, v1, v7}, Lorg/videolan/vlc/util/AndroidDevices;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)F

    move-result v2

    .line 723
    .local v2, "rz":F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLastMove:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x12c

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 724
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v7, v7

    const-wide v9, 0x3fd3333333333333L    # 0.3

    cmpl-double v7, v7, v9

    if-lez v7, :cond_2

    .line 725
    const/4 v7, 0x0

    cmpl-float v7, v4, v7

    if-lez v7, :cond_1

    const/16 v7, 0x2710

    :goto_0
    invoke-virtual {p0, v7}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->seek(I)V

    .line 726
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLastMove:J

    .line 740
    :cond_0
    :goto_1
    const/4 v7, 0x1

    return v7

    .line 725
    :cond_1
    const/16 v7, -0x2710

    goto :goto_0

    .line 727
    :cond_2
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v7, v7

    const-wide v9, 0x3fd3333333333333L    # 0.3

    cmpl-double v7, v7, v9

    if-lez v7, :cond_4

    .line 728
    iget-boolean v7, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mIsFirstBrightnessGesture:Z

    if-eqz v7, :cond_3

    .line 729
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->initBrightnessTouch()V

    .line 730
    :cond_3
    neg-float v7, v5

    const/high16 v8, 0x41200000    # 10.0f

    div-float/2addr v7, v8

    invoke-direct {p0, v7}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->changeBrightness(F)V

    .line 731
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLastMove:J

    goto :goto_1

    .line 732
    :cond_4
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v7, v7

    const-wide v9, 0x3fd3333333333333L    # 0.3

    cmpl-double v7, v7, v9

    if-lez v7, :cond_0

    .line 733
    iget-object v7, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    iput v7, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVol:I

    .line 734
    const/high16 v7, 0x40e00000    # 7.0f

    div-float v7, v2, v7

    iget v8, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioMax:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    neg-int v0, v7

    .line 735
    .local v0, "delta":I
    iget v7, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVol:I

    add-int/2addr v7, v0

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v8, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioMax:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 736
    .local v3, "vol":I
    invoke-direct {p0, v3}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setAudioVolume(I)V

    .line 737
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLastMove:J

    goto :goto_1
.end method

.method public eventHardwareAccelerationError()V
    .locals 3

    .prologue
    .line 1109
    invoke-static {}, Lorg/videolan/libvlc/EventHandler;->getInstance()Lorg/videolan/libvlc/EventHandler;

    move-result-object v0

    .line 1110
    .local v0, "em":Lorg/videolan/libvlc/EventHandler;
    const/16 v1, 0x3000

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/videolan/libvlc/EventHandler;->callback(ILandroid/os/Bundle;)V

    .line 1111
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 632
    if-nez p3, :cond_1

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 635
    const-string v1, "VLC/VideoPlayerActivity"

    const-string v2, "Subtitle selection dialog was cancelled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 639
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 640
    .local v0, "subtitlePath":Ljava/lang/String;
    const/16 v1, 0xa

    if-ne p1, v1, :cond_4

    .line 641
    const-string v1, "VLC/VideoPlayerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Specific subtitle file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitleSelectedFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 642
    :cond_4
    const/16 v1, 0x14

    if-ne p1, v1, :cond_3

    .line 643
    const-string v1, "VLC/VideoPlayerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Generic subtitle file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onClickDismissTips(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2453
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayTips:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2454
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2455
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "video_player_tips_shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2456
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2457
    return-void
.end method

.method public onClickOverlayTips(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2449
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayTips:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2450
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 798
    iget v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoWidth:I

    iget v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoHeight:I

    iget v3, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoVisibleWidth:I

    iget v4, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoVisibleHeight:I

    iget v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSarNum:I

    iget v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSarDen:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setSurfaceSize(IIIIII)V

    .line 799
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 800
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x0

    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 262
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 263
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isJellyBeanMR1OrLater()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 265
    const-string v6, "media_router"

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/MediaRouter;

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mMediaRouter:Landroid/media/MediaRouter;

    .line 266
    new-instance v6, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$15;

    invoke-direct {v6, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$15;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    .line 274
    const-string v6, "VLC/VideoPlayerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "MediaRouter information : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iput-boolean v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayUseStatusBar:Z

    .line 280
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSettings:Landroid/content/SharedPreferences;

    .line 283
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 284
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v13}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    iput v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioMax:I

    .line 286
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v7, "enable_clone_mode"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mEnableCloneMode:Z

    .line 287
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->createPresentation()V

    .line 288
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPresentation:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

    if-nez v6, :cond_6

    const v6, 0x7f0300b1

    :goto_1
    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setContentView(I)V

    .line 290
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isICSOrLater()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 291
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    .line 292
    new-instance v7, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$16;

    invoke-direct {v7, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$16;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    .line 291
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 307
    :cond_0
    iget-boolean v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayUseStatusBar:Z

    if-eqz v6, :cond_7

    .line 308
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mActionBar:Landroid/app/ActionBar;

    .line 309
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v9}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 310
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v9}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 311
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v12}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v10}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 313
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mActionBar:Landroid/app/ActionBar;

    const v7, 0x7f0300b2

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 315
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 317
    .local v5, "view":Landroid/view/ViewGroup;
    new-instance v6, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$17;

    invoke-direct {v6, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$17;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 324
    const v6, 0x7f070312

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTitle:Landroid/widget/TextView;

    .line 325
    iput-object v12, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mBattery:Landroid/widget/TextView;

    iput-object v12, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSysTime:Landroid/widget/TextView;

    iput-object v12, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayHeader:Landroid/view/View;

    .line 333
    .end local v5    # "view":Landroid/view/ViewGroup;
    :goto_2
    const v6, 0x7f070304

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayOption:Landroid/view/View;

    .line 334
    const v6, 0x7f070305

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayProgress:Landroid/view/View;

    .line 335
    const v6, 0x7f070318

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayBackground:Landroid/view/View;

    .line 338
    const v6, 0x7f07030d

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTime:Landroid/widget/TextView;

    .line 339
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTime:Landroid/widget/TextView;

    iget-object v7, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mRemainingTimeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    const v6, 0x7f07030f

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLength:Landroid/widget/TextView;

    .line 341
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLength:Landroid/widget/TextView;

    iget-object v7, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mRemainingTimeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    const v6, 0x7f070303

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mInfo:Landroid/widget/TextView;

    .line 346
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v7, "enable_brightness_gesture"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mEnableBrightnessGesture:Z

    .line 348
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v7, "screen_orientation_value"

    const-string v8, "4"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 347
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mScreenOrientation:I

    .line 350
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v7, "enable_jump_buttons"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mEnableJumpButtons:Z

    .line 351
    const v6, 0x7f070300

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPlayPause:Landroid/widget/ImageButton;

    .line 352
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPlayPause:Landroid/widget/ImageButton;

    iget-object v7, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPlayPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    const v6, 0x7f07030c

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mBackward:Landroid/widget/ImageButton;

    .line 354
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mBackward:Landroid/widget/ImageButton;

    iget-object v7, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mBackwardListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    const v6, 0x7f070310

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mForward:Landroid/widget/ImageButton;

    .line 356
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mForward:Landroid/widget/ImageButton;

    iget-object v7, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mForwardListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    const v6, 0x7f070308

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioTrack:Landroid/widget/ImageButton;

    .line 359
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioTrack:Landroid/widget/ImageButton;

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 360
    const v6, 0x7f070307

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitle:Landroid/widget/ImageButton;

    .line 361
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitle:Landroid/widget/ImageButton;

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 362
    const v6, 0x7f070309

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mNavMenu:Landroid/widget/ImageButton;

    .line 363
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mNavMenu:Landroid/widget/ImageButton;

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 365
    const v6, 0x7f07030b

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLock:Landroid/widget/ImageButton;

    .line 366
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLock:Landroid/widget/ImageButton;

    iget-object v7, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    const v6, 0x7f07030a

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSize:Landroid/widget/ImageButton;

    .line 369
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSize:Landroid/widget/ImageButton;

    iget-object v7, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSizeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    const v6, 0x7f070311

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mMenu:Landroid/widget/ImageButton;

    .line 374
    :try_start_0
    invoke-static {}, Lorg/videolan/vlc/util/VLCInstance;->getLibVlcInstance()Lorg/videolan/libvlc/LibVLC;

    move-result-object v6

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    :try_end_0
    .catch Lorg/videolan/libvlc/LibVlcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    const v6, 0x7f0702fd

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/SurfaceView;

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurface:Landroid/view/SurfaceView;

    .line 381
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v6}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 382
    const v6, 0x7f0702fc

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceFrame:Landroid/widget/FrameLayout;

    .line 383
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v7, "chroma_format"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "chroma":Ljava/lang/String;
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isGingerbreadOrLater()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "YV12"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 385
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const v7, 0x32315659

    invoke-interface {v6, v7}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 392
    :goto_3
    const v6, 0x7f0702fe

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/SurfaceView;

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitlesSurface:Landroid/view/SurfaceView;

    .line 393
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitlesSurface:Landroid/view/SurfaceView;

    invoke-virtual {v6}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitlesSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 394
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitlesSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6, v10}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 395
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitlesSurface:Landroid/view/SurfaceView;

    invoke-virtual {v6, v10}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 396
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPresentation:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

    if-nez v6, :cond_1

    .line 397
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v7, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v6, v7}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 398
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitlesSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v7, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitlesSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v6, v7}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 401
    :cond_1
    const v6, 0x7f07030e

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSeekbar:Landroid/widget/SeekBar;

    .line 402
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSeekbar:Landroid/widget/SeekBar;

    iget-object v7, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 405
    const v6, 0x7f070301

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLoading:Landroid/widget/ImageView;

    .line 406
    const v6, 0x7f070302

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLoadingText:Landroid/widget/TextView;

    .line 407
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->startLoadingAnimation()V

    .line 409
    iput-boolean v9, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSwitchingView:Z

    .line 410
    iput-boolean v9, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHardwareAccelerationError:Z

    .line 411
    iput-boolean v9, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mEndReached:Z

    .line 415
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 416
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "VideoResumeTime"

    const-wide/16 v7, -0x1

    invoke-interface {v2, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 420
    const-string v6, "VideoSubtitleFiles"

    invoke-interface {v2, v6, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 421
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 423
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 424
    .local v4, "filter":Landroid/content/IntentFilter;
    iget-boolean v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayUseStatusBar:Z

    if-nez v6, :cond_2

    .line 425
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 426
    :cond_2
    const-string v6, "org.videolan.vlc.SleepIntent"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 427
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v4}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 429
    const-string v6, "VLC/VideoPlayerActivity"

    .line 430
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Hardware acceleration mode: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 431
    iget-object v8, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v8}, Lorg/videolan/libvlc/LibVLC;->getHardwareAcceleration()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 430
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 429
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v6}, Lorg/videolan/libvlc/LibVLC;->isDirectRendering()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 435
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitlesSurface:Landroid/view/SurfaceView;

    invoke-virtual {v6, v9}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 438
    :cond_3
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v6, v10}, Lorg/videolan/libvlc/LibVLC;->eventVideoPlayerActivityCreated(Z)V

    .line 440
    invoke-static {}, Lorg/videolan/libvlc/EventHandler;->getInstance()Lorg/videolan/libvlc/EventHandler;

    move-result-object v3

    .line 441
    .local v3, "em":Lorg/videolan/libvlc/EventHandler;
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Lorg/videolan/libvlc/EventHandler;->addHandler(Landroid/os/Handler;)V

    .line 443
    invoke-virtual {p0, v13}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setVolumeControlStream(I)V

    .line 446
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPresentation:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

    if-nez v6, :cond_c

    .line 449
    iget v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mScreenOrientation:I

    const/16 v7, 0x64

    if-eq v6, v7, :cond_a

    .line 450
    iget v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mScreenOrientation:I

    .line 449
    :goto_4
    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setRequestedOrientation(I)V

    .line 453
    const v6, 0x7f0702ff

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayTips:Landroid/view/View;

    .line 454
    invoke-static {}, Lorg/videolan/vlc/util/AndroidDevices;->hasTsp()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v7, "video_player_tips_shown"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 455
    :cond_4
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayTips:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 463
    :goto_5
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->updateNavStatus()V

    .line 464
    .end local v0    # "chroma":Ljava/lang/String;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "em":Lorg/videolan/libvlc/EventHandler;
    .end local v4    # "filter":Landroid/content/IntentFilter;
    :goto_6
    return-void

    .line 277
    :cond_5
    iput-boolean v9, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayUseStatusBar:Z

    goto/16 :goto_0

    .line 288
    :cond_6
    const v6, 0x7f0300b5

    goto/16 :goto_1

    .line 327
    :cond_7
    const v6, 0x7f070306

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayHeader:Landroid/view/View;

    .line 329
    const v6, 0x7f070312

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTitle:Landroid/widget/TextView;

    .line 330
    const v6, 0x7f070314

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSysTime:Landroid/widget/TextView;

    .line 331
    const v6, 0x7f070313

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mBattery:Landroid/widget/TextView;

    goto/16 :goto_2

    .line 375
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Lorg/videolan/libvlc/LibVlcException;
    const-string v6, "VLC/VideoPlayerActivity"

    const-string v7, "LibVLC initialisation failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 386
    .end local v1    # "e":Lorg/videolan/libvlc/LibVlcException;
    .restart local v0    # "chroma":Ljava/lang/String;
    :cond_8
    const-string v6, "RV16"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 387
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v7, 0x4

    invoke-interface {v6, v7}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto/16 :goto_3

    .line 389
    :cond_9
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto/16 :goto_3

    .line 451
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "em":Lorg/videolan/libvlc/EventHandler;
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    :cond_a
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getScreenOrientation()I

    move-result v6

    goto :goto_4

    .line 457
    :cond_b
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayTips:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->bringToFront()V

    .line 458
    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mOverlayTips:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    goto :goto_5

    .line 461
    :cond_c
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getScreenOrientation()I

    move-result v6

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setRequestedOrientation(I)V

    goto :goto_5
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 546
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 547
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 549
    invoke-static {}, Lorg/videolan/libvlc/EventHandler;->getInstance()Lorg/videolan/libvlc/EventHandler;

    move-result-object v0

    .line 550
    .local v0, "em":Lorg/videolan/libvlc/EventHandler;
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/EventHandler;->removeHandler(Landroid/os/Handler;)V

    .line 553
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/videolan/libvlc/LibVLC;->eventVideoPlayerActivityCreated(Z)V

    .line 555
    iget-boolean v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mDisabledHardwareAcceleration:Z

    if-eqz v1, :cond_0

    .line 556
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    iget v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPreviousHardwareAccelerationMode:I

    invoke-virtual {v1, v2}, Lorg/videolan/libvlc/LibVLC;->setHardwareAcceleration(I)V

    .line 558
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 559
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 745
    const/16 v1, 0xfa0

    invoke-direct {p0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showOverlay(I)V

    .line 746
    sparse-switch p1, :sswitch_data_0

    .line 792
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 750
    :sswitch_0
    const/16 v1, 0x2710

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->seek(I)V

    goto :goto_0

    .line 755
    :sswitch_1
    const/16 v1, -0x2710

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->seek(I)V

    goto :goto_0

    .line 762
    :sswitch_2
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->doPlayPause()V

    goto :goto_0

    .line 766
    :sswitch_3
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->selectSubtitles()V

    goto :goto_0

    .line 771
    :sswitch_4
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->selectAudioTrack()V

    goto :goto_0

    .line 775
    :sswitch_5
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showNavMenu()V

    goto :goto_0

    .line 778
    :sswitch_6
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mMenu:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showAdvancedOptions(Landroid/view/View;)V

    goto :goto_0

    .line 781
    :sswitch_7
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->resizeVideo()V

    goto :goto_0

    .line 785
    :sswitch_8
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->updateMute()V

    goto :goto_0

    .line 789
    :sswitch_9
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->finish()V

    goto :goto_0

    .line 746
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_7
        0x1e -> :sswitch_4
        0x22 -> :sswitch_0
        0x29 -> :sswitch_5
        0x2b -> :sswitch_6
        0x2e -> :sswitch_1
        0x2f -> :sswitch_9
        0x32 -> :sswitch_3
        0x3e -> :sswitch_2
        0x52 -> :sswitch_5
        0x55 -> :sswitch_2
        0x56 -> :sswitch_9
        0x59 -> :sswitch_1
        0x5a -> :sswitch_0
        0x60 -> :sswitch_2
        0x61 -> :sswitch_4
        0x63 -> :sswitch_8
        0x64 -> :sswitch_3
        0x66 -> :sswitch_1
        0x67 -> :sswitch_0
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
        0xa4 -> :sswitch_8
        0xde -> :sswitch_4
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x1388

    const/4 v10, 0x0

    .line 468
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 470
    iget-object v8, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mMediaRouter:Landroid/media/MediaRouter;

    if-eqz v8, :cond_0

    .line 472
    invoke-direct {p0, v10}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mediaRouterAddCallback(Z)V

    .line 475
    :cond_0
    iget-boolean v8, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSwitchingView:Z

    if-eqz v8, :cond_1

    .line 476
    const-string v8, "VLC/VideoPlayerActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mLocation = \""

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-static {}, Lorg/videolan/vlc/audio/AudioServiceController;->getInstance()Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v8

    iget v9, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->savedIndexPosition:I

    invoke-virtual {v8, v9}, Lorg/videolan/vlc/audio/AudioServiceController;->showWithoutParse(I)V

    .line 478
    invoke-static {}, Lorg/videolan/vlc/audio/AudioServiceController;->getInstance()Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v8

    invoke-virtual {v8, p0}, Lorg/videolan/vlc/audio/AudioServiceController;->unbindAudioService(Landroid/content/Context;)V

    .line 529
    :goto_0
    return-void

    .line 482
    :cond_1
    iget-object v8, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v8}, Lorg/videolan/libvlc/LibVLC;->getTime()J

    move-result-wide v6

    .line 483
    .local v6, "time":J
    iget-object v8, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v8}, Lorg/videolan/libvlc/LibVLC;->getLength()J

    move-result-wide v2

    .line 485
    .local v2, "length":J
    sub-long v8, v2, v6

    cmp-long v8, v8, v11

    if-gez v8, :cond_4

    .line 486
    const-wide/16 v6, 0x0

    .line 497
    :goto_1
    iget-object v8, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v8}, Lorg/videolan/libvlc/LibVLC;->stop()V

    .line 499
    iget-object v8, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v8, v10}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    .line 501
    iget-object v8, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 503
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-ltz v8, :cond_2

    iget-boolean v8, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mCanSeek:Z

    if-eqz v8, :cond_2

    .line 504
    invoke-static {}, Lorg/videolan/vlc/MediaDatabase;->getInstance()Lorg/videolan/vlc/MediaDatabase;

    move-result-object v8

    iget-object v9, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lorg/videolan/vlc/MediaDatabase;->mediaItemExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 505
    invoke-static {}, Lorg/videolan/vlc/MediaDatabase;->getInstance()Lorg/videolan/vlc/MediaDatabase;

    move-result-object v8

    .line 506
    iget-object v9, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;

    .line 507
    sget-object v10, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->MEDIA_TIME:Lorg/videolan/vlc/MediaDatabase$mediaColumn;

    .line 508
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 505
    invoke-virtual {v8, v9, v10, v11}, Lorg/videolan/vlc/MediaDatabase;->updateMedia(Ljava/lang/String;Lorg/videolan/vlc/MediaDatabase$mediaColumn;Ljava/lang/Object;)V

    .line 515
    :cond_2
    :goto_2
    const/4 v5, 0x0

    .line 516
    .local v5, "subtitleList_serialized":Ljava/lang/String;
    iget-object v8, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitleSelectedFiles:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 517
    const-string v8, "VLC/VideoPlayerActivity"

    const-string v9, "Saving selected subtitle files"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 520
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 521
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    iget-object v8, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitleSelectedFiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 522
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 525
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    :cond_3
    :goto_3
    const-string v8, "VideoSubtitleFiles"

    invoke-interface {v1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 527
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 528
    invoke-static {}, Lorg/videolan/vlc/audio/AudioServiceController;->getInstance()Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v8

    invoke-virtual {v8, p0}, Lorg/videolan/vlc/audio/AudioServiceController;->unbindAudioService(Landroid/content/Context;)V

    goto :goto_0

    .line 488
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "subtitleList_serialized":Ljava/lang/String;
    :cond_4
    sub-long/2addr v6, v11

    goto :goto_1

    .line 511
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5
    const-string v8, "VideoResumeTime"

    invoke-interface {v1, v8, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 523
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "subtitleList_serialized":Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_3
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 563
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 564
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSwitchingView:Z

    .line 565
    invoke-static {}, Lorg/videolan/vlc/audio/AudioServiceController;->getInstance()Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v0

    .line 566
    new-instance v1, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$18;

    invoke-direct {v1, p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$18;-><init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    .line 565
    invoke-virtual {v0, p0, v1}, Lorg/videolan/vlc/audio/AudioServiceController;->bindAudioService(Landroid/content/Context;Lorg/videolan/vlc/audio/AudioServiceController$AudioServiceConnectionListener;)V

    .line 578
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mMediaRouter:Landroid/media/MediaRouter;

    if-eqz v0, :cond_0

    .line 580
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mediaRouterAddCallback(Z)V

    .line 583
    :cond_0
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mIsLocked:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mScreenOrientation:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 584
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mScreenOrientationLock:I

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setRequestedOrientation(I)V

    .line 585
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 534
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 537
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPresentation:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

    if-eqz v0, :cond_0

    .line 538
    const-string v0, "VLC/VideoPlayerActivity"

    const-string v1, "Dismissing presentation because the activity is no longer visible."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPresentation:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;->dismiss()V

    .line 540
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPresentation:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

    .line 542
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1302
    iget-boolean v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mIsLocked:Z

    if-eqz v10, :cond_2

    .line 1304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-ne v10, v9, :cond_0

    .line 1305
    iget-boolean v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mShowing:Z

    if-nez v10, :cond_1

    .line 1306
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showOverlay()V

    .line 1388
    :cond_0
    :goto_0
    return v8

    .line 1308
    :cond_1
    invoke-direct {p0, v9}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->hideOverlay(Z)V

    goto :goto_0

    .line 1314
    :cond_2
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1315
    .local v2, "screen":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1317
    iget v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceYDisplayRange:I

    if-nez v10, :cond_3

    .line 1318
    iget v10, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurfaceYDisplayRange:I

    .line 1320
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    iget v11, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTouchY:F

    sub-float v7, v10, v11

    .line 1321
    .local v7, "y_changed":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    iget v11, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTouchX:F

    sub-float v4, v10, v11

    .line 1324
    .local v4, "x_changed":F
    div-float v10, v7, v4

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1325
    .local v0, "coef":F
    iget v10, v2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v10, v4, v10

    const v11, 0x40228f5c    # 2.54f

    mul-float v5, v10, v11

    .line 1328
    .local v5, "xgesturesize":F
    new-array v1, v12, [I

    .line 1329
    .local v1, "offset":[I
    iget-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v10, v1}, Landroid/view/SurfaceView;->getLocationOnScreen([I)V

    .line 1330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    aget v11, v1, v8

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoWidth:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    iget-object v11, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v11}, Landroid/view/SurfaceView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1331
    .local v3, "xTouch":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    aget v11, v1, v9

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoHeight:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    iget-object v11, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSurface:Landroid/view/SurfaceView;

    invoke-virtual {v11}, Landroid/view/SurfaceView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1333
    .local v6, "yTouch":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 1388
    :goto_1
    iget v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTouchAction:I

    if-eqz v10, :cond_0

    move v8, v9

    goto/16 :goto_0

    .line 1337
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    iput v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTouchY:F

    .line 1338
    iget-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v10

    iput v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVol:I

    .line 1339
    iput v8, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTouchAction:I

    .line 1341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    iput v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTouchX:F

    .line 1343
    invoke-static {v8, v8, v3, v6}, Lorg/videolan/libvlc/LibVLC;->sendMouseEvent(IIII)V

    goto :goto_1

    .line 1348
    :pswitch_1
    invoke-static {v12, v8, v3, v6}, Lorg/videolan/libvlc/LibVLC;->sendMouseEvent(IIII)V

    .line 1352
    const/high16 v10, 0x40000000    # 2.0f

    cmpl-float v10, v0, v10

    if-lez v10, :cond_7

    iget-object v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mPresentation:Lorg/videolan/vlc/gui/video/VideoPlayerActivity$SecondaryDisplay;

    if-nez v10, :cond_7

    .line 1354
    iget-boolean v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mEnableBrightnessGesture:Z

    if-eqz v10, :cond_4

    iget v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTouchX:F

    float-to-int v10, v10

    iget v11, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v11, v11, 0x2

    if-le v10, v11, :cond_5

    .line 1355
    :cond_4
    invoke-direct {p0, v7}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->doVolumeTouch(F)V

    .line 1358
    :cond_5
    iget-boolean v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mEnableBrightnessGesture:Z

    if-eqz v10, :cond_6

    iget v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTouchX:F

    float-to-int v10, v10

    iget v11, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v11, v11, 0x2

    if-ge v10, v11, :cond_6

    .line 1359
    invoke-direct {p0, v7}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->doBrightnessTouch(F)V

    .line 1365
    :cond_6
    invoke-static {}, Lorg/videolan/vlc/util/AndroidDevices;->hasNavBar()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1366
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showOverlay()V

    .line 1369
    :cond_7
    invoke-direct {p0, v0, v5, v8}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->doSeekTouch(FFZ)V

    goto :goto_1

    .line 1374
    :pswitch_2
    invoke-static {v9, v8, v3, v6}, Lorg/videolan/libvlc/LibVLC;->sendMouseEvent(IIII)V

    .line 1377
    iget v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTouchAction:I

    if-nez v10, :cond_8

    .line 1378
    iget-boolean v10, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mShowing:Z

    if-nez v10, :cond_9

    .line 1379
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showOverlay()V

    .line 1385
    :cond_8
    :goto_2
    invoke-direct {p0, v0, v5, v9}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->doSeekTouch(FFZ)V

    goto :goto_1

    .line 1381
    :cond_9
    invoke-direct {p0, v9}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->hideOverlay(Z)V

    goto :goto_2

    .line 1333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 705
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showOverlay()V

    .line 706
    const/4 v0, 0x1

    return v0
.end method

.method public seek(I)V
    .locals 8
    .param p1, "delta"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 1682
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v2}, Lorg/videolan/libvlc/LibVLC;->getLength()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mCanSeek:Z

    if-nez v2, :cond_1

    .line 1688
    :cond_0
    :goto_0
    return-void

    .line 1684
    :cond_1
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v2}, Lorg/videolan/libvlc/LibVLC;->getTime()J

    move-result-wide v2

    int-to-long v4, p1

    add-long v0, v2, v4

    .line 1685
    .local v0, "position":J
    cmp-long v2, v0, v6

    if-gez v2, :cond_2

    const-wide/16 v0, 0x0

    .line 1686
    :cond_2
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v2, v0, v1}, Lorg/videolan/libvlc/LibVLC;->setTime(J)J

    .line 1687
    invoke-direct {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showOverlay()V

    goto :goto_0
.end method

.method public setSurfaceSize(IIIIII)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "visible_width"    # I
    .param p4, "visible_height"    # I
    .param p5, "sar_num"    # I
    .param p6, "sar_den"    # I

    .prologue
    .line 804
    mul-int v1, p1, p2

    if-nez v1, :cond_0

    .line 816
    :goto_0
    return-void

    .line 808
    :cond_0
    iput p2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoHeight:I

    .line 809
    iput p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoWidth:I

    .line 810
    iput p4, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoVisibleHeight:I

    .line 811
    iput p3, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoVisibleWidth:I

    .line 812
    iput p5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSarNum:I

    .line 813
    iput p6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSarDen:I

    .line 814
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 815
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public showAdvancedOptions(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2306
    sget-object v0, Lorg/videolan/vlc/gui/CommonDialogs$MenuType;->Video:Lorg/videolan/vlc/gui/CommonDialogs$MenuType;

    invoke-static {p0, p1, v0}, Lorg/videolan/vlc/gui/CommonDialogs;->advancedOptions(Landroid/content/Context;Landroid/view/View;Lorg/videolan/vlc/gui/CommonDialogs$MenuType;)V

    .line 2307
    return-void
.end method
