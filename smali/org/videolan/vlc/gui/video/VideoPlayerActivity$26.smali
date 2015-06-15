.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$26;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->selectAudioTrack()V
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
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$26;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    iput-object p2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$26;->val$arrList:[Ljava/lang/String;

    .line 1551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "listPosition"    # I

    .prologue
    .line 1554
    const/4 v1, -0x1

    .line 1556
    .local v1, "trackID":I
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$26;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mAudioTracksList:Ljava/util/Map;
    invoke-static {v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$60(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1562
    :goto_0
    if-gez v1, :cond_2

    .line 1570
    :goto_1
    return-void

    .line 1556
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1557
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$26;->val$arrList:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1558
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1559
    goto :goto_0

    .line 1564
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_2
    invoke-static {}, Lorg/videolan/vlc/MediaDatabase;->getInstance()Lorg/videolan/vlc/MediaDatabase;

    move-result-object v2

    .line 1565
    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$26;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLocation:Ljava/lang/String;
    invoke-static {v3}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$61(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v3

    .line 1566
    sget-object v4, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->MEDIA_AUDIOTRACK:Lorg/videolan/vlc/MediaDatabase$mediaColumn;

    .line 1567
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1564
    invoke-virtual {v2, v3, v4, v5}, Lorg/videolan/vlc/MediaDatabase;->updateMedia(Ljava/lang/String;Lorg/videolan/vlc/MediaDatabase$mediaColumn;Ljava/lang/Object;)V

    .line 1568
    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$26;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$6(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/videolan/libvlc/LibVLC;->setAudioTrack(I)I

    .line 1569
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_1
.end method
