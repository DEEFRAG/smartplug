.class Lorg/videolan/vlc/gui/AboutFragment$3;
.super Ljava/lang/Object;
.source "AboutFragment.java"

# interfaces
.implements Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/AboutFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/AboutFragment;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/AboutFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/AboutFragment$3;->this$0:Lorg/videolan/vlc/gui/AboutFragment;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackSwitched()V
    .locals 2

    .prologue
    .line 124
    iget-object v1, p0, Lorg/videolan/vlc/gui/AboutFragment$3;->this$0:Lorg/videolan/vlc/gui/AboutFragment;

    invoke-virtual {v1}, Lorg/videolan/vlc/gui/AboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/MainActivity;

    .line 125
    .local v0, "activity":Lorg/videolan/vlc/gui/MainActivity;
    invoke-virtual {v0}, Lorg/videolan/vlc/gui/MainActivity;->popSecondaryFragment()V

    .line 126
    return-void
.end method

.method public onSwitched(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lorg/videolan/vlc/gui/AboutFragment$3;->this$0:Lorg/videolan/vlc/gui/AboutFragment;

    # getter for: Lorg/videolan/vlc/gui/AboutFragment;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v0}, Lorg/videolan/vlc/gui/AboutFragment;->access$0(Lorg/videolan/vlc/gui/AboutFragment;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 115
    return-void
.end method

.method public onSwitching(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 111
    return-void
.end method

.method public onTouchClick()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public onTouchDown()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public onTouchUp()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method
