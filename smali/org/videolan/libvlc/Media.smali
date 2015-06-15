.class public Lorg/videolan/libvlc/Media;
.super Ljava/lang/Object;
.source "Media.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/Media$UnknownStringType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/videolan/libvlc/Media;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$videolan$libvlc$Media$UnknownStringType:[I = null

.field public static final AUDIO_EXTENSIONS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTENSIONS_REGEX:Ljava/lang/String;

.field public static final FOLDER_BLACKLIST:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "VLC/LibVLC/Media"

.field public static final TYPE_ALL:I = -0x1

.field public static final TYPE_AUDIO:I = 0x1

.field public static final TYPE_GROUP:I = 0x2

.field public static final TYPE_VIDEO:I

.field public static final VIDEO_EXTENSIONS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mArtworkURL:Ljava/lang/String;

.field private mAudioTrack:I

.field private mCopyright:Ljava/lang/String;

.field private mDate:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mEncodedBy:Ljava/lang/String;

.field private mFilename:Ljava/lang/String;

.field private mGenre:Ljava/lang/String;

.field private mHeight:I

.field private mIsPictureParsed:Z

.field private mLength:J

.field private final mLocation:Ljava/lang/String;

.field private mNowPlaying:Ljava/lang/String;

.field private mPicture:Landroid/graphics/Bitmap;

.field private mPublisher:Ljava/lang/String;

.field private mRating:Ljava/lang/String;

.field private mSettings:Ljava/lang/String;

.field private mSpuTrack:I

.field private mTime:J

.field protected mTitle:Ljava/lang/String;

.field private mTrackID:Ljava/lang/String;

.field private mTrackNumber:Ljava/lang/String;

.field private mType:I

.field private mWidth:I


