.class Lorg/videolan/vlc/gui/audio/MediaComparators$4;
.super Ljava/lang/Object;
.source "MediaComparators.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/audio/MediaComparators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/videolan/libvlc/Media;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lorg/videolan/libvlc/Media;

    check-cast p2, Lorg/videolan/libvlc/Media;

    invoke-virtual {p0, p1, p2}, Lorg/videolan/vlc/gui/audio/MediaComparators$4;->compare(Lorg/videolan/libvlc/Media;Lorg/videolan/libvlc/Media;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/videolan/libvlc/Media;Lorg/videolan/libvlc/Media;)I
    .locals 4
    .param p1, "m1"    # Lorg/videolan/libvlc/Media;
    .param p2, "m2"    # Lorg/videolan/libvlc/Media;

    .prologue
    .line 54
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->getAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/videolan/libvlc/Media;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 55
    .local v0, "res":I
    if-nez v0, :cond_0

    .line 56
    sget-object v1, Lorg/videolan/vlc/gui/audio/MediaComparators;->byMRL:Ljava/util/Comparator;

    invoke-interface {v1, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 57
    :cond_0
    return v0
.end method
