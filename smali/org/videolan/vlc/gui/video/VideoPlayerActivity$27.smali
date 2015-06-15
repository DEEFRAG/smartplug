.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$27;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->selectSubtitles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

.field private final synthetic val$arrList:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$27;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    iput-object p2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$27;->val$arrList:[Ljava/lang/String;

    .line 1602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "listPosition"    # I

    .prologue
    .line 1605
    const/4 v1, -0x2

    .line 1607
    .local v1, "trackID":I
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$27;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitleTracksList:Ljava/util/Map;
    invoke-static {v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$62(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1613
    :goto_0
    const/4 v2, -0x1

    if-ge v1, v2, :cond_2

    .line 1621
    :goto_1
    return-void

    .line 1607
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1608
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$27;->val$arrList:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1609
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1610
    goto :goto_0

    .line 1615
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_2
    invoke-static {}, Lorg/videolan/vlc/MediaDatabase;->getInstance()Lorg/videolan/vlc/MediaDatabase;

    move-result-object v2

    .line 1616
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$27;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;
    invoke-static {v3}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$61(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v3

    .line 1617
    sget-object v4, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->MEDIA_SPUTRACK:Lorg/videolan/vlc/MediaDatabase$mediaColumn;

    .line 1618
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1615
    invoke-virtual {v2, v3, v4, v5}, Lorg/videolan/vlc/MediaDatabase;->updateMedia(Ljava/lang/String;Lorg/videolan/vlc/MediaDatabase$mediaColumn;Ljava/lang/Object;)V

    .line 1619
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$27;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$6(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/videolan/libvlc/LibVLC;->setSpuTrack(I)I

    .line 1620
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_1
.end method
