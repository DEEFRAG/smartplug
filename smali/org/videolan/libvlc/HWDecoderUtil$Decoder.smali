.class public final enum Lorg/videolan/libvlc/HWDecoderUtil$Decoder;
.super Ljava/lang/Enum;
.source "HWDecoderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/HWDecoderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Decoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/videolan/libvlc/HWDecoderUtil$Decoder;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALL:Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

.field private static final synthetic ENUM$VALUES:[Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

.field public static final enum MEDIACODEC:Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

.field public static final enum NONE:Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

.field public static final enum OMX:Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

.field public static final enum UNKNOWN:Lorg/videolan/libvlc/HWDecoderUtil$Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;->UNKNOWN:Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    new-instance v0, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;->NONE:Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    new-instance v0, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    const-string v1, "OMX"

    invoke-direct {v0, v1, v4}, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;->OMX:Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    new-instance v0, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    const-string v1, "MEDIACODEC"

    invoke-direct {v0, v1, v5}, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;->MEDIACODEC:Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    new-instance v0, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v6}, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;->ALL:Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    sget-object v1, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;->UNKNOWN:Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    aput-object v1, v0, v2

    sget-object v1, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;->NONE:Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    aput-object v1, v0, v3

    sget-object v1, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;->OMX:Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    aput-object v1, v0, v4

    sget-object v1, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;->MEDIACODEC:Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    aput-object v1, v0, v5

    sget-object v1, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;->ALL:Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    aput-object v1, v0, v6

    sput-object v0, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;->ENUM$VALUES:[Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/videolan/libvlc/HWDecoderUtil$Decoder;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    return-object v0
.end method

.method public static values()[Lorg/videolan/libvlc/HWDecoderUtil$Decoder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;->ENUM$VALUES:[Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    array-length v1, v0

    new-array v2, v1, [Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
