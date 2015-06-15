.class Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;
.super Ljava/lang/Object;
.source "AudioBrowserListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItem"
.end annotation


# instance fields
.field public mIsSeparator:Z

.field public mMediaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/libvlc/Media;",
            ">;"
        }
    .end annotation
.end field

.field public mSubTitle:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field final synthetic this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;


# direct methods
.method public constructor <init>(Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/Media;Z)V
    .locals 1
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "subTitle"    # Ljava/lang/String;
    .param p4, "media"    # Lorg/videolan/libvlc/Media;
    .param p5, "isSeparator"    # Z

    .prologue
    .line 81
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->this$0:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mMediaList:Ljava/util/ArrayList;

    .line 83
    if-eqz p4, :cond_0

    .line 84
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    iput-object p2, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mTitle:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mSubTitle:Ljava/lang/String;

    .line 87
    iput-boolean p5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mIsSeparator:Z

    .line 88
    return-void
.end method
