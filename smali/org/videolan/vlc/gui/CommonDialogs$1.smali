.class Lorg/videolan/vlc/gui/CommonDialogs$1;
.super Ljava/lang/Object;
.source "CommonDialogs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/CommonDialogs;->deleteMedia(Landroid/content/Context;Ljava/lang/String;Lorg/videolan/vlc/util/VLCRunnable;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$fileMedia:Ljava/io/File;

.field private final synthetic val$runnable:Lorg/videolan/vlc/util/VLCRunnable;


# direct methods
.method constructor <init>(Ljava/io/File;Lorg/videolan/vlc/util/VLCRunnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/CommonDialogs$1;->val$fileMedia:Ljava/io/File;

    iput-object p2, p0, Lorg/videolan/vlc/gui/CommonDialogs$1;->val$runnable:Lorg/videolan/vlc/util/VLCRunnable;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lorg/videolan/vlc/gui/CommonDialogs$1;->val$fileMedia:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 78
    iget-object v0, p0, Lorg/videolan/vlc/gui/CommonDialogs$1;->val$runnable:Lorg/videolan/vlc/util/VLCRunnable;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lorg/videolan/vlc/gui/CommonDialogs$1;->val$runnable:Lorg/videolan/vlc/util/VLCRunnable;

    invoke-virtual {v0}, Lorg/videolan/vlc/util/VLCRunnable;->run()V

    .line 80
    :cond_0
    return-void
.end method
