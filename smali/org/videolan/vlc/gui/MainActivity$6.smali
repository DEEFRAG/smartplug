.class Lorg/videolan/vlc/gui/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/MainActivity;->onOpenMRL()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/MainActivity;

.field private final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/MainActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/MainActivity$6;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    iput-object p2, p0, Lorg/videolan/vlc/gui/MainActivity$6;->val$input:Landroid/widget/EditText;

    .line 896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 901
    new-instance v0, Lorg/videolan/vlc/gui/MainActivity$6$1;

    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity$6;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    iget-object v2, p0, Lorg/videolan/vlc/gui/MainActivity$6;->val$input:Landroid/widget/EditText;

    invoke-direct {v0, p0, v1, v2}, Lorg/videolan/vlc/gui/MainActivity$6$1;-><init>(Lorg/videolan/vlc/gui/MainActivity$6;Landroid/content/Context;Landroid/widget/EditText;)V

    .line 917
    .local v0, "task":Lorg/videolan/vlc/VLCCallbackTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/VLCCallbackTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 918
    return-void
.end method
