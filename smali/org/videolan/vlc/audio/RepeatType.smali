.class public final enum Lorg/videolan/vlc/audio/RepeatType;
.super Ljava/lang/Enum;
.source "RepeatType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/videolan/vlc/audio/RepeatType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum All:Lorg/videolan/vlc/audio/RepeatType;

.field private static final synthetic ENUM$VALUES:[Lorg/videolan/vlc/audio/RepeatType;

.field public static final enum None:Lorg/videolan/vlc/audio/RepeatType;

.field public static final enum Once:Lorg/videolan/vlc/audio/RepeatType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lorg/videolan/vlc/audio/RepeatType;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lorg/videolan/vlc/audio/RepeatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/vlc/audio/RepeatType;->None:Lorg/videolan/vlc/audio/RepeatType;

    .line 24
    new-instance v0, Lorg/videolan/vlc/audio/RepeatType;

    const-string v1, "Once"

    invoke-direct {v0, v1, v3}, Lorg/videolan/vlc/audio/RepeatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/vlc/audio/RepeatType;->Once:Lorg/videolan/vlc/audio/RepeatType;

    .line 25
    new-instance v0, Lorg/videolan/vlc/audio/RepeatType;

    const-string v1, "All"

    invoke-direct {v0, v1, v4}, Lorg/videolan/vlc/audio/RepeatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/vlc/audio/RepeatType;->All:Lorg/videolan/vlc/audio/RepeatType;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/videolan/vlc/audio/RepeatType;

    sget-object v1, Lorg/videolan/vlc/audio/RepeatType;->None:Lorg/videolan/vlc/audio/RepeatType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/videolan/vlc/audio/RepeatType;->Once:Lorg/videolan/vlc/audio/RepeatType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/videolan/vlc/audio/RepeatType;->All:Lorg/videolan/vlc/audio/RepeatType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/videolan/vlc/audio/RepeatType;->ENUM$VALUES:[Lorg/videolan/vlc/audio/RepeatType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/videolan/vlc/audio/RepeatType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/videolan/vlc/audio/RepeatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/audio/RepeatType;

    return-object v0
.end method

.method public static values()[Lorg/videolan/vlc/audio/RepeatType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/videolan/vlc/audio/RepeatType;->ENUM$VALUES:[Lorg/videolan/vlc/audio/RepeatType;

    array-length v1, v0

    new-array v2, v1, [Lorg/videolan/vlc/audio/RepeatType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
