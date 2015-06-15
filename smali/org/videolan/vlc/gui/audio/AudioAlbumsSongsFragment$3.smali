.class Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$3;
.super Ljava/lang/Object;
.source "AudioAlbumsSongsFragment.java"

# interfaces
.implements Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ContextPopupMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$3;->this$0:Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$3;)Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$3;->this$0:Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;

    return-object v0
.end method


# virtual methods
.method public onPopupMenu(Landroid/view/View;I)V
    .locals 4
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "position"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 354
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isHoneycombOrLater()Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    .line 371
    :goto_0
    return-void

    .line 360
    :cond_0
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$3;->this$0:Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;

    invoke-virtual {v1}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 361
    .local v0, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f100004

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 362
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$3;->this$0:Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    # invokes: Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->setContextMenuItems(Landroid/view/Menu;Landroid/view/View;I)V
    invoke-static {v1, v2, p1, p2}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->access$2(Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;Landroid/view/Menu;Landroid/view/View;I)V

    .line 364
    new-instance v1, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$3$1;

    invoke-direct {v1, p0, p2}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$3$1;-><init>(Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$3;I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 370
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0
.end method
