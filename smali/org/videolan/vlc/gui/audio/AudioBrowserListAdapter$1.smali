.class Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$1;
.super Ljava/lang/Object;
.source "AudioBrowserListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->getViewMedia(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$1;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    iput p2, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$1;->val$pos:I

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 279
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$1;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mContextPopupMenuListener:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ContextPopupMenuListener;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->access$1(Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;)Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ContextPopupMenuListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$1;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->mContextPopupMenuListener:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ContextPopupMenuListener;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->access$1(Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;)Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ContextPopupMenuListener;

    move-result-object v0

    iget v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$1;->val$pos:I

    invoke-interface {v0, p1, v1}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ContextPopupMenuListener;->onPopupMenu(Landroid/view/View;I)V

    .line 281
    :cond_0
    return-void
.end method
