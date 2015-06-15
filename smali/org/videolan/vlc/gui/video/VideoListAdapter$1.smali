.class Lorg/videolan/vlc/gui/video/VideoListAdapter$1;
.super Ljava/lang/Object;
.source "VideoListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/video/VideoListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/video/VideoListAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/video/VideoListAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter$1;->this$0:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    iput p2, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter$1;->val$position:I

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 159
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter$1;->this$0:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    # getter for: Lorg/videolan/vlc/gui/video/VideoListAdapter;->mFragment:Lorg/videolan/vlc/gui/video/VideoGridFragment;
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->access$1(Lorg/videolan/vlc/gui/video/VideoListAdapter;)Lorg/videolan/vlc/gui/video/VideoGridFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter$1;->this$0:Lorg/videolan/vlc/gui/video/VideoListAdapter;

    # getter for: Lorg/videolan/vlc/gui/video/VideoListAdapter;->mFragment:Lorg/videolan/vlc/gui/video/VideoGridFragment;
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoListAdapter;->access$1(Lorg/videolan/vlc/gui/video/VideoListAdapter;)Lorg/videolan/vlc/gui/video/VideoGridFragment;

    move-result-object v0

    iget v1, p0, Lorg/videolan/vlc/gui/video/VideoListAdapter$1;->val$position:I

    invoke-virtual {v0, p1, v1}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->onContextPopupMenu(Landroid/view/View;I)V

    .line 161
    :cond_0
    return-void
.end method
