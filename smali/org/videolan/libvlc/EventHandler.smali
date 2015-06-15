.class public Lorg/videolan/libvlc/EventHandler;
.super Ljava/lang/Object;
.source "EventHandler.java"


# static fields
.field public static final CustomMediaListExpanding:I = 0x2000

.field public static final CustomMediaListExpandingEnd:I = 0x2001

.field public static final CustomMediaListItemAdded:I = 0x2002

.field public static final CustomMediaListItemDeleted:I = 0x2003

.field public static final CustomMediaListItemMoved:I = 0x2004

.field public static final HardwareAccelerationError:I = 0x3000

.field public static final MediaParsedChanged:I = 0x3

.field public static final MediaPlayerEncounteredError:I = 0x10a

.field public static final MediaPlayerEndReached:I = 0x109

.field public static final MediaPlayerPaused:I = 0x105

.field public static final MediaPlayerPlaying:I = 0x104

.field public static final MediaPlayerPositionChanged:I = 0x10c

.field public static final MediaPlayerStopped:I = 0x106

.field public static final MediaPlayerTimeChanged:I = 0x10b

.field public static final MediaPlayerVout:I = 0x112

.field private static mInstance:Lorg/videolan/libvlc/EventHandler;


# instance fields
.field private mEventHandler:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/videolan/libvlc/EventHandler;->mEventHandler:Ljava/util/ArrayList;

    .line 104
    return-void
.end method

.method public static getInstance()Lorg/videolan/libvlc/EventHandler;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lorg/videolan/libvlc/EventHandler;->mInstance:Lorg/videolan/libvlc/EventHandler;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lorg/videolan/libvlc/EventHandler;

    invoke-direct {v0}, Lorg/videolan/libvlc/EventHandler;-><init>()V

    sput-object v0, Lorg/videolan/libvlc/EventHandler;->mInstance:Lorg/videolan/libvlc/EventHandler;

    .line 110
    :cond_0
    sget-object v0, Lorg/videolan/libvlc/EventHandler;->mInstance:Lorg/videolan/libvlc/EventHandler;

    return-object v0
.end method


# virtual methods
.method public addHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/videolan/libvlc/EventHandler;->mEventHandler:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lorg/videolan/libvlc/EventHandler;->mEventHandler:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    return-void
.end method

.method public callback(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "b"    # Landroid/os/Bundle;

    .prologue
    .line 124
    const-string v2, "event"

    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/videolan/libvlc/EventHandler;->mEventHandler:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 130
    return-void

    .line 126
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 127
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 128
    iget-object v2, p0, Lorg/videolan/libvlc/EventHandler;->mEventHandler:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/videolan/libvlc/EventHandler;->mEventHandler:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method
