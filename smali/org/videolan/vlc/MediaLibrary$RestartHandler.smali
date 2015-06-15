.class Lorg/videolan/vlc/MediaLibrary$RestartHandler;
.super Lorg/videolan/vlc/util/WeakHandler;
.source "MediaLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/MediaLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RestartHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/vlc/util/WeakHandler",
        "<",
        "Lorg/videolan/vlc/MediaLibrary;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/videolan/vlc/MediaLibrary;)V
    .locals 0
    .param p1, "owner"    # Lorg/videolan/vlc/MediaLibrary;

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lorg/videolan/vlc/util/WeakHandler;-><init>(Ljava/lang/Object;)V

    .line 374
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 378
    invoke-virtual {p0}, Lorg/videolan/vlc/MediaLibrary$RestartHandler;->getOwner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/MediaLibrary;

    .line 379
    .local v0, "owner":Lorg/videolan/vlc/MediaLibrary;
    if-nez v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 380
    :cond_0
    invoke-virtual {v0}, Lorg/videolan/vlc/MediaLibrary;->loadMediaItems()V

    goto :goto_0
.end method
