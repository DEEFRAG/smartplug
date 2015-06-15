.class public Lorg/videolan/vlc/gui/audio/MediaComparators;
.super Ljava/lang/Object;
.source "MediaComparators.java"


# static fields
.field public static final byAlbum:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/videolan/libvlc/Media;",
            ">;"
        }
    .end annotation
.end field

.field public static final byArtist:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/videolan/libvlc/Media;",
            ">;"
        }
    .end annotation
.end field

.field public static final byGenre:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/videolan/libvlc/Media;",
            ">;"
        }
    .end annotation
.end field

.field public static final byLength:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/videolan/libvlc/Media;",
            ">;"
        }
    .end annotation
.end field

.field public static final byMRL:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/videolan/libvlc/Media;",
            ">;"
        }
    .end annotation
.end field

.field public static final byName:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/videolan/libvlc/Media;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lorg/videolan/vlc/gui/audio/MediaComparators$1;

    invoke-direct {v0}, Lorg/videolan/vlc/gui/audio/MediaComparators$1;-><init>()V

    sput-object v0, Lorg/videolan/vlc/gui/audio/MediaComparators;->byName:Ljava/util/Comparator;

    .line 35
    new-instance v0, Lorg/videolan/vlc/gui/audio/MediaComparators$2;

    invoke-direct {v0}, Lorg/videolan/vlc/gui/audio/MediaComparators$2;-><init>()V

    sput-object v0, Lorg/videolan/vlc/gui/audio/MediaComparators;->byMRL:Ljava/util/Comparator;

    .line 42
    new-instance v0, Lorg/videolan/vlc/gui/audio/MediaComparators$3;

    invoke-direct {v0}, Lorg/videolan/vlc/gui/audio/MediaComparators$3;-><init>()V

    sput-object v0, Lorg/videolan/vlc/gui/audio/MediaComparators;->byLength:Ljava/util/Comparator;

    .line 51
    new-instance v0, Lorg/videolan/vlc/gui/audio/MediaComparators$4;

    invoke-direct {v0}, Lorg/videolan/vlc/gui/audio/MediaComparators$4;-><init>()V

    sput-object v0, Lorg/videolan/vlc/gui/audio/MediaComparators;->byAlbum:Ljava/util/Comparator;

    .line 61
    new-instance v0, Lorg/videolan/vlc/gui/audio/MediaComparators$5;

    invoke-direct {v0}, Lorg/videolan/vlc/gui/audio/MediaComparators$5;-><init>()V

    sput-object v0, Lorg/videolan/vlc/gui/audio/MediaComparators;->byArtist:Ljava/util/Comparator;

    .line 71
    new-instance v0, Lorg/videolan/vlc/gui/audio/MediaComparators$6;

    invoke-direct {v0}, Lorg/videolan/vlc/gui/audio/MediaComparators$6;-><init>()V

    sput-object v0, Lorg/videolan/vlc/gui/audio/MediaComparators;->byGenre:Ljava/util/Comparator;

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
