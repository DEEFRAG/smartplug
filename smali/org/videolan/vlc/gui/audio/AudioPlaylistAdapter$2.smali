.class Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$2;
.super Ljava/lang/Object;
.source "AudioPlaylistAdapter.java"

# interfaces
.implements Lorg/videolan/vlc/widget/AudioPlaylistItemViewGroup$OnItemSlidedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

.field private final synthetic val$playlistView:Lorg/videolan/vlc/gui/audio/AudioPlaylistView;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;Lorg/videolan/vlc/gui/audio/AudioPlaylistView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$2;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    iput-object p2, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$2;->val$playlistView:Lorg/videolan/vlc/gui/audio/AudioPlaylistView;

    iput p3, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$2;->val$pos:I

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSlided()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$2;->val$playlistView:Lorg/videolan/vlc/gui/audio/AudioPlaylistView;

    iget v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$2;->val$pos:I

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->removeItem(I)V

    .line 142
    return-void
.end method
