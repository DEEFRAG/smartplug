.class Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$4;
.super Ljava/lang/Object;
.source "AudioBrowserFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$4;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;
    .param p3, "p"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, "av":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$4;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mAlbumsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;
    invoke-static {v1}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->access$7(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->getLocations(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 273
    .local v0, "mediaLocation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$4;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;
    invoke-static {v1}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->access$5(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/videolan/vlc/audio/AudioServiceController;->load(Ljava/util/List;I)V

    .line 274
    return-void
.end method
