.class public Lorg/videolan/libvlc/LibVlcUtil;
.super Ljava/lang/Object;
.source "LibVlcUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/LibVlcUtil$ElfData;,
        Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;
    }
.end annotation


# static fields
.field private static CPU_archs:[Ljava/lang/String; = null

.field private static final ELF_HEADER_SIZE:I = 0x34

.field private static final EM_386:I = 0x3

.field private static final EM_AARCH64:I = 0xb7

.field private static final EM_ARM:I = 0x28

.field private static final EM_MIPS:I = 0x8

.field private static final EM_X86_64:I = 0x3e

.field private static final SECTION_HEADER_SIZE:I = 0x28

.field private static final SHT_ARM_ATTRIBUTES:I = 0x70000003

.field public static final TAG:Ljava/lang/String; = "VLC/LibVLC/Util"

.field private static errorMsg:Ljava/lang/String;

.field private static isCompatible:Z

.field private static machineSpecs:Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 82
    sput-object v0, Lorg/videolan/libvlc/LibVlcUtil;->errorMsg:Ljava/lang/String;

    .line 83
    sput-boolean v2, Lorg/videolan/libvlc/LibVlcUtil;->isCompatible:Z

    .line 287
    sput-object v0, Lorg/videolan/libvlc/LibVlcUtil;->machineSpecs:Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;

    .line 353
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*Pre-v4"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "*v4"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "*v4T"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 354
    const-string v2, "v5T"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "v5TE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "v5TEJ"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 355
    const-string v2, "v6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "v6KZ"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "v6T2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "v6K"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "v7"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 356
    const-string v2, "*v6-M"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "*v6S-M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "*v7E-M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "*v8"

    aput-object v2, v0, v1

    .line 353
    sput-object v0, Lorg/videolan/libvlc/LibVlcUtil;->CPU_archs:[Ljava/lang/String;

    .line 356
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static URItoFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "URI"    # Ljava/lang/String;

    .prologue
    .line 89
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "file://"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static URItoFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "URI"    # Ljava/lang/String;

    .prologue
    .line 94
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/videolan/libvlc/LibVlcUtil;->URItoFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lorg/videolan/libvlc/LibVlcUtil;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public static getMachineSpecs()Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;
    .locals 1

    .prologue
    .line 285
    sget-object v0, Lorg/videolan/libvlc/LibVlcUtil;->machineSpecs:Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;

    return-object v0
.end method

.method private static getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 514
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-gtz v2, :cond_1

    .line 520
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 515
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    int-to-char v0, v2

    .line 516
    .local v0, "c":C
    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static getUleb128(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 524
    const/4 v1, 0x0

    .line 527
    .local v1, "ret":I
    :cond_0
    shl-int/lit8 v1, v1, 0x7

    .line 528
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 529
    .local v0, "c":I
    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    .line 530
    and-int/lit16 v2, v0, 0x80

    .line 526
    if-gtz v2, :cond_0

    .line 532
    return v1
.end method

.method public static hasCompatibleCPU(Landroid/content/Context;)Z
    .locals 29
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    sget-object v26, Lorg/videolan/libvlc/LibVlcUtil;->errorMsg:Ljava/lang/String;

    if-nez v26, :cond_0

    sget-boolean v26, Lorg/videolan/libvlc/LibVlcUtil;->isCompatible:Z

    if-eqz v26, :cond_1

    :cond_0
    sget-boolean v26, Lorg/videolan/libvlc/LibVlcUtil;->isCompatible:Z

    .line 281
    :goto_0
    return v26

    .line 103
    :cond_1
    invoke-static/range {p0 .. p0}, Lorg/videolan/libvlc/LibVlcUtil;->searchLibrary(Landroid/content/Context;)Ljava/io/File;

    move-result-object v23

    .line 104
    .local v23, "lib":Ljava/io/File;
    if-nez v23, :cond_2

    .line 105
    const/16 v26, 0x1

    goto :goto_0

    .line 107
    :cond_2
    invoke-static/range {v23 .. v23}, Lorg/videolan/libvlc/LibVlcUtil;->readLib(Ljava/io/File;)Lorg/videolan/libvlc/LibVlcUtil$ElfData;

    move-result-object v8

    .line 108
    .local v8, "elf":Lorg/videolan/libvlc/LibVlcUtil$ElfData;
    if-nez v8, :cond_3

    .line 109
    const-string v26, "VLC/LibVLC/Util"

    const-string v27, "WARNING: Unable to read libvlcjni.so; cannot check device ABI!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v26, "VLC/LibVLC/Util"

    const-string v27, "WARNING: Cannot guarantee correct ABI for this build (may crash)!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/16 v26, 0x1

    goto :goto_0

    .line 114
    :cond_3
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 115
    .local v2, "CPU_ABI":Ljava/lang/String;
    const-string v3, "none"

    .line 116
    .local v3, "CPU_ABI2":Ljava/lang/String;
    sget v26, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_4

    .line 118
    :try_start_0
    const-class v26, Landroid/os/Build;

    const-string v27, "CPU_ABI2"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 122
    :cond_4
    :goto_1
    iget v0, v8, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->e_machine:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_9

    iget v0, v8, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->e_machine:I

    move/from16 v26, v0

    const/16 v27, 0x3e

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_9

    const/4 v11, 0x0

    .line 123
    .local v11, "elfHasX86":Z
    :goto_2
    iget v0, v8, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->e_machine:I

    move/from16 v26, v0

    const/16 v27, 0x28

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_a

    iget v0, v8, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->e_machine:I

    move/from16 v26, v0

    const/16 v27, 0xb7

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_a

    const/4 v9, 0x0

    .line 124
    .local v9, "elfHasArm":Z
    :goto_3
    iget v0, v8, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->e_machine:I

    move/from16 v26, v0

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    const/4 v10, 0x1

    .line 125
    .local v10, "elfHasMips":Z
    :goto_4
    iget-boolean v12, v8, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->is64bits:Z

    .line 127
    .local v12, "elfIs64bits":Z
    const-string v27, "VLC/LibVLC/Util"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v26, "machine = "

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_c

    const-string v26, "arm"

    :goto_5
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, ", "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 128
    if-eqz v12, :cond_e

    const-string v26, "64bits"

    :goto_6
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 127
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v26, "VLC/LibVLC/Util"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "arch = "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v8, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->att_arch:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v26, "VLC/LibVLC/Util"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "fpu = "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, v8, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->att_fpu:Z

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/16 v20, 0x0

    .local v20, "hasNeon":Z
    const/16 v18, 0x0

    .local v18, "hasFpu":Z
    const/16 v16, 0x0

    .line 132
    .local v16, "hasArmV6":Z
    const/16 v17, 0x0

    .local v17, "hasArmV7":Z
    const/16 v19, 0x0

    .local v19, "hasMips":Z
    const/16 v21, 0x0

    .local v21, "hasX86":Z
    const/16 v22, 0x0

    .line 133
    .local v22, "is64bits":Z
    const/high16 v4, -0x40800000    # -1.0f

    .line 134
    .local v4, "bogoMIPS":F
    const/16 v25, 0x0

    .line 136
    .local v25, "processors":I
    const-string v26, "x86"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_5

    .line 137
    const-string v26, "x86"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 138
    :cond_5
    const/16 v21, 0x1

    .line 159
    :cond_6
    :goto_7
    :try_start_1
    new-instance v14, Ljava/io/FileReader;

    const-string v26, "/proc/cpuinfo"

    move-object/from16 v0, v26

    invoke-direct {v14, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 160
    .local v14, "fileReader":Ljava/io/FileReader;
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 162
    .local v6, "br":Ljava/io/BufferedReader;
    :cond_7
    :goto_8
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v24

    .local v24, "line":Ljava/lang/String;
    if-nez v24, :cond_17

    .line 198
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 205
    if-nez v25, :cond_8

    .line 206
    const/16 v25, 0x1

    .line 209
    :cond_8
    if-eqz v11, :cond_23

    if-nez v21, :cond_23

    .line 210
    const-string v26, "x86 build on non-x86 device"

    sput-object v26, Lorg/videolan/libvlc/LibVlcUtil;->errorMsg:Ljava/lang/String;

    .line 211
    const/16 v26, 0x0

    sput-boolean v26, Lorg/videolan/libvlc/LibVlcUtil;->isCompatible:Z

    .line 212
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 122
    .end local v4    # "bogoMIPS":F
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v9    # "elfHasArm":Z
    .end local v10    # "elfHasMips":Z
    .end local v11    # "elfHasX86":Z
    .end local v12    # "elfIs64bits":Z
    .end local v14    # "fileReader":Ljava/io/FileReader;
    .end local v16    # "hasArmV6":Z
    .end local v17    # "hasArmV7":Z
    .end local v18    # "hasFpu":Z
    .end local v19    # "hasMips":Z
    .end local v20    # "hasNeon":Z
    .end local v21    # "hasX86":Z
    .end local v22    # "is64bits":Z
    .end local v24    # "line":Ljava/lang/String;
    .end local v25    # "processors":I
    :cond_9
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 123
    .restart local v11    # "elfHasX86":Z
    :cond_a
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 124
    .restart local v9    # "elfHasArm":Z
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 127
    .restart local v10    # "elfHasMips":Z
    .restart local v12    # "elfIs64bits":Z
    :cond_c
    if-eqz v11, :cond_d

    const-string v26, "x86"

    goto/16 :goto_5

    :cond_d
    const-string v26, "mips"

    goto/16 :goto_5

    .line 128
    :cond_e
    const-string v26, "32bits"

    goto/16 :goto_6

    .line 139
    .restart local v4    # "bogoMIPS":F
    .restart local v16    # "hasArmV6":Z
    .restart local v17    # "hasArmV7":Z
    .restart local v18    # "hasFpu":Z
    .restart local v19    # "hasMips":Z
    .restart local v20    # "hasNeon":Z
    .restart local v21    # "hasX86":Z
    .restart local v22    # "is64bits":Z
    .restart local v25    # "processors":I
    :cond_f
    const-string v26, "x86_64"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_10

    .line 140
    const-string v26, "x86_64"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 141
    :cond_10
    const/16 v21, 0x1

    .line 142
    const/16 v22, 0x1

    .line 143
    goto :goto_7

    :cond_11
    const-string v26, "armeabi-v7a"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_12

    .line 144
    const-string v26, "armeabi-v7a"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_13

    .line 145
    :cond_12
    const/16 v17, 0x1

    .line 146
    const/16 v16, 0x1

    .line 147
    goto :goto_7

    :cond_13
    const-string v26, "armeabi"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_14

    .line 148
    const-string v26, "armeabi"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_15

    .line 149
    :cond_14
    const/16 v16, 0x1

    .line 150
    goto/16 :goto_7

    :cond_15
    const-string v26, "arm64-v8a"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_16

    .line 151
    const-string v26, "arm64-v8a"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 152
    :cond_16
    const/16 v20, 0x1

    .line 153
    const/16 v16, 0x1

    .line 154
    const/16 v17, 0x1

    .line 155
    const/16 v22, 0x1

    goto/16 :goto_7

    .line 163
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "fileReader":Ljava/io/FileReader;
    .restart local v24    # "line":Ljava/lang/String;
    :cond_17
    if-nez v17, :cond_18

    :try_start_2
    const-string v26, "AArch64"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_18

    .line 164
    const/16 v17, 0x1

    .line 165
    const/16 v16, 0x1

    .line 167
    :cond_18
    if-nez v17, :cond_19

    const-string v26, "ARMv7"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_19

    .line 168
    const/16 v17, 0x1

    .line 169
    const/16 v16, 0x1

    .line 171
    :cond_19
    if-nez v17, :cond_1a

    if-nez v16, :cond_1a

    const-string v26, "ARMv6"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_1a

    .line 172
    const/16 v16, 0x1

    .line 175
    :cond_1a
    const-string v26, "clflush size"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_1b

    .line 176
    const/16 v21, 0x1

    .line 177
    :cond_1b
    const-string v26, "GenuineIntel"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_1c

    .line 178
    const/16 v21, 0x1

    .line 181
    :cond_1c
    const-string v26, "microsecond timers"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_1d

    .line 182
    const/16 v19, 0x1

    .line 183
    :cond_1d
    if-nez v20, :cond_1f

    const-string v26, "neon"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_1e

    const-string v26, "asimd"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_1f

    .line 184
    :cond_1e
    const/16 v20, 0x1

    .line 185
    :cond_1f
    if-nez v18, :cond_21

    const-string v26, "vfp"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_20

    const-string v26, "Features"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_21

    const-string v26, "fp"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_21

    .line 186
    :cond_20
    const/16 v18, 0x1

    .line 187
    :cond_21
    const-string v26, "processor"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_22

    .line 188
    add-int/lit8 v25, v25, 0x1

    .line 189
    :cond_22
    const/16 v26, 0x0

    cmpg-float v26, v4, v26

    if-gez v26, :cond_7

    sget-object v26, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "bogomips"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 190
    const-string v26, ":"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .line 192
    .local v5, "bogo_parts":[Ljava/lang/String;
    const/16 v26, 0x1

    :try_start_3
    aget-object v26, v5, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v4

    goto/16 :goto_8

    .line 193
    :catch_0
    move-exception v7

    .line 194
    .local v7, "e":Ljava/lang/NumberFormatException;
    const/high16 v4, -0x40800000    # -1.0f

    goto/16 :goto_8

    .line 199
    .end local v5    # "bogo_parts":[Ljava/lang/String;
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .end local v14    # "fileReader":Ljava/io/FileReader;
    .end local v24    # "line":Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 200
    .local v13, "ex":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    .line 201
    const-string v26, "IOException whilst reading cpuinfo flags"

    sput-object v26, Lorg/videolan/libvlc/LibVlcUtil;->errorMsg:Ljava/lang/String;

    .line 202
    const/16 v26, 0x0

    sput-boolean v26, Lorg/videolan/libvlc/LibVlcUtil;->isCompatible:Z

    .line 203
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 213
    .end local v13    # "ex":Ljava/io/IOException;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "fileReader":Ljava/io/FileReader;
    .restart local v24    # "line":Ljava/lang/String;
    :cond_23
    if-eqz v9, :cond_24

    if-eqz v21, :cond_24

    .line 214
    const-string v26, "ARM build on x86 device"

    sput-object v26, Lorg/videolan/libvlc/LibVlcUtil;->errorMsg:Ljava/lang/String;

    .line 215
    const/16 v26, 0x0

    sput-boolean v26, Lorg/videolan/libvlc/LibVlcUtil;->isCompatible:Z

    .line 216
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 219
    :cond_24
    if-eqz v10, :cond_25

    if-nez v19, :cond_25

    .line 220
    const-string v26, "MIPS build on non-MIPS device"

    sput-object v26, Lorg/videolan/libvlc/LibVlcUtil;->errorMsg:Ljava/lang/String;

    .line 221
    const/16 v26, 0x0

    sput-boolean v26, Lorg/videolan/libvlc/LibVlcUtil;->isCompatible:Z

    .line 222
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 223
    :cond_25
    if-eqz v9, :cond_26

    if-eqz v19, :cond_26

    .line 224
    const-string v26, "ARM build on MIPS device"

    sput-object v26, Lorg/videolan/libvlc/LibVlcUtil;->errorMsg:Ljava/lang/String;

    .line 225
    const/16 v26, 0x0

    sput-boolean v26, Lorg/videolan/libvlc/LibVlcUtil;->isCompatible:Z

    .line 226
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 229
    :cond_26
    iget v0, v8, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->e_machine:I

    move/from16 v26, v0

    const/16 v27, 0x28

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_27

    iget-object v0, v8, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->att_arch:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "v7"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_27

    if-nez v17, :cond_27

    .line 230
    const-string v26, "ARMv7 build on non-ARMv7 device"

    sput-object v26, Lorg/videolan/libvlc/LibVlcUtil;->errorMsg:Ljava/lang/String;

    .line 231
    const/16 v26, 0x0

    sput-boolean v26, Lorg/videolan/libvlc/LibVlcUtil;->isCompatible:Z

    .line 232
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 234
    :cond_27
    iget v0, v8, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->e_machine:I

    move/from16 v26, v0

    const/16 v27, 0x28

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_29

    .line 235
    iget-object v0, v8, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->att_arch:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "v6"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_28

    if-nez v16, :cond_28

    .line 236
    const-string v26, "ARMv6 build on non-ARMv6 device"

    sput-object v26, Lorg/videolan/libvlc/LibVlcUtil;->errorMsg:Ljava/lang/String;

    .line 237
    const/16 v26, 0x0

    sput-boolean v26, Lorg/videolan/libvlc/LibVlcUtil;->isCompatible:Z

    .line 238
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 239
    :cond_28
    iget-boolean v0, v8, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->att_fpu:Z

    move/from16 v26, v0

    if-eqz v26, :cond_29

    if-nez v18, :cond_29

    .line 240
    const-string v26, "FPU-enabled build on non-FPU device"

    sput-object v26, Lorg/videolan/libvlc/LibVlcUtil;->errorMsg:Ljava/lang/String;

    .line 241
    const/16 v26, 0x0

    sput-boolean v26, Lorg/videolan/libvlc/LibVlcUtil;->isCompatible:Z

    .line 242
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 245
    :cond_29
    if-eqz v12, :cond_2a

    if-nez v22, :cond_2a

    .line 246
    const-string v26, "64bits build on 32bits device"

    sput-object v26, Lorg/videolan/libvlc/LibVlcUtil;->errorMsg:Ljava/lang/String;

    .line 247
    const/16 v26, 0x0

    sput-boolean v26, Lorg/videolan/libvlc/LibVlcUtil;->isCompatible:Z

    .line 250
    :cond_2a
    const/high16 v15, -0x40800000    # -1.0f

    .line 252
    .local v15, "frequency":F
    :try_start_4
    new-instance v14, Ljava/io/FileReader;

    .end local v14    # "fileReader":Ljava/io/FileReader;
    const-string v26, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    move-object/from16 v0, v26

    invoke-direct {v14, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 253
    .restart local v14    # "fileReader":Ljava/io/FileReader;
    new-instance v6, Ljava/io/BufferedReader;

    .end local v6    # "br":Ljava/io/BufferedReader;
    invoke-direct {v6, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 254
    .restart local v6    # "br":Ljava/io/BufferedReader;
    const-string v24, ""
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 256
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v24

    .line 257
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v26

    const/high16 v27, 0x447a0000    # 1000.0f

    div-float v15, v26, v27

    .line 262
    :goto_9
    :try_start_6
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 267
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v14    # "fileReader":Ljava/io/FileReader;
    :goto_a
    const/16 v26, 0x0

    sput-object v26, Lorg/videolan/libvlc/LibVlcUtil;->errorMsg:Ljava/lang/String;

    .line 268
    const/16 v26, 0x1

    sput-boolean v26, Lorg/videolan/libvlc/LibVlcUtil;->isCompatible:Z

    .line 270
    new-instance v26, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;

    invoke-direct/range {v26 .. v26}, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;-><init>()V

    sput-object v26, Lorg/videolan/libvlc/LibVlcUtil;->machineSpecs:Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;

    .line 271
    sget-object v26, Lorg/videolan/libvlc/LibVlcUtil;->machineSpecs:Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;

    move/from16 v0, v16

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->hasArmV6:Z

    .line 272
    sget-object v26, Lorg/videolan/libvlc/LibVlcUtil;->machineSpecs:Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;

    move/from16 v0, v17

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->hasArmV7:Z

    .line 273
    sget-object v26, Lorg/videolan/libvlc/LibVlcUtil;->machineSpecs:Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;

    move/from16 v0, v18

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->hasFpu:Z

    .line 274
    sget-object v26, Lorg/videolan/libvlc/LibVlcUtil;->machineSpecs:Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;

    move/from16 v0, v19

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->hasMips:Z

    .line 275
    sget-object v26, Lorg/videolan/libvlc/LibVlcUtil;->machineSpecs:Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;

    move/from16 v0, v20

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->hasNeon:Z

    .line 276
    sget-object v26, Lorg/videolan/libvlc/LibVlcUtil;->machineSpecs:Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;

    move/from16 v0, v21

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->hasX86:Z

    .line 277
    sget-object v26, Lorg/videolan/libvlc/LibVlcUtil;->machineSpecs:Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;

    move/from16 v0, v22

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->is64bits:Z

    .line 278
    sget-object v26, Lorg/videolan/libvlc/LibVlcUtil;->machineSpecs:Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;

    move-object/from16 v0, v26

    iput v4, v0, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->bogoMIPS:F

    .line 279
    sget-object v26, Lorg/videolan/libvlc/LibVlcUtil;->machineSpecs:Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;

    move/from16 v0, v25

    move-object/from16 v1, v26

    iput v0, v1, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->processors:I

    .line 280
    sget-object v26, Lorg/videolan/libvlc/LibVlcUtil;->machineSpecs:Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;

    move-object/from16 v0, v26

    iput v15, v0, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->frequency:F

    .line 281
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 258
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "fileReader":Ljava/io/FileReader;
    :catch_2
    move-exception v7

    .line 259
    .restart local v7    # "e":Ljava/lang/NumberFormatException;
    :try_start_7
    const-string v26, "VLC/LibVLC/Util"

    const-string v27, "Could not parse maximum CPU frequency!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v26, "VLC/LibVLC/Util"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Failed to parse: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_9

    .line 263
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .end local v14    # "fileReader":Ljava/io/FileReader;
    :catch_3
    move-exception v13

    .line 264
    .restart local v13    # "ex":Ljava/io/IOException;
    const-string v26, "VLC/LibVLC/Util"

    const-string v27, "Could not find maximum CPU frequency!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 119
    .end local v4    # "bogoMIPS":F
    .end local v9    # "elfHasArm":Z
    .end local v10    # "elfHasMips":Z
    .end local v11    # "elfHasX86":Z
    .end local v12    # "elfIs64bits":Z
    .end local v13    # "ex":Ljava/io/IOException;
    .end local v15    # "frequency":F
    .end local v16    # "hasArmV6":Z
    .end local v17    # "hasArmV7":Z
    .end local v18    # "hasFpu":Z
    .end local v19    # "hasMips":Z
    .end local v20    # "hasNeon":Z
    .end local v21    # "hasX86":Z
    .end local v22    # "is64bits":Z
    .end local v24    # "line":Ljava/lang/String;
    .end local v25    # "processors":I
    :catch_4
    move-exception v26

    goto/16 :goto_1
.end method

.method public static isFroyoOrLater()Z
    .locals 2

    .prologue
    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGingerbreadOrLater()Z
    .locals 2

    .prologue
    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHoneycombOrLater()Z
    .locals 2

    .prologue
    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isICSOrLater()Z
    .locals 2

    .prologue
    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJellyBeanMR1OrLater()Z
    .locals 2

    .prologue
    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJellyBeanMR2OrLater()Z
    .locals 2

    .prologue
    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJellyBeanOrLater()Z
    .locals 2

    .prologue
    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKitKatOrLater()Z
    .locals 2

    .prologue
    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static readArmAttributes(Ljava/io/RandomAccessFile;Lorg/videolan/libvlc/LibVlcUtil$ElfData;)Z
    .locals 13
    .param p0, "in"    # Ljava/io/RandomAccessFile;
    .param p1, "elf"    # Lorg/videolan/libvlc/LibVlcUtil$ElfData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x20

    const/4 v9, 0x1

    .line 453
    iget v10, p1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->sh_size:I

    new-array v2, v10, [B

    .line 454
    .local v2, "bytes":[B
    iget v10, p1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->sh_offset:I

    int-to-long v10, v10

    invoke-virtual {p0, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 455
    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 458
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 459
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    iget-object v10, p1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 463
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    const/16 v11, 0x41

    if-eq v10, v11, :cond_8

    .line 464
    const/4 v9, 0x0

    .line 509
    :cond_0
    :goto_0
    return v9

    .line 468
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 469
    .local v6, "start_section":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 470
    .local v3, "length":I
    invoke-static {v1}, Lorg/videolan/libvlc/LibVlcUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v8

    .line 471
    .local v8, "vendor":Ljava/lang/String;
    const-string v10, "aeabi"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 473
    :goto_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int v11, v6, v3

    if-ge v10, v11, :cond_0

    .line 474
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 475
    .local v5, "start":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    .line 476
    .local v7, "tag":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 478
    .local v4, "size":I
    if-eq v7, v9, :cond_3

    .line 479
    add-int v10, v5, v4

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 485
    :cond_2
    invoke-static {v1}, Lorg/videolan/libvlc/LibVlcUtil;->getUleb128(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 486
    const/4 v10, 0x6

    if-ne v7, v10, :cond_4

    .line 487
    invoke-static {v1}, Lorg/videolan/libvlc/LibVlcUtil;->getUleb128(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 488
    .local v0, "arch":I
    sget-object v10, Lorg/videolan/libvlc/LibVlcUtil;->CPU_archs:[Ljava/lang/String;

    aget-object v10, v10, v0

    iput-object v10, p1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->att_arch:Ljava/lang/String;

    .line 484
    .end local v0    # "arch":I
    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int v11, v5, v4

    if-lt v10, v11, :cond_2

    goto :goto_1

    .line 490
    :cond_4
    const/16 v10, 0x1b

    if-ne v7, v10, :cond_5

    .line 491
    invoke-static {v1}, Lorg/videolan/libvlc/LibVlcUtil;->getUleb128(Ljava/nio/ByteBuffer;)I

    .line 492
    iput-boolean v9, p1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->att_fpu:Z

    goto :goto_2

    .line 498
    :cond_5
    rem-int/lit16 v7, v7, 0x80

    .line 499
    const/4 v10, 0x4

    if-eq v7, v10, :cond_6

    const/4 v10, 0x5

    if-eq v7, v10, :cond_6

    if-eq v7, v12, :cond_6

    if-le v7, v12, :cond_7

    and-int/lit8 v10, v7, 0x1

    if-eqz v10, :cond_7

    .line 500
    :cond_6
    invoke-static {v1}, Lorg/videolan/libvlc/LibVlcUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    goto :goto_2

    .line 502
    :cond_7
    invoke-static {v1}, Lorg/videolan/libvlc/LibVlcUtil;->getUleb128(Ljava/nio/ByteBuffer;)I

    goto :goto_2

    .line 467
    .end local v3    # "length":I
    .end local v4    # "size":I
    .end local v5    # "start":I
    .end local v6    # "start_section":I
    .end local v7    # "tag":I
    .end local v8    # "vendor":Ljava/lang/String;
    :cond_8
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    if-gtz v10, :cond_1

    goto :goto_0
.end method

.method private static readHeader(Ljava/io/RandomAccessFile;Lorg/videolan/libvlc/LibVlcUtil$ElfData;)Z
    .locals 8
    .param p0, "in"    # Ljava/io/RandomAccessFile;
    .param p1, "elf"    # Lorg/videolan/libvlc/LibVlcUtil$ElfData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 403
    const/16 v4, 0x34

    new-array v1, v4, [B

    .line 404
    .local v1, "bytes":[B
    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 405
    aget-byte v4, v1, v2

    const/16 v5, 0x7f

    if-ne v4, v5, :cond_0

    .line 406
    aget-byte v4, v1, v3

    const/16 v5, 0x45

    if-ne v4, v5, :cond_0

    .line 407
    aget-byte v4, v1, v6

    const/16 v5, 0x4c

    if-ne v4, v5, :cond_0

    .line 408
    const/4 v4, 0x3

    aget-byte v4, v1, v4

    const/16 v5, 0x46

    if-ne v4, v5, :cond_0

    .line 409
    aget-byte v4, v1, v7

    if-eq v4, v3, :cond_1

    aget-byte v4, v1, v7

    if-eq v4, v6, :cond_1

    .line 410
    :cond_0
    const-string v3, "VLC/LibVLC/Util"

    const-string v4, "ELF header invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 426
    :goto_0
    return v3

    .line 414
    :cond_1
    aget-byte v4, v1, v7

    if-ne v4, v6, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->is64bits:Z

    .line 415
    const/4 v2, 0x5

    aget-byte v2, v1, v2

    if-ne v2, v3, :cond_3

    .line 416
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 415
    :goto_1
    iput-object v2, p1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->order:Ljava/nio/ByteOrder;

    .line 420
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 421
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v2, p1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 423
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    iput v2, p1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->e_machine:I

    .line 424
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    iput v2, p1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->e_shoff:I

    .line 425
    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    iput v2, p1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->e_shnum:I

    goto :goto_0

    .line 417
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_3
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_1
.end method

.method private static readLib(Ljava/io/File;)Lorg/videolan/libvlc/LibVlcUtil$ElfData;
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 359
    const/4 v2, 0x0

    .line 361
    .local v2, "in":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v3, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .local v3, "in":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lorg/videolan/libvlc/LibVlcUtil$ElfData;-><init>(Lorg/videolan/libvlc/LibVlcUtil$ElfData;)V

    .line 364
    .local v1, "elf":Lorg/videolan/libvlc/LibVlcUtil$ElfData;
    invoke-static {v3, v1}, Lorg/videolan/libvlc/LibVlcUtil;->readHeader(Ljava/io/RandomAccessFile;Lorg/videolan/libvlc/LibVlcUtil$ElfData;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_2

    move-object v2, v3

    .line 393
    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 394
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_1
    move-object v1, v4

    .line 398
    .end local v1    # "elf":Lorg/videolan/libvlc/LibVlcUtil$ElfData;
    :goto_2
    return-object v1

    .line 367
    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .restart local v1    # "elf":Lorg/videolan/libvlc/LibVlcUtil$ElfData;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :cond_2
    :try_start_3
    iget v5, v1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->e_machine:I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sparse-switch v5, :sswitch_data_0

    move-object v2, v3

    .line 384
    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 393
    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :sswitch_0
    if-eqz v3, :cond_3

    .line 394
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_3
    :goto_3
    move-object v2, v3

    .line 372
    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 374
    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :sswitch_1
    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 375
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v2, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 376
    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    :try_start_6
    invoke-static {v2, v1}, Lorg/videolan/libvlc/LibVlcUtil;->readSection(Ljava/io/RandomAccessFile;Lorg/videolan/libvlc/LibVlcUtil$ElfData;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 378
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 379
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v3, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 380
    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :try_start_7
    invoke-static {v3, v1}, Lorg/videolan/libvlc/LibVlcUtil;->readArmAttributes(Ljava/io/RandomAccessFile;Lorg/videolan/libvlc/LibVlcUtil$ElfData;)Z
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v5

    if-nez v5, :cond_4

    move-object v2, v3

    .line 381
    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 393
    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :cond_4
    if-eqz v3, :cond_5

    .line 394
    :try_start_8
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_5
    :goto_4
    move-object v2, v3

    .line 386
    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 387
    .end local v1    # "elf":Lorg/videolan/libvlc/LibVlcUtil$ElfData;
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 393
    if-eqz v2, :cond_6

    .line 394
    :try_start_a
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_6
    :goto_6
    move-object v1, v4

    .line 398
    goto :goto_2

    .line 389
    :catch_1
    move-exception v0

    .line 390
    .local v0, "e":Ljava/io/IOException;
    :goto_7
    :try_start_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 393
    if-eqz v2, :cond_6

    .line 394
    :try_start_c
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_6

    .line 395
    :catch_2
    move-exception v5

    goto :goto_6

    .line 391
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 393
    :goto_8
    if-eqz v2, :cond_7

    .line 394
    :try_start_d
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 397
    :cond_7
    :goto_9
    throw v4

    .line 395
    .restart local v1    # "elf":Lorg/videolan/libvlc/LibVlcUtil$ElfData;
    :catch_3
    move-exception v5

    goto :goto_1

    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v4

    goto :goto_3

    :catch_5
    move-exception v4

    goto :goto_4

    .end local v1    # "elf":Lorg/videolan/libvlc/LibVlcUtil$ElfData;
    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v5

    goto :goto_6

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v5

    goto :goto_9

    .line 391
    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    goto :goto_8

    .line 389
    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    goto :goto_7

    .line 387
    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 367
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
        0x28 -> :sswitch_1
        0x3e -> :sswitch_0
        0xb7 -> :sswitch_0
    .end sparse-switch
.end method

.method private static readSection(Ljava/io/RandomAccessFile;Lorg/videolan/libvlc/LibVlcUtil$ElfData;)Z
    .locals 6
    .param p0, "in"    # Ljava/io/RandomAccessFile;
    .param p1, "elf"    # Lorg/videolan/libvlc/LibVlcUtil$ElfData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    const/16 v4, 0x28

    new-array v1, v4, [B

    .line 431
    .local v1, "bytes":[B
    iget v4, p1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->e_shoff:I

    int-to-long v4, v4

    invoke-virtual {p0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 433
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->e_shnum:I

    if-lt v2, v4, :cond_0

    .line 449
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 434
    :cond_0
    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 437
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 438
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v4, p1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 440
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    .line 441
    .local v3, "sh_type":I
    const v4, 0x70000003

    if-eq v3, v4, :cond_1

    .line 433
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 444
    :cond_1
    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    iput v4, p1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->sh_offset:I

    .line 445
    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    iput v4, p1, Lorg/videolan/libvlc/LibVlcUtil$ElfData;->sh_size:I

    .line 446
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private static searchLibrary(Landroid/content/Context;)Ljava/io/File;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 323
    const/4 v3, 0x0

    .line 324
    .local v3, "libraryPaths":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 326
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    .line 327
    const-string v7, "java.library.path"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 328
    .local v4, "property":Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 336
    .end local v4    # "property":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_3

    .line 337
    const-string v6, "VLC/LibVLC/Util"

    const-string v7, "can\'t find library path"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v5

    .line 349
    :cond_0
    :goto_1
    return-object v1

    .line 330
    :cond_1
    const/4 v7, 0x1

    new-array v3, v7, [Ljava/lang/String;

    .line 331
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isGingerbreadOrLater()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 332
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    aput-object v7, v3, v6

    goto :goto_0

    .line 334
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/lib"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    goto :goto_0

    .line 342
    :cond_3
    const/4 v1, 0x0

    .line 343
    .local v1, "lib":Ljava/io/File;
    array-length v7, v3

    :goto_2
    if-lt v6, v7, :cond_4

    .line 348
    const-string v6, "VLC/LibVLC/Util"

    const-string v7, "WARNING: Can\'t find shared library"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v5

    .line 349
    goto :goto_1

    .line 343
    :cond_4
    aget-object v2, v3, v6

    .line 344
    .local v2, "libraryPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    .end local v1    # "lib":Ljava/io/File;
    const-string v8, "libvlcjni.so"

    invoke-direct {v1, v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .restart local v1    # "lib":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v8

    if-nez v8, :cond_0

    .line 343
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method
