.class Lorg/videolan/vlc/gui/AboutFragment$2;
.super Ljava/lang/Object;
.source "AboutFragment.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


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
    iput-object p1, p0, Lorg/videolan/vlc/gui/AboutFragment$2;->this$0:Lorg/videolan/vlc/gui/AboutFragment;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/videolan/vlc/gui/AboutFragment$2;->this$0:Lorg/videolan/vlc/gui/AboutFragment;

    iget-object v1, p0, Lorg/videolan/vlc/gui/AboutFragment$2;->this$0:Lorg/videolan/vlc/gui/AboutFragment;

    # getter for: Lorg/videolan/vlc/gui/AboutFragment;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lorg/videolan/vlc/gui/AboutFragment;->access$0(Lorg/videolan/vlc/gui/AboutFragment;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    invoke-static {v0, v1}, Lorg/videolan/vlc/gui/AboutFragment;->access$1(Lorg/videolan/vlc/gui/AboutFragment;I)V

    .line 105
    iget-object v0, p0, Lorg/videolan/vlc/gui/AboutFragment$2;->this$0:Lorg/videolan/vlc/gui/AboutFragment;

    iget-object v0, v0, Lorg/videolan/vlc/gui/AboutFragment;->mFlingViewGroup:Lorg/videolan/vlc/widget/FlingViewGroup;

    iget-object v1, p0, Lorg/videolan/vlc/gui/AboutFragment$2;->this$0:Lorg/videolan/vlc/gui/AboutFragment;

    # getter for: Lorg/videolan/vlc/gui/AboutFragment;->mCurrentTab:I
    invoke-static {v1}, Lorg/videolan/vlc/gui/AboutFragment;->access$2(Lorg/videolan/vlc/gui/AboutFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/widget/FlingViewGroup;->smoothScrollTo(I)V

    .line 106
    return-void
.end method
