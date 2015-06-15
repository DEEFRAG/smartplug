.class public Lorg/videolan/vlc/gui/MainActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/MainActivity$MainActivityHandler;
    }
.end annotation


# static fields
.field protected static final ACTION_HIDE_PROGRESSBAR:Ljava/lang/String; = "org.videolan.vlc.gui.HideProgressBar"

.field public static final ACTION_SHOW_PLAYER:Ljava/lang/String; = "org.videolan.vlc.gui.ShowPlayer"

.field protected static final ACTION_SHOW_PROGRESSBAR:Ljava/lang/String; = "org.videolan.vlc.gui.ShowProgressBar"

.field protected static final ACTION_SHOW_TEXTINFO:Ljava/lang/String; = "org.videolan.vlc.gui.ShowTextInfo"

.field private static final ACTIVITY_RESULT_PREFERENCES:I = 0x1

.field private static final ACTIVITY_SHOW_INFOLAYOUT:I = 0x2

.field private static final PREF_FIRST_RUN:Ljava/lang/String; = "first_run"

.field private static final PREF_SHOW_INFO:Ljava/lang/String; = "show_info"

.field public static final TAG:Ljava/lang/String; = "VLC/MainActivity"


# instance fields
.field private mActionBar:Landroid/support/v7/app/ActionBar;

.field private mActionBarIconId:I

.field private mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

.field private mAudioPlayer:Lorg/videolan/vlc/gui/audio/AudioPlayer;

.field private mAudioPlayerFilling:Landroid/view/View;

.field private mCurrentFragment:Ljava/lang/String;

.field private mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

.field private mFirstRun:Z

.field private mFocusedPrior:I

.field private mHandler:Landroid/os/Handler;

.field private mInfoLayout:Landroid/view/View;

.field private mInfoProgress:Landroid/widget/ProgressBar;

.field private mInfoText:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;

.field mMenu:Landroid/view/Menu;

.field private final mPanelSlideListener:Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;

.field private mPreviousFragment:Ljava/lang/String;

.field private mRootContainer:Landroid/support/v4/widget/DrawerLayout;

.field private mScanNeeded:Z

.field private mSecondaryFragments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mSettings:Landroid/content/SharedPreferences;

.field private mSidebarAdapter:Lorg/videolan/vlc/gui/SidebarAdapter;

.field private mSlidingPane:Lorg/videolan/vlc/widget/SlidingPaneLayout;

.field private mVersionNumber:I

.field private final messageReceiver:Landroid/content/BroadcastReceiver;

