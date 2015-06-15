.class public Lorg/videolan/libvlc/HWDecoderUtil;
.super Ljava/lang/Object;
.source "HWDecoderUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/HWDecoderUtil$Decoder;,
        Lorg/videolan/libvlc/HWDecoderUtil$DecoderBySOC;
    }
.end annotation


# static fields
.field private static final sDecoderBySOCList:[Lorg/videolan/libvlc/HWDecoderUtil$DecoderBySOC;

.field private static final sSystemPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 46
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/videolan/libvlc/HWDecoderUtil$DecoderBySOC;

    .line 51
    new-instance v1, Lorg/videolan/libvlc/HWDecoderUtil$DecoderBySOC;

    const-string v2, "ro.product.brand"

    sget-object v3, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;->NONE:Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    new-array v4, v8, [Ljava/lang/String;

    .line 52
    const-string v5, "SEMC"

    aput-object v5, v4, v7

    .line 51
    invoke-direct {v1, v2, v3, v4}, Lorg/videolan/libvlc/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Lorg/videolan/libvlc/HWDecoderUtil$Decoder;[Ljava/lang/String;)V

    aput-object v1, v0, v7

    .line 54
    new-instance v1, Lorg/videolan/libvlc/HWDecoderUtil$DecoderBySOC;

    const-string v2, "ro.board.platform"

    sget-object v3, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;->NONE:Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    new-array v4, v8, [Ljava/lang/String;

    .line 55
    const-string v5, "msm7627"

    aput-object v5, v4, v7

    .line 54
    invoke-direct {v1, v2, v3, v4}, Lorg/videolan/libvlc/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Lorg/videolan/libvlc/HWDecoderUtil$Decoder;[Ljava/lang/String;)V

    aput-object v1, v0, v8

    .line 60
    new-instance v1, Lorg/videolan/libvlc/HWDecoderUtil$DecoderBySOC;

    const-string v2, "ro.board.platform"

    sget-object v3, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;->OMX:Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    .line 61
    const-string v5, "omap3"

    aput-object v5, v4, v7

    .line 62
    const-string v5, "rockchip"

    aput-object v5, v4, v8

    const-string v5, "rk29"

    aput-object v5, v4, v9

    .line 63
    const-string v5, "msm7630"

    aput-object v5, v4, v10

    .line 64
    const-string v5, "s5pc"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    .line 65
    const-string v6, "montblanc"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 66
    const-string v6, "exdroid"

    aput-object v6, v4, v5

    .line 60
    invoke-direct {v1, v2, v3, v4}, Lorg/videolan/libvlc/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Lorg/videolan/libvlc/HWDecoderUtil$Decoder;[Ljava/lang/String;)V

    aput-object v1, v0, v9

    .line 68
    new-instance v1, Lorg/videolan/libvlc/HWDecoderUtil$DecoderBySOC;

    const-string v2, "ro.hardware"

    sget-object v3, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;->OMX:Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    new-array v4, v8, [Ljava/lang/String;

    .line 69
    const-string v5, "sun6i"

    aput-object v5, v4, v7

    .line 68
    invoke-direct {v1, v2, v3, v4}, Lorg/videolan/libvlc/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Lorg/videolan/libvlc/HWDecoderUtil$Decoder;[Ljava/lang/String;)V

    aput-object v1, v0, v10

    .line 74
    new-instance v1, Lorg/videolan/libvlc/HWDecoderUtil$DecoderBySOC;

    const-string v2, "ro.board.platform"

    sget-object v3, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;->ALL:Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/String;

    .line 75
    const-string v5, "omap4"

    aput-object v5, v4, v7

    .line 76
    const-string v5, "tegra"

    aput-object v5, v4, v8

    .line 77
    const-string v5, "tegra3"

    aput-object v5, v4, v9

    .line 78
    const-string v5, "msm8660"

    aput-object v5, v4, v10

    .line 79
    const-string v5, "exynos4"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    .line 80
    const-string v6, "exynos5"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 81
    const-string v6, "rk30"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "rk31"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    .line 82
    const-string v6, "mv88de3100"

    aput-object v6, v4, v5

    .line 74
    invoke-direct {v1, v2, v3, v4}, Lorg/videolan/libvlc/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Lorg/videolan/libvlc/HWDecoderUtil$Decoder;[Ljava/lang/String;)V

    aput-object v1, v0, v11

    const/4 v1, 0x5

    .line 84
    new-instance v2, Lorg/videolan/libvlc/HWDecoderUtil$DecoderBySOC;

    const-string v3, "ro.hardware"

    sget-object v4, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;->ALL:Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    new-array v5, v9, [Ljava/lang/String;

    .line 85
    const-string v6, "mt65"

    aput-object v6, v5, v7

    const-string v6, "mt83"

    aput-object v6, v5, v8

    .line 84
    invoke-direct {v2, v3, v4, v5}, Lorg/videolan/libvlc/HWDecoderUtil$DecoderBySOC;-><init>(Ljava/lang/String;Lorg/videolan/libvlc/HWDecoderUtil$Decoder;[Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 46
    sput-object v0, Lorg/videolan/libvlc/HWDecoderUtil;->sDecoderBySOCList:[Lorg/videolan/libvlc/HWDecoderUtil$DecoderBySOC;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/videolan/libvlc/HWDecoderUtil;->sSystemPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDecoderFromDevice()Lorg/videolan/libvlc/HWDecoderUtil$Decoder;
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 96
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isJellyBeanMR2OrLater()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    sget-object v3, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;->ALL:Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    .line 110
    .local v0, "decBySOC":Lorg/videolan/libvlc/HWDecoderUtil$DecoderBySOC;
    .local v2, "prop":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 98
    .end local v0    # "decBySOC":Lorg/videolan/libvlc/HWDecoderUtil$DecoderBySOC;
    .end local v2    # "prop":Ljava/lang/String;
    :cond_0
    sget-object v6, Lorg/videolan/libvlc/HWDecoderUtil;->sDecoderBySOCList:[Lorg/videolan/libvlc/HWDecoderUtil$DecoderBySOC;

    array-length v7, v6

    move v5, v4

    .restart local v0    # "decBySOC":Lorg/videolan/libvlc/HWDecoderUtil$DecoderBySOC;
    .restart local v2    # "prop":Ljava/lang/String;
    :goto_1
    if-lt v5, v7, :cond_1

    .line 110
    sget-object v3, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;->UNKNOWN:Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    goto :goto_0

    .line 98
    :cond_1
    aget-object v0, v6, v5

    .line 99
    sget-object v3, Lorg/videolan/libvlc/HWDecoderUtil;->sSystemPropertyMap:Ljava/util/HashMap;

    .end local v2    # "prop":Ljava/lang/String;
    iget-object v8, v0, Lorg/videolan/libvlc/HWDecoderUtil$DecoderBySOC;->key:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 100
    .restart local v2    # "prop":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 101
    iget-object v3, v0, Lorg/videolan/libvlc/HWDecoderUtil$DecoderBySOC;->key:Ljava/lang/String;

    const-string v8, "none"

    invoke-static {v3, v8}, Lorg/videolan/libvlc/HWDecoderUtil;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    sget-object v3, Lorg/videolan/libvlc/HWDecoderUtil;->sSystemPropertyMap:Ljava/util/HashMap;

    iget-object v8, v0, Lorg/videolan/libvlc/HWDecoderUtil$DecoderBySOC;->key:Ljava/lang/String;

    invoke-virtual {v3, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_2
    if-eqz v2, :cond_3

    .line 105
    iget-object v8, v0, Lorg/videolan/libvlc/HWDecoderUtil$DecoderBySOC;->list:[Ljava/lang/String;

    array-length v9, v8

    move v3, v4

    :goto_2
    if-lt v3, v9, :cond_4

    .line 98
    :cond_3
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_1

    .line 105
    :cond_4
    aget-object v1, v8, v3

    .line 106
    .local v1, "decProp":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 107
    iget-object v3, v0, Lorg/videolan/libvlc/HWDecoderUtil$DecoderBySOC;->dec:Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    goto :goto_0

    .line 105
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 115
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 116
    .local v1, "cl":Ljava/lang/ClassLoader;
    const-string v6, "android.os.SystemProperties"

    invoke-virtual {v1, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 117
    .local v0, "SystemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v6

    .line 118
    .local v4, "paramTypes":[Ljava/lang/Class;
    const-string v6, "get"

    invoke-virtual {v0, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 119
    .local v3, "get":Ljava/lang/reflect/Method;
    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    .line 120
    .local v5, "params":[Ljava/lang/Object;
    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v0    # "SystemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "get":Ljava/lang/reflect/Method;
    .end local v4    # "paramTypes":[Ljava/lang/Class;
    .end local v5    # "params":[Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 121
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    move-object v6, p1

    .line 122
    goto :goto_0
.end method
