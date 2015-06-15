.class Lorg/videolan/vlc/gui/video/VideoGridFragment$3;
.super Ljava/lang/Object;
.source "VideoGridFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/video/VideoGridFragment;->onContextPopupMenu(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/video/VideoGridFragment;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/video/VideoGridFragment;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment$3;->this$0:Lorg/videolan/vlc/gui/video/VideoGridFragment;

    iput p2, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment$3;->val$position:I

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 373
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment$3;->this$0:Lorg/videolan/vlc/gui/video/VideoGridFragment;

    iget v1, p0, Lorg/videolan/vlc/gui/video/VideoGridFragment$3;->val$position:I

    # invokes: Lorg/videolan/vlc/gui/video/VideoGridFragment;->handleContextItemSelected(Landroid/view/MenuItem;I)Z
    invoke-static {v0, p1, v1}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->access$6(Lorg/videolan/vlc/gui/video/VideoGridFragment;Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method
