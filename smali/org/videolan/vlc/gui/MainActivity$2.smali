.class Lorg/videolan/vlc/gui/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/MainActivity;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/MainActivity$2;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    .line 974
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPanelClosed()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1011
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity$2;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    # getter for: Lorg/videolan/vlc/gui/MainActivity;->mAudioPlayer:Lorg/videolan/vlc/gui/audio/AudioPlayer;
    invoke-static {v0}, Lorg/videolan/vlc/gui/MainActivity;->access$5(Lorg/videolan/vlc/gui/MainActivity;)Lorg/videolan/vlc/gui/audio/AudioPlayer;

    move-result-object v0

    move v2, v1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->setHeaderVisibilities(ZZZZZ)V

    .line 1012
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity$2;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    # getter for: Lorg/videolan/vlc/gui/MainActivity;->mRootContainer:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v0}, Lorg/videolan/vlc/gui/MainActivity;->access$6(Lorg/videolan/vlc/gui/MainActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 1013
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity$2;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    # getter for: Lorg/videolan/vlc/gui/MainActivity;->mAudioPlayer:Lorg/videolan/vlc/gui/audio/AudioPlayer;
    invoke-static {v0}, Lorg/videolan/vlc/gui/MainActivity;->access$5(Lorg/videolan/vlc/gui/MainActivity;)Lorg/videolan/vlc/gui/audio/AudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->showPlaylistTips()V

    .line 1014
    return-void
.end method

.method public onPanelOpened()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 986
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity$2;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    const v2, 0x7f01009e

    invoke-static {v0, v2}, Lorg/videolan/vlc/util/Util;->getResourceFromAttribute(Landroid/content/Context;I)I

    move-result v6

    .line 987
    .local v6, "resId":I
    if-eqz v6, :cond_0

    .line 988
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity$2;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    # getter for: Lorg/videolan/vlc/gui/MainActivity;->mSlidingPane:Lorg/videolan/vlc/widget/SlidingPaneLayout;
    invoke-static {v0}, Lorg/videolan/vlc/gui/MainActivity;->access$4(Lorg/videolan/vlc/gui/MainActivity;)Lorg/videolan/vlc/widget/SlidingPaneLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->setShadowResource(I)V

    .line 989
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity$2;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    # getter for: Lorg/videolan/vlc/gui/MainActivity;->mAudioPlayer:Lorg/videolan/vlc/gui/audio/AudioPlayer;
    invoke-static {v0}, Lorg/videolan/vlc/gui/MainActivity;->access$5(Lorg/videolan/vlc/gui/MainActivity;)Lorg/videolan/vlc/gui/audio/AudioPlayer;

    move-result-object v0

    move v2, v1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->setHeaderVisibilities(ZZZZZ)V

    .line 990
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity$2;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    # getter for: Lorg/videolan/vlc/gui/MainActivity;->mRootContainer:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v0}, Lorg/videolan/vlc/gui/MainActivity;->access$6(Lorg/videolan/vlc/gui/MainActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 991
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity$2;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/MainActivity;->removeTipViewIfDisplayed()V

    .line 992
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity$2;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    # getter for: Lorg/videolan/vlc/gui/MainActivity;->mAudioPlayer:Lorg/videolan/vlc/gui/audio/AudioPlayer;
    invoke-static {v0}, Lorg/videolan/vlc/gui/MainActivity;->access$5(Lorg/videolan/vlc/gui/MainActivity;)Lorg/videolan/vlc/gui/audio/AudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->showAudioPlayerTips()V

    .line 998
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity$2;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    const v1, 0x7f070373

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 999
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity$2;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    # getter for: Lorg/videolan/vlc/gui/MainActivity;->mRootContainer:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v0}, Lorg/videolan/vlc/gui/MainActivity;->access$6(Lorg/videolan/vlc/gui/MainActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity$2;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    # getter for: Lorg/videolan/vlc/gui/MainActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lorg/videolan/vlc/gui/MainActivity;->access$7(Lorg/videolan/vlc/gui/MainActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->addView(Landroid/view/View;)V

    .line 1001
    :cond_1
    return-void
.end method

.method public onPanelOpenedEntirely()V
    .locals 2

    .prologue
    .line 1005
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity$2;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    # getter for: Lorg/videolan/vlc/gui/MainActivity;->mSlidingPane:Lorg/videolan/vlc/widget/SlidingPaneLayout;
    invoke-static {v0}, Lorg/videolan/vlc/gui/MainActivity;->access$4(Lorg/videolan/vlc/gui/MainActivity;)Lorg/videolan/vlc/widget/SlidingPaneLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1006
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity$2;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    # getter for: Lorg/videolan/vlc/gui/MainActivity;->mRootContainer:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v0}, Lorg/videolan/vlc/gui/MainActivity;->access$6(Lorg/videolan/vlc/gui/MainActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 1007
    return-void
.end method

.method public onPanelSlide(F)V
    .locals 4
    .param p1, "slideOffset"    # F

    .prologue
    .line 978
    float-to-double v0, p1

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 979
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity$2;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 982
    :goto_0
    return-void

    .line 981
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity$2;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    goto :goto_0
.end method
