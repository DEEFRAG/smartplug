.class Lorg/videolan/vlc/gui/audio/MediaComparators$3;
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
    .line 42
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

    invoke-virtual {p0, p1, p2}, Lorg/videolan/vlc/gui/audio/MediaComparators$3;->compare(Lorg/videolan/libvlc/Media;Lorg/videolan/libvlc/Media;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/videolan/libvlc/Media;Lorg/videolan/libvlc/Media;)I
    .locals 4
    .param p1, "m1"    # Lorg/videolan/libvlc/Media;
    .param p2, "m2"    # Lorg/videolan/libvlc/Media;

    .prologue
    .line 45
    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->getLength()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/videolan/libvlc/Media;->getLength()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, -0x1

    .line 47
    :goto_0
    return v0

    .line 46
    :cond_0
    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->getLength()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/videolan/libvlc/Media;->getLength()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
