.class Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$1;
.super Ljava/lang/Object;
.source "AudioPlaylistAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

.field private final synthetic val$artist:Ljava/lang/String;

.field private final synthetic val$playlistView:Lorg/videolan/vlc/gui/audio/AudioPlaylistView;

.field private final synthetic val$pos:I

.field private final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;Lorg/videolan/vlc/gui/audio/AudioPlaylistView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$1;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter;

    iput-object p2, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$1;->val$playlistView:Lorg/videolan/vlc/gui/audio/AudioPlaylistView;

    iput p3, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$1;->val$pos:I

    iput-object p4, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$1;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$1;->val$artist:Ljava/lang/String;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 129
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$1;->val$playlistView:Lorg/videolan/vlc/gui/audio/AudioPlaylistView;

    iget v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$1;->val$pos:I

    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$1;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioPlaylistAdapter$1;->val$artist:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lorg/videolan/vlc/gui/audio/AudioPlaylistView;->startDrag(ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x1

    .line 134
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
