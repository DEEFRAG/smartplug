.class Lorg/videolan/libvlc/LibVlcUtil$ElfData;
.super Ljava/lang/Object;
.source "LibVlcUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/LibVlcUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ElfData"
.end annotation


# instance fields
.field att_arch:Ljava/lang/String;

.field att_fpu:Z

.field e_machine:I

.field e_shnum:I

.field e_shoff:I

.field is64bits:Z

.field order:Ljava/nio/ByteOrder;

.field sh_offset:I

.field sh_size:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/videolan/libvlc/LibVlcUtil$ElfData;)V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Lorg/videolan/libvlc/LibVlcUtil$ElfData;-><init>()V

    return-void
.end method