.field private secondaryFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 96
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 125
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "albumsSongs"

    aput-object v1, v0, v3

    const-string v1, "equalizer"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    .line 126
    const-string v2, "about"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "search"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mediaInfo"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 127
    const-string v2, "videoGroupList"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->secondaryFragments:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mSecondaryFragments:Ljava/util/HashMap;

    .line 132
    iput v4, p0, Lorg/videolan/vlc/gui/MainActivity;->mVersionNumber:I

    .line 133
    iput-boolean v3, p0, Lorg/videolan/vlc/gui/MainActivity;->mFirstRun:Z

    .line 134
    iput-boolean v5, p0, Lorg/videolan/vlc/gui/MainActivity;->mScanNeeded:Z

    .line 136
    new-instance v0, Lorg/videolan/vlc/gui/MainActivity$MainActivityHandler;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/MainActivity$MainActivityHandler;-><init>(Lorg/videolan/vlc/gui/MainActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mHandler:Landroid/os/Handler;

    .line 137
    iput v3, p0, Lorg/videolan/vlc/gui/MainActivity;->mFocusedPrior:I

    .line 138
    iput v4, p0, Lorg/videolan/vlc/gui/MainActivity;->mActionBarIconId:I

    .line 808
    new-instance v0, Lorg/videolan/vlc/gui/MainActivity$1;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/MainActivity$1;-><init>(Lorg/videolan/vlc/gui/MainActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->messageReceiver:Landroid/content/BroadcastReceiver;

    .line 974
    new-instance v0, Lorg/videolan/vlc/gui/MainActivity$2;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/MainActivity$2;-><init>(Lorg/videolan/vlc/gui/MainActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mPanelSlideListener:Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;

    .line 96
    return-void
.end method

.method private static ShowFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 8
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const v7, 0x7f070296

    .line 480
    if-nez p2, :cond_1

    .line 481
    const-string v3, "VLC/MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot show a null fragment, ShowFragment("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") aborted."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 488
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1, v7}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 489
    .local v0, "current":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 493
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 497
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 498
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v3, 0x7f040007

    const v4, 0x7f040008

    const v5, 0x7f040006

    const v6, 0x7f040009

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 499
    invoke-virtual {v2, v7, p2, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 500
    invoke-virtual {v2, p1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 501
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method static synthetic access$0(Lorg/videolan/vlc/gui/MainActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mInfoText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lorg/videolan/vlc/gui/MainActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mInfoProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$10(Lorg/videolan/vlc/gui/MainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lorg/videolan/vlc/gui/MainActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lorg/videolan/vlc/gui/MainActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lorg/videolan/vlc/gui/MainActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mInfoLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4(Lorg/videolan/vlc/gui/MainActivity;)Lorg/videolan/vlc/widget/SlidingPaneLayout;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mSlidingPane:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    return-object v0
.end method

.method static synthetic access$5(Lorg/videolan/vlc/gui/MainActivity;)Lorg/videolan/vlc/gui/audio/AudioPlayer;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mAudioPlayer:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    return-object v0
.end method

.method static synthetic access$6(Lorg/videolan/vlc/gui/MainActivity;)Landroid/support/v4/widget/DrawerLayout;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mRootContainer:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method static synthetic access$7(Lorg/videolan/vlc/gui/MainActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$8(Lorg/videolan/vlc/gui/MainActivity;)I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mFocusedPrior:I

    return v0
.end method

.method static synthetic access$9(Lorg/videolan/vlc/gui/MainActivity;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 474
    invoke-direct {p0, p1}, Lorg/videolan/vlc/gui/MainActivity;->getFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static clearTextInfo()V
    .locals 3

    .prologue
    .line 886
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Lorg/videolan/vlc/gui/MainActivity;->sendTextInfo(Ljava/lang/String;II)V

    .line 887
    return-void
.end method

.method private getFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 476
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mSidebarAdapter:Lorg/videolan/vlc/gui/SidebarAdapter;

    invoke-virtual {v0, p1}, Lorg/videolan/vlc/gui/SidebarAdapter;->fetchFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static hideProgressBar()V
    .locals 2

    .prologue
    .line 871
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 872
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "org.videolan.vlc.gui.HideProgressBar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 873
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 874
    return-void
.end method

.method private onOpenMRL()V
    .locals 4

    .prologue
    .line 890
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 891
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 892
    .local v1, "input":Landroid/widget/EditText;
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 893
    const v2, 0x7f0c0068

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 894
    const v2, 0x7f0c0069

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 895
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 896
    const v2, 0x7f0c0178

    new-instance v3, Lorg/videolan/vlc/gui/MainActivity$6;

    invoke-direct {v3, p0, v1}, Lorg/videolan/vlc/gui/MainActivity$6;-><init>(Lorg/videolan/vlc/gui/MainActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 921
    const v2, 0x7f0c023b

    new-instance v3, Lorg/videolan/vlc/gui/MainActivity$7;

    invoke-direct {v3, p0}, Lorg/videolan/vlc/gui/MainActivity$7;-><init>(Lorg/videolan/vlc/gui/MainActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 926
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 927
    return-void
.end method

.method private prepareActionBar()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 328
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 329
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setNavigationMode(I)V

    .line 330
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 331
    return-void
.end method

.method private reloadPreferences()V
    .locals 3

    .prologue
    .line 796
    const-string v1, "MainActivity"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/videolan/vlc/gui/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 797
    .local v0, "sharedPrefs":Landroid/content/SharedPreferences;
    const-string v1, "fragment"

    const-string v2, "video"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    .line 798
    return-void
.end method

.method public static sendTextInfo(Ljava/lang/String;II)V
    .locals 2
    .param p0, "info"    # Ljava/lang/String;
    .param p1, "progress"    # I
    .param p2, "max"    # I

    .prologue
    .line 877
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 878
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "org.videolan.vlc.gui.ShowTextInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 879
    const-string v1, "info"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 880
    const-string v1, "progress"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 881
    const-string v1, "max"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 882
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 883
    return-void
.end method

.method public static showProgressBar()V
    .locals 2

    .prologue
    .line 865
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 866
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "org.videolan.vlc.gui.ShowProgressBar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 867
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 868
    return-void
.end method


# virtual methods
.method public fetchSecondaryFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 510
    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mSecondaryFragments:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mSecondaryFragments:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mSecondaryFragments:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 533
    :goto_0
    return-object v1

    .line 515
    :cond_0
    const-string v1, "albumsSongs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 516
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;

    invoke-direct {v0}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;-><init>()V

    .line 531
    .local v0, "f":Landroid/support/v4/app/Fragment;
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setRetainInstance(Z)V

    .line 532
    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mSecondaryFragments:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 533
    goto :goto_0

    .line 517
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    const-string v1, "equalizer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 518
    new-instance v0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;

    invoke-direct {v0}, Lorg/videolan/vlc/gui/audio/EqualizerFragment;-><init>()V

    .line 519
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    goto :goto_1

    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_2
    const-string v1, "about"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 520
    new-instance v0, Lorg/videolan/vlc/gui/AboutFragment;

    invoke-direct {v0}, Lorg/videolan/vlc/gui/AboutFragment;-><init>()V

    .line 521
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    goto :goto_1

    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_3
    const-string v1, "search"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 522
    new-instance v0, Lorg/videolan/vlc/gui/SearchFragment;

    invoke-direct {v0}, Lorg/videolan/vlc/gui/SearchFragment;-><init>()V

    .line 523
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    goto :goto_1

    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_4
    const-string v1, "mediaInfo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 524
    new-instance v0, Lorg/videolan/vlc/gui/video/MediaInfoFragment;

    invoke-direct {v0}, Lorg/videolan/vlc/gui/video/MediaInfoFragment;-><init>()V

    .line 525
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    goto :goto_1

    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_5
    const-string v1, "videoGroupList"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 526
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoGridFragment;

    invoke-direct {v0}, Lorg/videolan/vlc/gui/video/VideoGridFragment;-><init>()V

    .line 527
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    goto :goto_1

    .line 529
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Wrong fragment id."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSlidingPaneState()I
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mSlidingPane:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getState()I

    move-result v0

    return v0
.end method

.method public hideAudioPlayer()V
    .locals 2

    .prologue
    .line 969
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mSlidingPane:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->openPaneEntirely()Z

    .line 970
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mAudioPlayerFilling:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 971
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 690
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/ActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 691
    if-ne p1, v2, :cond_0

    .line 692
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 693
    invoke-static {}, Lorg/videolan/vlc/MediaLibrary;->getInstance()Lorg/videolan/vlc/MediaLibrary;

    move-result-object v1

    invoke-virtual {v1, p0, v2}, Lorg/videolan/vlc/MediaLibrary;->loadMediaItems(Landroid/content/Context;Z)V

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 695
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 696
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->finish()V

    .line 697
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 442
    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mRootContainer:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lorg/videolan/vlc/gui/MainActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 444
    iget v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mFocusedPrior:I

    if-eqz v1, :cond_0

    .line 445
    const v1, 0x7f0700f9

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 446
    :cond_0
    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mRootContainer:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lorg/videolan/vlc/gui/MainActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 472
    :cond_1
    :goto_0
    return-void

    .line 451
    :cond_2
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->slideDownAudioPlayer()Z

    move-result v1

    if-nez v1, :cond_1

    .line 454
    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 456
    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    const-string v2, "directories"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 457
    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/videolan/vlc/gui/MainActivity;->getFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/DirectoryViewFragment;

    .line 458
    .local v0, "directoryView":Lorg/videolan/vlc/gui/DirectoryViewFragment;
    invoke-virtual {v0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->isRootDirectory()Z

    move-result v1

    if-nez v1, :cond_3

    .line 459
    invoke-virtual {v0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->showParentDirectory()V

    goto :goto_0

    .line 465
    .end local v0    # "directoryView":Lorg/videolan/vlc/gui/DirectoryViewFragment;
    :cond_3
    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->secondaryFragments:Ljava/util/List;

    iget-object v2, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 466
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->popSecondaryFragment()V

    goto :goto_0

    .line 471
    :cond_4
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 601
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 602
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 603
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 143
    invoke-static {p0}, Lorg/videolan/libvlc/LibVlcUtil;->hasCompatibleCPU(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    const-string v0, "VLC/MainActivity"

    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v11, Landroid/content/Intent;

    const-class v0, Lorg/videolan/vlc/gui/CompatErrorActivity;

    invoke-direct {v11, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .local v11, "i":Landroid/content/Intent;
    invoke-virtual {p0, v11}, Lorg/videolan/vlc/gui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 147
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->finish()V

    .line 148
    invoke-super/range {p0 .. p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 316
    .end local v11    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 153
    :cond_0
    const/4 v12, 0x0

    .line 155
    .local v12, "pinfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 159
    :goto_1
    if-eqz v12, :cond_1

    .line 160
    iget v0, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mVersionNumber:I

    .line 163
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mSettings:Landroid/content/SharedPreferences;

    .line 166
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "first_run"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mVersionNumber:I

    if-eq v0, v1, :cond_5

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mFirstRun:Z

    .line 167
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mFirstRun:Z

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 169
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v0, "first_run"

    iget v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mVersionNumber:I

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 170
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 175
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    :try_start_1
    invoke-static {}, Lorg/videolan/vlc/util/VLCInstance;->getLibVlcInstance()Lorg/videolan/libvlc/LibVLC;
    :try_end_1
    .catch Lorg/videolan/libvlc/LibVlcException; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    invoke-super/range {p0 .. p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 192
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/MainActivity;->requestWindowFeature(I)Z

    .line 194
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 195
    .local v13, "pref":Landroid/content/SharedPreferences;
    const-string v0, "enable_black_theme"

    const/4 v1, 0x0

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 196
    .local v9, "enableBlackTheme":Z
    if-eqz v9, :cond_3

    .line 197
    const v0, 0x7f0d0091

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/MainActivity;->setTheme(I)V

    .line 199
    :cond_3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030097

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 200
    .local v14, "v_main":Landroid/view/View;
    invoke-virtual {p0, v14}, Lorg/videolan/vlc/gui/MainActivity;->setContentView(Landroid/view/View;)V

    .line 202
    const v0, 0x7f070295

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/widget/SlidingPaneLayout;

    iput-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mSlidingPane:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    .line 203
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mSlidingPane:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mPanelSlideListener:Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->setPanelSlideListener(Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;)V

    .line 205
    const v0, 0x7f070373

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mListView:Landroid/widget/ListView;

    .line 206
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 207
    new-instance v0, Lorg/videolan/vlc/gui/SidebarAdapter;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/SidebarAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mSidebarAdapter:Lorg/videolan/vlc/gui/SidebarAdapter;

    .line 208
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mSidebarAdapter:Lorg/videolan/vlc/gui/SidebarAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 212
    const v0, 0x7f070297

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mInfoLayout:Landroid/view/View;

    .line 213
    const v0, 0x7f070298

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mInfoProgress:Landroid/widget/ProgressBar;

    .line 214
    const v0, 0x7f070127

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mInfoText:Landroid/widget/TextView;

    .line 215
    const v0, 0x7f070299

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mAudioPlayerFilling:Landroid/view/View;

    .line 216
    const v0, 0x7f070294

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mRootContainer:Landroid/support/v4/widget/DrawerLayout;

    .line 219
    invoke-direct {p0}, Lorg/videolan/vlc/gui/MainActivity;->prepareActionBar()V

    .line 223
    new-instance v0, Lorg/videolan/vlc/gui/MainActivity$3;

    iget-object v3, p0, Lorg/videolan/vlc/gui/MainActivity;->mRootContainer:Landroid/support/v4/widget/DrawerLayout;

    .line 224
    const v4, 0x7f0201f9

    const v5, 0x7f0c00f8

    const v6, 0x7f0c00f9

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/gui/MainActivity$3;-><init>(Lorg/videolan/vlc/gui/MainActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    .line 223
    iput-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    .line 227
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mRootContainer:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 229
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mRootContainer:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x7f020195

    const v2, 0x800003

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(II)V

    .line 230
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 231
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 233
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lorg/videolan/vlc/gui/MainActivity$4;

    invoke-direct {v1, p0}, Lorg/videolan/vlc/gui/MainActivity$4;-><init>(Lorg/videolan/vlc/gui/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 285
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioPlayer;

    invoke-direct {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mAudioPlayer:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    .line 286
    invoke-static {}, Lorg/videolan/vlc/audio/AudioServiceController;->getInstance()Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    .line 288
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 289
    const v1, 0x7f07029a

    iget-object v2, p0, Lorg/videolan/vlc/gui/MainActivity;->mAudioPlayer:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 292
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mFirstRun:Z

    if-eqz v0, :cond_4

    .line 298
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/videolan/vlc/gui/MainActivity$5;

    invoke-direct {v1, p0}, Lorg/videolan/vlc/gui/MainActivity$5;-><init>(Lorg/videolan/vlc/gui/MainActivity;)V

    .line 303
    const-wide/16 v2, 0x1f4

    .line 298
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 307
    :cond_4
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 308
    .local v10, "filter":Landroid/content/IntentFilter;
    const-string v0, "org.videolan.vlc.gui.ShowProgressBar"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    const-string v0, "org.videolan.vlc.gui.HideProgressBar"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    const-string v0, "org.videolan.vlc.gui.ShowTextInfo"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    const-string v0, "org.videolan.vlc.gui.ShowPlayer"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->messageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v10}, Lorg/videolan/vlc/gui/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 315
    invoke-direct {p0}, Lorg/videolan/vlc/gui/MainActivity;->reloadPreferences()V

    goto/16 :goto_0

    .line 156
    .end local v9    # "enableBlackTheme":Z
    .end local v10    # "filter":Landroid/content/IntentFilter;
    .end local v13    # "pref":Landroid/content/SharedPreferences;
    .end local v14    # "v_main":Landroid/view/View;
    :catch_0
    move-exception v7

    .line 157
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "VLC/MainActivity"

    const-string v1, "package info not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 166
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 176
    :catch_1
    move-exception v7

    .line 177
    .local v7, "e":Lorg/videolan/libvlc/LibVlcException;
    invoke-virtual {v7}, Lorg/videolan/libvlc/LibVlcException;->printStackTrace()V

    .line 178
    new-instance v11, Landroid/content/Intent;

    const-class v0, Lorg/videolan/vlc/gui/CompatErrorActivity;

    invoke-direct {v11, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    .restart local v11    # "i":Landroid/content/Intent;
    const-string v0, "runtimeError"

    const/4 v1, 0x1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    const-string v0, "message"

    const-string v1, "LibVLC failed to initialize (LibVlcException)"

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v11}, Lorg/videolan/vlc/gui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 182
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->finish()V

    .line 183
    invoke-super/range {p0 .. p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 571
    iput-object p1, p0, Lorg/videolan/vlc/gui/MainActivity;->mMenu:Landroid/view/Menu;

    .line 576
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 577
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f10000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 578
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 426
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onDestroy()V

    .line 429
    :try_start_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->messageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :goto_0
    return-void

    .line 430
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 765
    iget v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mFocusedPrior:I

    if-nez v0, :cond_0

    .line 766
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/videolan/vlc/gui/MainActivity;->setMenuFocusDown(ZI)V

    .line 767
    :cond_0
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mFocusedPrior:I

    .line 768
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const v3, 0x7f0700f9

    const/4 v2, -0x1

    .line 774
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 775
    .local v0, "v":Landroid/view/View;
    iget v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mActionBarIconId:I

    if-ne v1, v2, :cond_0

    .line 776
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 777
    invoke-virtual {v0}, Landroid/view/View;->getNextFocusDownId()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 778
    invoke-virtual {v0}, Landroid/view/View;->getNextFocusUpId()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 779
    invoke-virtual {v0}, Landroid/view/View;->getNextFocusLeftId()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 780
    invoke-virtual {v0}, Landroid/view/View;->getNextFocusRightId()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 781
    invoke-virtual {v0}, Landroid/view/View;->getNextFocusForwardId()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 782
    invoke-static {}, Lorg/videolan/vlc/util/Util;->generateViewId()I

    move-result v1

    iput v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mActionBarIconId:I

    .line 783
    iget v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mActionBarIconId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 784
    iget v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mActionBarIconId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 785
    iget v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mActionBarIconId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 786
    iget v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mActionBarIconId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 787
    invoke-virtual {v0, v3}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 788
    iget v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mActionBarIconId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusForwardId(I)V

    .line 789
    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 790
    iget v2, p0, Lorg/videolan/vlc/gui/MainActivity;->mActionBarIconId:I

    .line 789
    invoke-virtual {v1, v2}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 792
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 622
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f070296

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 625
    .local v0, "current":Landroid/support/v4/app/Fragment;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 685
    .end local v0    # "current":Landroid/support/v4/app/Fragment;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_1
    return v3

    .line 628
    .restart local v0    # "current":Landroid/support/v4/app/Fragment;
    :sswitch_0
    if-eqz v0, :cond_0

    .line 630
    instance-of v4, v0, Lorg/videolan/vlc/interfaces/ISortable;

    if-eqz v4, :cond_0

    .line 631
    check-cast v0, Lorg/videolan/vlc/interfaces/ISortable;

    .end local v0    # "current":Landroid/support/v4/app/Fragment;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f0703df

    if-ne v4, v5, :cond_1

    .line 632
    const/4 v3, 0x0

    .line 631
    :cond_1
    invoke-interface {v0, v3}, Lorg/videolan/vlc/interfaces/ISortable;->sortBy(I)V

    goto :goto_0

    .line 637
    .restart local v0    # "current":Landroid/support/v4/app/Fragment;
    :sswitch_1
    const-string v3, "about"

    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/MainActivity;->showSecondaryFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 641
    :sswitch_2
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lorg/videolan/vlc/gui/PreferencesActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 642
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2, v3}, Lorg/videolan/vlc/gui/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 645
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_3
    const-string v3, "equalizer"

    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/MainActivity;->showSecondaryFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 649
    :sswitch_4
    if-eqz v0, :cond_2

    instance-of v4, v0, Lorg/videolan/vlc/interfaces/IRefreshable;

    if-eqz v4, :cond_2

    .line 650
    check-cast v0, Lorg/videolan/vlc/interfaces/IRefreshable;

    .end local v0    # "current":Landroid/support/v4/app/Fragment;
    invoke-interface {v0}, Lorg/videolan/vlc/interfaces/IRefreshable;->refresh()V

    goto :goto_0

    .line 652
    .restart local v0    # "current":Landroid/support/v4/app/Fragment;
    :cond_2
    invoke-static {}, Lorg/videolan/vlc/MediaLibrary;->getInstance()Lorg/videolan/vlc/MediaLibrary;

    move-result-object v4

    invoke-virtual {v4, p0, v3}, Lorg/videolan/vlc/MediaLibrary;->loadMediaItems(Landroid/content/Context;Z)V

    goto :goto_0

    .line 656
    :sswitch_5
    new-instance v1, Landroid/content/Intent;

    const-string v3, "org.videolan.vlc.remote.LastPlaylist"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 657
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 661
    .end local v1    # "i":Landroid/content/Intent;
    :sswitch_6
    invoke-direct {p0}, Lorg/videolan/vlc/gui/MainActivity;->onOpenMRL()V

    goto :goto_0

    .line 664
    :sswitch_7
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->onSearchRequested()Z

    goto :goto_0

    .line 668
    :sswitch_8
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->slideDownAudioPlayer()Z

    move-result v4

    if-nez v4, :cond_0

    .line 672
    iget-object v4, p0, Lorg/videolan/vlc/gui/MainActivity;->secondaryFragments:Ljava/util/List;

    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 673
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->popSecondaryFragment()V

    goto :goto_0

    .line 677
    :cond_3
    iget-object v4, p0, Lorg/videolan/vlc/gui/MainActivity;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v4, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 682
    :sswitch_9
    invoke-static {}, Lorg/videolan/vlc/MediaDatabase;->getInstance()Lorg/videolan/vlc/MediaDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lorg/videolan/vlc/MediaDatabase;->clearSearchHistory()V

    goto :goto_0

    .line 625
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_8
        0x7f0700f9 -> :sswitch_7
        0x7f0703dd -> :sswitch_6
        0x7f0703df -> :sswitch_0
        0x7f0703e0 -> :sswitch_0
        0x7f0703e1 -> :sswitch_5
        0x7f0703e2 -> :sswitch_4
        0x7f0703e3 -> :sswitch_3
        0x7f0703e4 -> :sswitch_2
        0x7f0703e5 -> :sswitch_1
        0x7f0703e6 -> :sswitch_9
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 408
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    .line 411
    invoke-static {}, Lorg/videolan/vlc/MediaLibrary;->getInstance()Lorg/videolan/vlc/MediaLibrary;

    move-result-object v1

    invoke-virtual {v1}, Lorg/videolan/vlc/MediaLibrary;->isWorking()Z

    move-result v1

    iput-boolean v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mScanNeeded:Z

    .line 413
    invoke-static {}, Lorg/videolan/vlc/MediaLibrary;->getInstance()Lorg/videolan/vlc/MediaLibrary;

    move-result-object v1

    invoke-virtual {v1}, Lorg/videolan/vlc/MediaLibrary;->stop()V

    .line 415
    const-string v1, "MainActivity"

    invoke-virtual {p0, v1, v3}, Lorg/videolan/vlc/gui/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 416
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "fragment"

    iget-object v2, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 417
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 419
    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    iget-object v2, p0, Lorg/videolan/vlc/gui/MainActivity;->mAudioPlayer:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    invoke-virtual {v1, v2}, Lorg/videolan/vlc/audio/AudioServiceController;->removeAudioPlayer(Lorg/videolan/vlc/interfaces/IAudioPlayer;)V

    .line 420
    invoke-static {}, Lorg/videolan/vlc/audio/AudioServiceController;->getInstance()Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/videolan/vlc/audio/AudioServiceController;->unbindAudioService(Landroid/content/Context;)V

    .line 421
    iput v3, p0, Lorg/videolan/vlc/gui/MainActivity;->mFocusedPrior:I

    .line 422
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 321
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 323
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->syncState()V

    .line 324
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0703de

    const/4 v3, 0x1

    .line 583
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f070296

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 585
    .local v0, "current":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/videolan/vlc/interfaces/ISortable;

    if-nez v1, :cond_2

    .line 586
    :cond_0
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 587
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 594
    :goto_0
    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    const-string v2, "search"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 595
    const v1, 0x7f0703e6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 596
    :cond_1
    return v3

    .line 590
    :cond_2
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 591
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 435
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onRestart()V

    .line 437
    invoke-direct {p0}, Lorg/videolan/vlc/gui/MainActivity;->reloadPreferences()V

    .line 438
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 335
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    .line 336
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mAudioPlayer:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/audio/AudioServiceController;->addAudioPlayer(Lorg/videolan/vlc/interfaces/IAudioPlayer;)V

    .line 337
    invoke-static {}, Lorg/videolan/vlc/audio/AudioServiceController;->getInstance()Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/videolan/vlc/audio/AudioServiceController;->bindAudioService(Landroid/content/Context;)V

    .line 340
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 344
    :cond_0
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mScanNeeded:Z

    if-eqz v0, :cond_1

    .line 345
    invoke-static {}, Lorg/videolan/vlc/MediaLibrary;->getInstance()Lorg/videolan/vlc/MediaLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/MediaLibrary;->loadMediaItems()V

    .line 346
    :cond_1
    return-void
.end method

.method protected onResumeFragments()V
    .locals 11

    .prologue
    const v10, 0x7f070296

    .line 350
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResumeFragments()V

    .line 353
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    .line 354
    invoke-virtual {v7, v10}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 355
    .local v0, "current":Landroid/support/v4/app/Fragment;
    const/4 v2, 0x0

    .line 356
    .local v2, "found":Z
    if-eqz v0, :cond_5

    .line 357
    sget-object v7, Lorg/videolan/vlc/gui/SidebarAdapter;->sidebarFragments:Ljava/util/List;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 367
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    sget-object v7, Lorg/videolan/vlc/gui/SidebarAdapter;->entries:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v6, v7, :cond_6

    .line 388
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    if-eqz v2, :cond_4

    .line 389
    :cond_0
    const-string v7, "VLC/MainActivity"

    const-string v8, "Reloading displayed fragment"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v7, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/videolan/vlc/gui/MainActivity;->secondaryFragments:Ljava/util/List;

    iget-object v8, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 391
    :cond_1
    const-string v7, "video"

    iput-object v7, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    .line 392
    :cond_2
    sget-object v7, Lorg/videolan/vlc/gui/SidebarAdapter;->sidebarFragments:Ljava/util/List;

    iget-object v8, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 393
    const-string v7, "VLC/MainActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Unknown fragment \""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\", resetting to video"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string v7, "video"

    iput-object v7, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    .line 396
    :cond_3
    iget-object v7, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    invoke-direct {p0, v7}, Lorg/videolan/vlc/gui/MainActivity;->getFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 397
    .local v1, "ff":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    .line 398
    .local v5, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v7, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    invoke-virtual {v5, v10, v1, v7}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 399
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 401
    .end local v1    # "ff":Landroid/support/v4/app/Fragment;
    .end local v5    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_4
    return-void

    .line 359
    .end local v6    # "i":I
    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    .line 368
    .restart local v6    # "i":I
    :cond_6
    sget-object v7, Lorg/videolan/vlc/gui/SidebarAdapter;->entries:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;

    iget-object v4, v7, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;->id:Ljava/lang/String;

    .line 369
    .local v4, "fragmentTag":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 370
    .local v3, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v3, :cond_7

    .line 371
    const-string v7, "VLC/MainActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Restoring automatically recreated fragment \""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v7, p0, Lorg/videolan/vlc/gui/MainActivity;->mSidebarAdapter:Lorg/videolan/vlc/gui/SidebarAdapter;

    invoke-virtual {v7, v4, v3}, Lorg/videolan/vlc/gui/SidebarAdapter;->restoreFragment(Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 367
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/MainActivity;->fetchSecondaryFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/SearchFragment;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/SearchFragment;->onSearchKeyPressed()V

    .line 609
    :cond_0
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/MainActivity;->showSecondaryFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    .line 610
    const/4 v0, 0x1

    return v0
.end method

.method public popSecondaryFragment()V
    .locals 3

    .prologue
    .line 562
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 563
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 564
    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mPreviousFragment:Ljava/lang/String;

    iput-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    .line 565
    return-void
.end method

.method public removeTipViewIfDisplayed()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1056
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mRootContainer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1057
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mRootContainer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->removeViewAt(I)V

    .line 1058
    :cond_0
    return-void
.end method

.method public searchClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 805
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->onSearchRequested()Z

    .line 806
    return-void
.end method

.method public setMenuFocusDown(ZI)V
    .locals 8
    .param p1, "idIsEmpty"    # Z
    .param p2, "id"    # I

    .prologue
    .line 703
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity;->mMenu:Landroid/view/Menu;

    if-nez v5, :cond_1

    .line 733
    :cond_0
    return-void

    .line 706
    :cond_1
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    new-array v1, v5, [I

    .line 707
    .local v1, "menu_controls":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v5

    if-lt v0, v5, :cond_3

    .line 710
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v5

    iget v6, p0, Lorg/videolan/vlc/gui/MainActivity;->mActionBarIconId:I

    aput v6, v1, v5

    .line 715
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity;->mSlidingPane:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    invoke-virtual {v5}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getState()I

    move-result v2

    .line 716
    .local v2, "pane":I
    array-length v6, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_0

    aget v3, v1, v5

    .line 717
    .local v3, "r":I
    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 718
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 719
    if-nez p1, :cond_4

    .line 720
    invoke-virtual {v4, p2}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 716
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 708
    .end local v2    # "pane":I
    .end local v3    # "r":I
    .end local v4    # "v":Landroid/view/View;
    :cond_3
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v5, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    aput v5, v1, v0

    .line 707
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 722
    .restart local v2    # "pane":I
    .restart local v3    # "r":I
    .restart local v4    # "v":Landroid/view/View;
    :cond_4
    iget-object v7, p0, Lorg/videolan/vlc/gui/MainActivity;->mSlidingPane:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x2

    if-ne v2, v7, :cond_5

    .line 723
    const v7, 0x7f070118

    invoke-virtual {v4, v7}, Landroid/view/View;->setNextFocusDownId(I)V

    goto :goto_2

    .line 724
    :cond_5
    iget-object v7, p0, Lorg/videolan/vlc/gui/MainActivity;->mSlidingPane:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x1

    if-ne v2, v7, :cond_6

    .line 725
    const v7, 0x7f070110

    invoke-virtual {v4, v7}, Landroid/view/View;->setNextFocusDownId(I)V

    goto :goto_2

    .line 727
    :cond_6
    iget-object v7, p0, Lorg/videolan/vlc/gui/MainActivity;->mSlidingPane:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_2

    .line 728
    invoke-virtual {v4, v3}, Landroid/view/View;->setNextFocusDownId(I)V

    goto :goto_2
.end method

.method public setSearchAsFocusDown(ZLandroid/view/View;I)V
    .locals 8
    .param p1, "idIsEmpty"    # Z
    .param p2, "parentView"    # Landroid/view/View;
    .param p3, "id"    # I

    .prologue
    const v7, 0x7f070110

    .line 737
    invoke-virtual {p0, v7}, Lorg/videolan/vlc/gui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 738
    .local v2, "playPause":Landroid/view/View;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030097

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 740
    .local v3, "v_main":Landroid/view/View;
    if-nez p1, :cond_3

    .line 741
    const/4 v0, 0x0

    .line 742
    .local v0, "list":Landroid/view/View;
    iget-object v4, p0, Lorg/videolan/vlc/gui/MainActivity;->mSlidingPane:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    invoke-virtual {v4}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getState()I

    move-result v1

    .line 744
    .local v1, "pane":I
    if-nez p2, :cond_1

    .line 745
    invoke-virtual {v3, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 749
    :goto_0
    if-eqz v0, :cond_0

    .line 750
    iget-object v4, p0, Lorg/videolan/vlc/gui/MainActivity;->mSlidingPane:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_2

    .line 751
    invoke-virtual {v0, p3}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 760
    .end local v0    # "list":Landroid/view/View;
    .end local v1    # "pane":I
    :cond_0
    :goto_1
    return-void

    .line 747
    .restart local v0    # "list":Landroid/view/View;
    .restart local v1    # "pane":I
    :cond_1
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 752
    :cond_2
    iget-object v4, p0, Lorg/videolan/vlc/gui/MainActivity;->mSlidingPane:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 753
    invoke-virtual {v0, v7}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 754
    invoke-virtual {v2, p3}, Landroid/view/View;->setNextFocusUpId(I)V

    goto :goto_1

    .line 758
    .end local v0    # "list":Landroid/view/View;
    .end local v1    # "pane":I
    :cond_3
    const v4, 0x7f0700f9

    invoke-virtual {v2, v4}, Landroid/view/View;->setNextFocusUpId(I)V

    goto :goto_1
.end method

.method public showAudioPlayer()V
    .locals 2

    .prologue
    .line 934
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mSlidingPane:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getState()I

    move-result v0

    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mSlidingPane:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 935
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mSlidingPane:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->openPane()Z

    .line 936
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mAudioPlayerFilling:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 937
    return-void
.end method

.method public showSecondaryFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "fragmentTag"    # Ljava/lang/String;

    .prologue
    .line 541
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->slideDownAudioPlayer()Z

    .line 543
    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 545
    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    const/4 v0, 0x0

    .line 555
    :goto_0
    return-object v0

    .line 548
    :cond_0
    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->secondaryFragments:Ljava/util/List;

    iget-object v2, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 549
    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    iput-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mPreviousFragment:Ljava/lang/String;

    .line 552
    :cond_1
    iput-object p1, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    .line 553
    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/MainActivity;->fetchSecondaryFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 554
    .local v0, "frag":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lorg/videolan/vlc/gui/MainActivity;->ShowFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method

.method public showTipViewIfNeeded(ILjava/lang/String;)V
    .locals 5
    .param p1, "layoutId"    # I
    .param p2, "settingKey"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 1024
    iget-object v2, p0, Lorg/videolan/vlc/gui/MainActivity;->mSettings:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v2, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lorg/videolan/vlc/util/AndroidDevices;->hasTsp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1025
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->removeTipViewIfDisplayed()V

    .line 1026
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1027
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lorg/videolan/vlc/gui/MainActivity;->mRootContainer:Landroid/support/v4/widget/DrawerLayout;

    .line 1028
    new-instance v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    .line 1027
    invoke-virtual {v2, v1, v3}, Landroid/support/v4/widget/DrawerLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1031
    new-instance v2, Lorg/videolan/vlc/gui/MainActivity$8;

    invoke-direct {v2, p0}, Lorg/videolan/vlc/gui/MainActivity$8;-><init>(Lorg/videolan/vlc/gui/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1038
    const v2, 0x7f07011b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1039
    .local v0, "okGotIt":Landroid/widget/TextView;
    new-instance v2, Lorg/videolan/vlc/gui/MainActivity$9;

    invoke-direct {v2, p0, p2}, Lorg/videolan/vlc/gui/MainActivity$9;-><init>(Lorg/videolan/vlc/gui/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1050
    .end local v0    # "okGotIt":Landroid/widget/TextView;
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public slideDownAudioPlayer()Z
    .locals 2

    .prologue
    .line 948
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mSlidingPane:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getState()I

    move-result v0

    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mSlidingPane:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 949
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mSlidingPane:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->openPane()Z

    .line 950
    const/4 v0, 0x1

    .line 952
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public slideUpOrDownAudioPlayer()V
    .locals 2

    .prologue
    .line 959
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mSlidingPane:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getState()I

    move-result v0

    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mSlidingPane:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 960
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mSlidingPane:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->openPane()Z

    .line 963
    :cond_0
    :goto_0
    return-void

    .line 961
    :cond_1
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mSlidingPane:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getState()I

    move-result v0

    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mSlidingPane:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 962
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mSlidingPane:Lorg/videolan/vlc/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->closePane()Z

    goto :goto_0
.end method
