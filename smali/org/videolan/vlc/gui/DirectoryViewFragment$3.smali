.class Lorg/videolan/vlc/gui/DirectoryViewFragment$3;
.super Lorg/videolan/vlc/util/VLCRunnable;
.source "DirectoryViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/DirectoryViewFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/DirectoryViewFragment;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/DirectoryViewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment$3;->this$0:Lorg/videolan/vlc/gui/DirectoryViewFragment;

    .line 157
    invoke-direct {p0}, Lorg/videolan/vlc/util/VLCRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 160
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment$3;->this$0:Lorg/videolan/vlc/gui/DirectoryViewFragment;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->refresh()V

    .line 161
    return-void
.end method
