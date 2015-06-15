.class Lorg/videolan/vlc/gui/MainActivity$6$1;
.super Lorg/videolan/vlc/VLCCallbackTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/MainActivity$6;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/videolan/vlc/gui/MainActivity$6;

.field private final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/MainActivity$6;Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/MainActivity$6$1;->this$1:Lorg/videolan/vlc/gui/MainActivity$6;

    iput-object p3, p0, Lorg/videolan/vlc/gui/MainActivity$6$1;->val$input:Landroid/widget/EditText;

    .line 901
    invoke-direct {p0, p2}, Lorg/videolan/vlc/VLCCallbackTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 905
    invoke-static {}, Lorg/videolan/vlc/audio/AudioServiceController;->getInstance()Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v0

    .line 906
    .local v0, "c":Lorg/videolan/vlc/audio/AudioServiceController;
    iget-object v2, p0, Lorg/videolan/vlc/gui/MainActivity$6$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 914
    .local v1, "s":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/videolan/vlc/audio/AudioServiceController;->load(Ljava/lang/String;Z)V

    .line 915
    return-void
.end method