# direct methods
.method static synthetic $SWITCH_TABLE$org$videolan$libvlc$Media$UnknownStringType()[I
    .locals 3

    .prologue
    .line 31
    sget-object v0, Lorg/videolan/libvlc/Media;->$SWITCH_TABLE$org$videolan$libvlc$Media$UnknownStringType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/videolan/libvlc/Media$UnknownStringType;->values()[Lorg/videolan/libvlc/Media$UnknownStringType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/videolan/libvlc/Media$UnknownStringType;->Album:Lorg/videolan/libvlc/Media$UnknownStringType;

    invoke-virtual {v1}, Lorg/videolan/libvlc/Media$UnknownStringType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lorg/videolan/libvlc/Media$UnknownStringType;->Artist:Lorg/videolan/libvlc/Media$UnknownStringType;

    invoke-virtual {v1}, Lorg/videolan/libvlc/Media$UnknownStringType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lorg/videolan/libvlc/Media$UnknownStringType;->Genre:Lorg/videolan/libvlc/Media$UnknownStringType;

    invoke-virtual {v1}, Lorg/videolan/libvlc/Media$UnknownStringType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lorg/videolan/libvlc/Media;->$SWITCH_TABLE$org$videolan$libvlc$Media$UnknownStringType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 40
    const/16 v7, 0x3a

    new-array v5, v7, [Ljava/lang/String;

    .line 41
    const-string v7, ".3g2"

    aput-object v7, v5, v6

    const-string v7, ".3gp"

    aput-object v7, v5, v10

    const-string v7, ".3gp2"

    aput-object v7, v5, v9

    const-string v7, ".3gpp"

    aput-object v7, v5, v11

    const-string v7, ".amv"

    aput-object v7, v5, v12

    const/4 v7, 0x5

    const-string v8, ".asf"

    aput-object v8, v5, v7

    const/4 v7, 0x6

    const-string v8, ".avi"

    aput-object v8, v5, v7

    const/4 v7, 0x7

    const-string v8, ".divx"

    aput-object v8, v5, v7

    const/16 v7, 0x8

    const-string v8, ".drc"

    aput-object v8, v5, v7

    const/16 v7, 0x9

    const-string v8, ".dv"

    aput-object v8, v5, v7

    const/16 v7, 0xa

    .line 42
    const-string v8, ".f4v"

    aput-object v8, v5, v7

    const/16 v7, 0xb

    const-string v8, ".flv"

    aput-object v8, v5, v7

    const/16 v7, 0xc

    const-string v8, ".gvi"

    aput-object v8, v5, v7

    const/16 v7, 0xd

    const-string v8, ".gxf"

    aput-object v8, v5, v7

    const/16 v7, 0xe

    const-string v8, ".ismv"

    aput-object v8, v5, v7

    const/16 v7, 0xf

    const-string v8, ".iso"

    aput-object v8, v5, v7

    const/16 v7, 0x10

    const-string v8, ".m1v"

    aput-object v8, v5, v7

    const/16 v7, 0x11

    const-string v8, ".m2v"

    aput-object v8, v5, v7

    const/16 v7, 0x12

    const-string v8, ".m2t"

    aput-object v8, v5, v7

    const/16 v7, 0x13

    const-string v8, ".m2ts"

    aput-object v8, v5, v7

    const/16 v7, 0x14

    .line 43
    const-string v8, ".m4v"

    aput-object v8, v5, v7

    const/16 v7, 0x15

    const-string v8, ".mkv"

    aput-object v8, v5, v7

    const/16 v7, 0x16

    const-string v8, ".mov"

    aput-object v8, v5, v7

    const/16 v7, 0x17

    const-string v8, ".mp2"

    aput-object v8, v5, v7

    const/16 v7, 0x18

    const-string v8, ".mp2v"

    aput-object v8, v5, v7

    const/16 v7, 0x19

    const-string v8, ".mp4"

    aput-object v8, v5, v7

    const/16 v7, 0x1a

    const-string v8, ".mp4v"

    aput-object v8, v5, v7

    const/16 v7, 0x1b

    const-string v8, ".mpe"

    aput-object v8, v5, v7

    const/16 v7, 0x1c

    const-string v8, ".mpeg"

    aput-object v8, v5, v7

    const/16 v7, 0x1d

    .line 44
    const-string v8, ".mpeg1"

    aput-object v8, v5, v7

    const/16 v7, 0x1e

    const-string v8, ".mpeg2"

    aput-object v8, v5, v7

    const/16 v7, 0x1f

    const-string v8, ".mpeg4"

    aput-object v8, v5, v7

    const/16 v7, 0x20

    const-string v8, ".mpg"

    aput-object v8, v5, v7

    const/16 v7, 0x21

    const-string v8, ".mpv2"

    aput-object v8, v5, v7

    const/16 v7, 0x22

    const-string v8, ".mts"

    aput-object v8, v5, v7

    const/16 v7, 0x23

    const-string v8, ".mtv"

    aput-object v8, v5, v7

    const/16 v7, 0x24

    const-string v8, ".mxf"

    aput-object v8, v5, v7

    const/16 v7, 0x25

    const-string v8, ".mxg"

    aput-object v8, v5, v7

    const/16 v7, 0x26

    .line 45
    const-string v8, ".nsv"

    aput-object v8, v5, v7

    const/16 v7, 0x27

    const-string v8, ".nut"

    aput-object v8, v5, v7

    const/16 v7, 0x28

    const-string v8, ".nuv"

    aput-object v8, v5, v7

    const/16 v7, 0x29

    const-string v8, ".ogm"

    aput-object v8, v5, v7

    const/16 v7, 0x2a

    const-string v8, ".ogv"

    aput-object v8, v5, v7

    const/16 v7, 0x2b

    const-string v8, ".ogx"

    aput-object v8, v5, v7

    const/16 v7, 0x2c

    const-string v8, ".ps"

    aput-object v8, v5, v7

    const/16 v7, 0x2d

    const-string v8, ".rec"

    aput-object v8, v5, v7

    const/16 v7, 0x2e

    const-string v8, ".rm"

    aput-object v8, v5, v7

    const/16 v7, 0x2f

    const-string v8, ".rmvb"

    aput-object v8, v5, v7

    const/16 v7, 0x30

    .line 46
    const-string v8, ".tod"

    aput-object v8, v5, v7

    const/16 v7, 0x31

    const-string v8, ".ts"

    aput-object v8, v5, v7

    const/16 v7, 0x32

    const-string v8, ".tts"

    aput-object v8, v5, v7

    const/16 v7, 0x33

    const-string v8, ".vob"

    aput-object v8, v5, v7

    const/16 v7, 0x34

    const-string v8, ".vro"

    aput-object v8, v5, v7

    const/16 v7, 0x35

    const-string v8, ".webm"

    aput-object v8, v5, v7

    const/16 v7, 0x36

    const-string v8, ".wm"

    aput-object v8, v5, v7

    const/16 v7, 0x37

    const-string v8, ".wmv"

    aput-object v8, v5, v7

    const/16 v7, 0x38

    const-string v8, ".wtv"

    aput-object v8, v5, v7

    const/16 v7, 0x39

    const-string v8, ".xesc"

    aput-object v8, v5, v7

    .line 48
    .local v5, "video_extensions":[Ljava/lang/String;
    const/16 v7, 0x30

    new-array v0, v7, [Ljava/lang/String;

    .line 49
    const-string v7, ".3ga"

    aput-object v7, v0, v6

    const-string v7, ".a52"

    aput-object v7, v0, v10

    const-string v7, ".aac"

    aput-object v7, v0, v9

    const-string v7, ".ac3"

    aput-object v7, v0, v11

    const-string v7, ".adt"

    aput-object v7, v0, v12

    const/4 v7, 0x5

    const-string v8, ".adts"

    aput-object v8, v0, v7

    const/4 v7, 0x6

    const-string v8, ".aif"

    aput-object v8, v0, v7

    const/4 v7, 0x7

    const-string v8, ".aifc"

    aput-object v8, v0, v7

    const/16 v7, 0x8

    const-string v8, ".aiff"

    aput-object v8, v0, v7

    const/16 v7, 0x9

    const-string v8, ".amr"

    aput-object v8, v0, v7

    const/16 v7, 0xa

    .line 50
    const-string v8, ".aob"

    aput-object v8, v0, v7

    const/16 v7, 0xb

    const-string v8, ".ape"

    aput-object v8, v0, v7

    const/16 v7, 0xc

    const-string v8, ".awb"

    aput-object v8, v0, v7

    const/16 v7, 0xd

    const-string v8, ".caf"

    aput-object v8, v0, v7

    const/16 v7, 0xe

    const-string v8, ".dts"

    aput-object v8, v0, v7

    const/16 v7, 0xf

    const-string v8, ".flac"

    aput-object v8, v0, v7

    const/16 v7, 0x10

    const-string v8, ".it"

    aput-object v8, v0, v7

    const/16 v7, 0x11

    const-string v8, ".m4a"

    aput-object v8, v0, v7

    const/16 v7, 0x12

    const-string v8, ".m4b"

    aput-object v8, v0, v7

    const/16 v7, 0x13

    const-string v8, ".m4p"

    aput-object v8, v0, v7

    const/16 v7, 0x14

    .line 51
    const-string v8, ".mid"

    aput-object v8, v0, v7

    const/16 v7, 0x15

    const-string v8, ".mka"

    aput-object v8, v0, v7

    const/16 v7, 0x16

    const-string v8, ".mlp"

    aput-object v8, v0, v7

    const/16 v7, 0x17

    const-string v8, ".mod"

    aput-object v8, v0, v7

    const/16 v7, 0x18

    const-string v8, ".mpa"

    aput-object v8, v0, v7

    const/16 v7, 0x19

    const-string v8, ".mp1"

    aput-object v8, v0, v7

    const/16 v7, 0x1a

    const-string v8, ".mp2"

    aput-object v8, v0, v7

    const/16 v7, 0x1b

    const-string v8, ".mp3"

    aput-object v8, v0, v7

    const/16 v7, 0x1c

    const-string v8, ".mpc"

    aput-object v8, v0, v7

    const/16 v7, 0x1d

    const-string v8, ".mpga"

    aput-object v8, v0, v7

    const/16 v7, 0x1e

    .line 52
    const-string v8, ".oga"

    aput-object v8, v0, v7

    const/16 v7, 0x1f

    const-string v8, ".ogg"

    aput-object v8, v0, v7

    const/16 v7, 0x20

    const-string v8, ".oma"

    aput-object v8, v0, v7

    const/16 v7, 0x21

    const-string v8, ".opus"

    aput-object v8, v0, v7

    const/16 v7, 0x22

    const-string v8, ".ra"

    aput-object v8, v0, v7

    const/16 v7, 0x23

    const-string v8, ".ram"

    aput-object v8, v0, v7

    const/16 v7, 0x24

    const-string v8, ".rmi"

    aput-object v8, v0, v7

    const/16 v7, 0x25

    const-string v8, ".s3m"

    aput-object v8, v0, v7

    const/16 v7, 0x26

    const-string v8, ".spx"

    aput-object v8, v0, v7

    const/16 v7, 0x27

    const-string v8, ".tta"

    aput-object v8, v0, v7

    const/16 v7, 0x28

    .line 53
    const-string v8, ".voc"

    aput-object v8, v0, v7

    const/16 v7, 0x29

    const-string v8, ".vqf"

    aput-object v8, v0, v7

    const/16 v7, 0x2a

    const-string v8, ".w64"

    aput-object v8, v0, v7

    const/16 v7, 0x2b

    const-string v8, ".wav"

    aput-object v8, v0, v7

    const/16 v7, 0x2c

    const-string v8, ".wma"

    aput-object v8, v0, v7

    const/16 v7, 0x2d

    const-string v8, ".wv"

    aput-object v8, v0, v7

    const/16 v7, 0x2e

    const-string v8, ".xa"

    aput-object v8, v0, v7

    const/16 v7, 0x2f

    const-string v8, ".xm"

    aput-object v8, v0, v7

    .line 55
    .local v0, "audio_extensions":[Ljava/lang/String;
    const/16 v7, 0xa

    new-array v1, v7, [Ljava/lang/String;

    .line 56
    const-string v7, "/alarms"

    aput-object v7, v1, v6

    .line 57
    const-string v7, "/notifications"

    aput-object v7, v1, v10

    .line 58
    const-string v7, "/ringtones"

    aput-object v7, v1, v9

    .line 59
    const-string v7, "/media/alarms"

    aput-object v7, v1, v11

    .line 60
    const-string v7, "/media/notifications"

    aput-object v7, v1, v12

    const/4 v7, 0x5

    .line 61
    const-string v8, "/media/ringtones"

    aput-object v8, v1, v7

    const/4 v7, 0x6

    .line 62
    const-string v8, "/media/audio/alarms"

    aput-object v8, v1, v7

    const/4 v7, 0x7

    .line 63
    const-string v8, "/media/audio/notifications"

    aput-object v8, v1, v7

    const/16 v7, 0x8

    .line 64
    const-string v8, "/media/audio/ringtones"

    aput-object v8, v1, v7

    const/16 v7, 0x9

    .line 65
    const-string v8, "/Android/data/"

    aput-object v8, v1, v7

    .line 67
    .local v1, "folder_blacklist":[Ljava/lang/String;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    sput-object v7, Lorg/videolan/libvlc/Media;->VIDEO_EXTENSIONS:Ljava/util/HashSet;

    .line 68
    array-length v8, v5

    move v7, v6

    :goto_0
    if-lt v7, v8, :cond_0

    .line 70
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    sput-object v7, Lorg/videolan/libvlc/Media;->AUDIO_EXTENSIONS:Ljava/util/HashSet;

    .line 71
    array-length v8, v0

    move v7, v6

    :goto_1
    if-lt v7, v8, :cond_1

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v7, 0x73

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 75
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v7, ".+(\\.)((?i)("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    aget-object v7, v5, v6

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_2
    array-length v7, v5

    if-lt v2, v7, :cond_2

    .line 81
    const/4 v2, 0x0

    :goto_3
    array-length v7, v0

    if-lt v2, v7, :cond_3

    .line 85
    const-string v7, "))"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lorg/videolan/libvlc/Media;->EXTENSIONS_REGEX:Ljava/lang/String;

    .line 87
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    sput-object v7, Lorg/videolan/libvlc/Media;->FOLDER_BLACKLIST:Ljava/util/HashSet;

    .line 88
    array-length v7, v1

    :goto_4
    if-lt v6, v7, :cond_4

    .line 95
    return-void

    .line 68
    .end local v2    # "i":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    aget-object v3, v5, v7

    .line 69
    .local v3, "item":Ljava/lang/String;
    sget-object v9, Lorg/videolan/libvlc/Media;->VIDEO_EXTENSIONS:Ljava/util/HashSet;

    invoke-virtual {v9, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 71
    .end local v3    # "item":Ljava/lang/String;
    :cond_1
    aget-object v3, v0, v7

    .line 72
    .restart local v3    # "item":Ljava/lang/String;
    sget-object v9, Lorg/videolan/libvlc/Media;->AUDIO_EXTENSIONS:Ljava/util/HashSet;

    invoke-virtual {v9, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 78
    .end local v3    # "item":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    const/16 v7, 0x7c

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    aget-object v7, v5, v2

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 82
    :cond_3
    const/16 v7, 0x7c

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    aget-object v7, v0, v2

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 88
    :cond_4
    aget-object v3, v1, v6

    .line 89
    .restart local v3    # "item":Ljava/lang/String;
    sget-object v8, Lorg/videolan/libvlc/Media;->FOLDER_BLACKLIST:Ljava/util/HashSet;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v6, v6, 0x1

    goto :goto_4
.end method

.method public constructor <init>(Ljava/lang/String;JJILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;II)V
    .locals 3
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "length"    # J
    .param p6, "type"    # I
    .param p7, "picture"    # Landroid/graphics/Bitmap;
    .param p8, "title"    # Ljava/lang/String;
    .param p9, "artist"    # Ljava/lang/String;
    .param p10, "genre"    # Ljava/lang/String;
    .param p11, "album"    # Ljava/lang/String;
    .param p12, "width"    # I
    .param p13, "height"    # I
    .param p14, "artworkURL"    # Ljava/lang/String;
    .param p15, "audio"    # I
    .param p16, "spu"    # I

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/videolan/libvlc/Media;->mTime:J

    .line 117
    const/4 v1, -0x1

    iput v1, p0, Lorg/videolan/libvlc/Media;->mAudioTrack:I

    .line 118
    const/4 v1, -0x2

    iput v1, p0, Lorg/videolan/libvlc/Media;->mSpuTrack:I

    .line 119
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/videolan/libvlc/Media;->mLength:J

    .line 121
    const/4 v1, 0x0

    iput v1, p0, Lorg/videolan/libvlc/Media;->mWidth:I

    .line 122
    const/4 v1, 0x0

    iput v1, p0, Lorg/videolan/libvlc/Media;->mHeight:I

    .line 185
    iput-object p1, p0, Lorg/videolan/libvlc/Media;->mLocation:Ljava/lang/String;

    .line 186
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/videolan/libvlc/Media;->mFilename:Ljava/lang/String;

    .line 187
    iput-wide p2, p0, Lorg/videolan/libvlc/Media;->mTime:J

    .line 188
    move/from16 v0, p15

    iput v0, p0, Lorg/videolan/libvlc/Media;->mAudioTrack:I

    .line 189
    move/from16 v0, p16

    iput v0, p0, Lorg/videolan/libvlc/Media;->mSpuTrack:I

    .line 190
    iput-wide p4, p0, Lorg/videolan/libvlc/Media;->mLength:J

    .line 191
    iput p6, p0, Lorg/videolan/libvlc/Media;->mType:I

    .line 192
    iput-object p7, p0, Lorg/videolan/libvlc/Media;->mPicture:Landroid/graphics/Bitmap;

    .line 193
    iput p12, p0, Lorg/videolan/libvlc/Media;->mWidth:I

    .line 194
    move/from16 v0, p13

    iput v0, p0, Lorg/videolan/libvlc/Media;->mHeight:I

    .line 196
    iput-object p8, p0, Lorg/videolan/libvlc/Media;->mTitle:Ljava/lang/String;

    .line 197
    sget-object v1, Lorg/videolan/libvlc/Media$UnknownStringType;->Artist:Lorg/videolan/libvlc/Media$UnknownStringType;

    invoke-static {p9, v1}, Lorg/videolan/libvlc/Media;->getValueWrapper(Ljava/lang/String;Lorg/videolan/libvlc/Media$UnknownStringType;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/videolan/libvlc/Media;->mArtist:Ljava/lang/String;

    .line 198
    sget-object v1, Lorg/videolan/libvlc/Media$UnknownStringType;->Genre:Lorg/videolan/libvlc/Media$UnknownStringType;

    invoke-static {p10, v1}, Lorg/videolan/libvlc/Media;->getValueWrapper(Ljava/lang/String;Lorg/videolan/libvlc/Media$UnknownStringType;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/videolan/libvlc/Media;->mGenre:Ljava/lang/String;

    .line 199
    sget-object v1, Lorg/videolan/libvlc/Media$UnknownStringType;->Album:Lorg/videolan/libvlc/Media$UnknownStringType;

    invoke-static {p11, v1}, Lorg/videolan/libvlc/Media;->getValueWrapper(Ljava/lang/String;Lorg/videolan/libvlc/Media$UnknownStringType;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/videolan/libvlc/Media;->mAlbum:Ljava/lang/String;

    .line 200
    move-object/from16 v0, p14

    iput-object v0, p0, Lorg/videolan/libvlc/Media;->mArtworkURL:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public constructor <init>(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V
    .locals 6
    .param p1, "libVLC"    # Lorg/videolan/libvlc/LibVLC;
    .param p2, "URI"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-wide v4, p0, Lorg/videolan/libvlc/Media;->mTime:J

    .line 117
    iput v2, p0, Lorg/videolan/libvlc/Media;->mAudioTrack:I

    .line 118
    const/4 v1, -0x2

    iput v1, p0, Lorg/videolan/libvlc/Media;->mSpuTrack:I

    .line 119
    iput-wide v4, p0, Lorg/videolan/libvlc/Media;->mLength:J

    .line 121
    iput v3, p0, Lorg/videolan/libvlc/Media;->mWidth:I

    .line 122
    iput v3, p0, Lorg/videolan/libvlc/Media;->mHeight:I

    .line 132
    if-nez p1, :cond_0

    .line 133
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "libVLC was null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_0
    iput-object p2, p0, Lorg/videolan/libvlc/Media;->mLocation:Ljava/lang/String;

    .line 137
    iput v2, p0, Lorg/videolan/libvlc/Media;->mType:I

    .line 138
    iget-object v1, p0, Lorg/videolan/libvlc/Media;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/videolan/libvlc/LibVLC;->readTracksInfo(Ljava/lang/String;)[Lorg/videolan/libvlc/TrackInfo;

    move-result-object v0

    .line 140
    .local v0, "tracks":[Lorg/videolan/libvlc/TrackInfo;
    invoke-direct {p0, v0}, Lorg/videolan/libvlc/Media;->extractTrackInfo([Lorg/videolan/libvlc/TrackInfo;)V

    .line 141
    return-void
.end method

.method private extractTrackInfo([Lorg/videolan/libvlc/TrackInfo;)V
    .locals 11
    .param p1, "tracks"    # [Lorg/videolan/libvlc/TrackInfo;

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v9, -0x1

    .line 144
    if-nez p1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    array-length v5, p1

    move v3, v4

    :goto_1
    if-lt v3, v5, :cond_2

    .line 169
    iget v3, p0, Lorg/videolan/libvlc/Media;->mType:I

    if-ne v3, v9, :cond_0

    .line 170
    iget-object v3, p0, Lorg/videolan/libvlc/Media;->mLocation:Ljava/lang/String;

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 171
    .local v0, "dotIndex":I
    if-eq v0, v9, :cond_0

    .line 172
    iget-object v3, p0, Lorg/videolan/libvlc/Media;->mLocation:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "fileExt":Ljava/lang/String;
    sget-object v3, Lorg/videolan/libvlc/Media;->VIDEO_EXTENSIONS:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 174
    iput v4, p0, Lorg/videolan/libvlc/Media;->mType:I

    goto :goto_0

    .line 147
    .end local v0    # "dotIndex":I
    .end local v1    # "fileExt":Ljava/lang/String;
    :cond_2
    aget-object v2, p1, v3

    .line 148
    .local v2, "track":Lorg/videolan/libvlc/TrackInfo;
    iget v6, v2, Lorg/videolan/libvlc/TrackInfo;->Type:I

    if-ne v6, v10, :cond_4

    .line 149
    iput v4, p0, Lorg/videolan/libvlc/Media;->mType:I

    .line 150
    iget v6, v2, Lorg/videolan/libvlc/TrackInfo;->Width:I

    iput v6, p0, Lorg/videolan/libvlc/Media;->mWidth:I

    .line 151
    iget v6, v2, Lorg/videolan/libvlc/TrackInfo;->Height:I

    iput v6, p0, Lorg/videolan/libvlc/Media;->mHeight:I

    .line 147
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 152
    :cond_4
    iget v6, p0, Lorg/videolan/libvlc/Media;->mType:I

    if-ne v6, v9, :cond_5

    iget v6, v2, Lorg/videolan/libvlc/TrackInfo;->Type:I

    if-nez v6, :cond_5

    .line 153
    iput v10, p0, Lorg/videolan/libvlc/Media;->mType:I

    goto :goto_2

    .line 154
    :cond_5
    iget v6, v2, Lorg/videolan/libvlc/TrackInfo;->Type:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    .line 155
    iget-wide v6, v2, Lorg/videolan/libvlc/TrackInfo;->Length:J

    iput-wide v6, p0, Lorg/videolan/libvlc/Media;->mLength:J

    .line 156
    iget-object v6, v2, Lorg/videolan/libvlc/TrackInfo;->Title:Ljava/lang/String;

    iput-object v6, p0, Lorg/videolan/libvlc/Media;->mTitle:Ljava/lang/String;

    .line 157
    iget-object v6, v2, Lorg/videolan/libvlc/TrackInfo;->Artist:Ljava/lang/String;

    sget-object v7, Lorg/videolan/libvlc/Media$UnknownStringType;->Artist:Lorg/videolan/libvlc/Media$UnknownStringType;

    invoke-static {v6, v7}, Lorg/videolan/libvlc/Media;->getValueWrapper(Ljava/lang/String;Lorg/videolan/libvlc/Media$UnknownStringType;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/videolan/libvlc/Media;->mArtist:Ljava/lang/String;

    .line 158
    iget-object v6, v2, Lorg/videolan/libvlc/TrackInfo;->Album:Ljava/lang/String;

    sget-object v7, Lorg/videolan/libvlc/Media$UnknownStringType;->Album:Lorg/videolan/libvlc/Media$UnknownStringType;

    invoke-static {v6, v7}, Lorg/videolan/libvlc/Media;->getValueWrapper(Ljava/lang/String;Lorg/videolan/libvlc/Media$UnknownStringType;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/videolan/libvlc/Media;->mAlbum:Ljava/lang/String;

    .line 159
    iget-object v6, v2, Lorg/videolan/libvlc/TrackInfo;->Genre:Ljava/lang/String;

    sget-object v7, Lorg/videolan/libvlc/Media$UnknownStringType;->Genre:Lorg/videolan/libvlc/Media$UnknownStringType;

    invoke-static {v6, v7}, Lorg/videolan/libvlc/Media;->getValueWrapper(Ljava/lang/String;Lorg/videolan/libvlc/Media$UnknownStringType;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/videolan/libvlc/Media;->mGenre:Ljava/lang/String;

    .line 160
    iget-object v6, v2, Lorg/videolan/libvlc/TrackInfo;->ArtworkURL:Ljava/lang/String;

    iput-object v6, p0, Lorg/videolan/libvlc/Media;->mArtworkURL:Ljava/lang/String;

    .line 161
    const-string v6, "VLC/LibVLC/Media"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Title "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lorg/videolan/libvlc/Media;->mTitle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v6, "VLC/LibVLC/Media"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Artist "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lorg/videolan/libvlc/Media;->mArtist:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v6, "VLC/LibVLC/Media"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Genre "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lorg/videolan/libvlc/Media;->mGenre:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v6, "VLC/LibVLC/Media"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Album "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lorg/videolan/libvlc/Media;->mAlbum:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 175
    .end local v2    # "track":Lorg/videolan/libvlc/TrackInfo;
    .restart local v0    # "dotIndex":I
    .restart local v1    # "fileExt":Ljava/lang/String;
    :cond_6
    sget-object v3, Lorg/videolan/libvlc/Media;->AUDIO_EXTENSIONS:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    iput v10, p0, Lorg/videolan/libvlc/Media;->mType:I

    goto/16 :goto_0
.end method

.method private static getValueWrapper(Ljava/lang/String;Lorg/videolan/libvlc/Media$UnknownStringType;)Ljava/lang/String;
    .locals 8
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "type"    # Lorg/videolan/libvlc/Media$UnknownStringType;

    .prologue
    .line 216
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 256
    .end local p0    # "string":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 219
    .restart local p0    # "string":Ljava/lang/String;
    :cond_0
    :try_start_0
    const-string v4, "org.videolan.vlc.R$string"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 220
    .local v1, "stringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "org.videolan.vlc.Util"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 223
    .local v2, "utilClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/videolan/libvlc/Media;->$SWITCH_TABLE$org$videolan$libvlc$Media$UnknownStringType()[I

    move-result-object v4

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media$UnknownStringType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 232
    const-string v4, "unknown_artist"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 236
    .local v3, "value":Ljava/lang/Integer;
    :goto_1
    const-string v4, "getValue"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 238
    .local v0, "getValueMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object p0, v4

    goto :goto_0

    .line 225
    .end local v0    # "getValueMethod":Ljava/lang/reflect/Method;
    .end local v3    # "value":Ljava/lang/Integer;
    :pswitch_0
    const-string v4, "unknown_album"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 226
    .restart local v3    # "value":Ljava/lang/Integer;
    goto :goto_1

    .line 228
    .end local v3    # "value":Ljava/lang/Integer;
    :pswitch_1
    const-string v4, "unknown_genre"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .restart local v3    # "value":Ljava/lang/Integer;
    goto :goto_1

    .line 244
    .end local v1    # "stringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "utilClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "value":Ljava/lang/Integer;
    :catch_0
    move-exception v4

    .line 249
    :goto_2
    invoke-static {}, Lorg/videolan/libvlc/Media;->$SWITCH_TABLE$org$videolan$libvlc$Media$UnknownStringType()[I

    move-result-object v4

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media$UnknownStringType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 256
    const-string p0, "Unknown Artist"

    goto :goto_0

    .line 251
    :pswitch_2
    const-string p0, "Unknown Album"

    goto :goto_0

    .line 253
    :pswitch_3
    const-string p0, "Unknown Genre"

    goto :goto_0

    .line 243
    :catch_1
    move-exception v4

    goto :goto_2

    .line 242
    :catch_2
    move-exception v4

    goto :goto_2

    .line 241
    :catch_3
    move-exception v4

    goto :goto_2

    .line 240
    :catch_4
    move-exception v4

    goto :goto_2

    .line 239
    :catch_5
    move-exception v4

    goto :goto_2

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 249
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lorg/videolan/libvlc/Media;

    invoke-virtual {p0, p1}, Lorg/videolan/libvlc/Media;->compareTo(Lorg/videolan/libvlc/Media;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/videolan/libvlc/Media;)I
    .locals 3
    .param p1, "another"    # Lorg/videolan/libvlc/Media;

    .prologue
    .line 265
    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mTitle:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getArtworkURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mArtworkURL:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioTrack()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lorg/videolan/libvlc/Media;->mAudioTrack:I

    return v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mCopyright:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodedBy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mEncodedBy:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mFilename:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mLocation:Ljava/lang/String;

    invoke-static {v0}, Lorg/videolan/libvlc/LibVlcUtil;->URItoFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/libvlc/Media;->mFilename:Ljava/lang/String;

    .line 281
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 378
    const/4 v0, 0x0

    sget-object v1, Lorg/videolan/libvlc/Media$UnknownStringType;->Genre:Lorg/videolan/libvlc/Media$UnknownStringType;

    invoke-static {v0, v1}, Lorg/videolan/libvlc/Media;->getValueWrapper(Ljava/lang/String;Lorg/videolan/libvlc/Media$UnknownStringType;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/libvlc/Media;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mGenre:Ljava/lang/String;

    .line 383
    :goto_0
    return-object v0

    .line 380
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mGenre:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/videolan/libvlc/Media;->mGenre:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/videolan/libvlc/Media;->mGenre:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 383
    :cond_1
    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mGenre:Ljava/lang/String;

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lorg/videolan/libvlc/Media;->mHeight:I

    return v0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 309
    iget-wide v0, p0, Lorg/videolan/libvlc/Media;->mLength:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getNowPlaying()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mNowPlaying:Ljava/lang/String;

    return-object v0
.end method

.method public getPicture()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mPicture:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mPublisher:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mRating:Ljava/lang/String;

    return-object v0
.end method

.method public getSettings()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mSettings:Ljava/lang/String;

    return-object v0
.end method

.method public getSpuTrack()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lorg/videolan/libvlc/Media;->mSpuTrack:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 370
    iget v0, p0, Lorg/videolan/libvlc/Media;->mType:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/videolan/libvlc/Media;->mArtist:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/libvlc/Media;->mAlbum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 285
    iget-wide v0, p0, Lorg/videolan/libvlc/Media;->mTime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 356
    iget-object v2, p0, Lorg/videolan/libvlc/Media;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/videolan/libvlc/Media;->mType:I

    if-eqz v2, :cond_1

    .line 357
    iget-object v1, p0, Lorg/videolan/libvlc/Media;->mTitle:Ljava/lang/String;

    .line 365
    :cond_0
    :goto_0
    return-object v1

    .line 359
    :cond_1
    invoke-virtual {p0}, Lorg/videolan/libvlc/Media;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, "fileName":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 361
    const-string v1, ""

    goto :goto_0

    .line 362
    :cond_2
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 363
    .local v0, "end":I
    if-lez v0, :cond_0

    .line 365
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getTrackID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mTrackID:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lorg/videolan/libvlc/Media;->mTrackNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lorg/videolan/libvlc/Media;->mType:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lorg/videolan/libvlc/Media;->mWidth:I

    return v0
.end method

.method public isPictureParsed()Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lorg/videolan/libvlc/Media;->mIsPictureParsed:Z

    return v0
.end method

.method public setAudioTrack(I)V
    .locals 0
    .param p1, "track"    # I

    .prologue
    .line 297
    iput p1, p0, Lorg/videolan/libvlc/Media;->mAudioTrack:I

    .line 298
    return-void
.end method

.method public setPicture(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "p"    # Landroid/graphics/Bitmap;

    .prologue
    .line 344
    iput-object p1, p0, Lorg/videolan/libvlc/Media;->mPicture:Landroid/graphics/Bitmap;

    .line 345
    return-void
.end method

.method public setPictureParsed(Z)V
    .locals 0
    .param p1, "isParsed"    # Z

    .prologue
    .line 352
    iput-boolean p1, p0, Lorg/videolan/libvlc/Media;->mIsPictureParsed:Z

    .line 353
    return-void
.end method

.method public setSpuTrack(I)V
    .locals 0
    .param p1, "track"    # I

    .prologue
    .line 305
    iput p1, p0, Lorg/videolan/libvlc/Media;->mSpuTrack:I

    .line 306
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 289
    iput-wide p1, p0, Lorg/videolan/libvlc/Media;->mTime:J

    .line 290
    return-void
.end method

.method public updateMeta()V
    .locals 0

    .prologue
    .line 275
    return-void
.end method
