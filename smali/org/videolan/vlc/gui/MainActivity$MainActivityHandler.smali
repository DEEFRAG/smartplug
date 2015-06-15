.class Lorg/videolan/vlc/gui/MainActivity$MainActivityHandler;
.super Lorg/videolan/vlc/util/WeakHandler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainActivityHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/vlc/util/WeakHandler",
        "<",
        "Lorg/videolan/vlc/gui/MainActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/videolan/vlc/gui/MainActivity;)V
    .locals 0
    .param p1, "owner"    # Lorg/videolan/vlc/gui/MainActivity;

    .prologue
    .line 848
    invoke-direct {p0, p1}, Lorg/videolan/vlc/util/WeakHandler;-><init>(Ljava/lang/Object;)V

    .line 849
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 853
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity$MainActivityHandler;->getOwner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/MainActivity;

    .line 854
    .local v0, "ma":Lorg/videolan/vlc/gui/MainActivity;
    if-nez v0, :cond_0

    .line 861
    :goto_0
    return-void

    .line 856
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 858
    :pswitch_0
    # getter for: Lorg/videolan/vlc/gui/MainActivity;->mInfoLayout:Landroid/view/View;
    invoke-static {v0}, Lorg/videolan/vlc/gui/MainActivity;->access$3(Lorg/videolan/vlc/gui/MainActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 856
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
