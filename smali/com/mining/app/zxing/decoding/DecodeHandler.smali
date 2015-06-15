.class final Lcom/mining/app/zxing/decoding/DecodeHandler;
.super Landroid/os/Handler;
.source "DecodeHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;

.field private final multiFormatReader:Lcom/google/zxing/MultiFormatReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/mining/app/zxing/decoding/DecodeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mining/app/zxing/decoding/DecodeHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "activity"    # Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 45
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/mining/app/zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 46
    iget-object v0, p0, Lcom/mining/app/zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 47
    iput-object p1, p0, Lcom/mining/app/zxing/decoding/DecodeHandler;->activity:Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;

    .line 48
    return-void
.end method

.method private decode([BII)V
    .locals 19
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 73
    .local v10, "start":J
    const/4 v7, 0x0

    .line 76
    .local v7, "rawResult":Lcom/google/zxing/Result;
    move-object/from16 v0, p1

    array-length v15, v0

    new-array v8, v15, [B

    .line 77
    .local v8, "rotatedData":[B
    const/4 v14, 0x0

    .local v14, "y":I
    :goto_0
    move/from16 v0, p3

    if-lt v14, v0, :cond_0

    .line 81
    move/from16 v12, p2

    .line 82
    .local v12, "tmp":I
    move/from16 p2, p3

    .line 83
    move/from16 p3, v12

    .line 85
    invoke-static {}, Lcom/mining/app/zxing/camera/CameraManager;->get()Lcom/mining/app/zxing/camera/CameraManager;

    move-result-object v15

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v15, v8, v0, v1}, Lcom/mining/app/zxing/camera/CameraManager;->buildLuminanceSource([BII)Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;

    move-result-object v9

    .line 86
    .local v9, "source":Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    new-instance v15, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v15, v9}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v2, v15}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 88
    .local v2, "bitmap":Lcom/google/zxing/BinaryBitmap;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mining/app/zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v15, v2}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 92
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mining/app/zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v15}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 95
    :goto_1
    if-eqz v7, :cond_2

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 97
    .local v4, "end":J
    sget-object v15, Lcom/mining/app/zxing/decoding/DecodeHandler;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Found barcode ("

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v17, v4, v10

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ms):\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mining/app/zxing/decoding/DecodeHandler;->activity:Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;

    invoke-virtual {v15}, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->getHandler()Landroid/os/Handler;

    move-result-object v15

    const v16, 0x7f07001d

    move/from16 v0, v16

    invoke-static {v15, v0, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 99
    .local v6, "message":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 100
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v15, "barcode_bitmap"

    invoke-virtual {v9}, Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;->renderCroppedGreyscaleBitmap()Landroid/graphics/Bitmap;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 101
    invoke-virtual {v6, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 108
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "end":J
    :goto_2
    return-void

    .line 78
    .end local v2    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    .end local v6    # "message":Landroid/os/Message;
    .end local v9    # "source":Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;
    .end local v12    # "tmp":I
    :cond_0
    const/4 v13, 0x0

    .local v13, "x":I
    :goto_3
    move/from16 v0, p2

    if-lt v13, v0, :cond_1

    .line 77
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 79
    :cond_1
    mul-int v15, v13, p3

    add-int v15, v15, p3

    sub-int/2addr v15, v14

    add-int/lit8 v15, v15, -0x1

    mul-int v16, v14, p2

    add-int v16, v16, v13

    aget-byte v16, p1, v16

    aput-byte v16, v8, v15

    .line 78
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 89
    .end local v13    # "x":I
    .restart local v2    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    .restart local v9    # "source":Lcom/mining/app/zxing/camera/PlanarYUVLuminanceSource;
    .restart local v12    # "tmp":I
    :catch_0
    move-exception v15

    .line 92
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mining/app/zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v15}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_1

    .line 91
    :catchall_0
    move-exception v15

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mining/app/zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 93
    throw v15

    .line 105
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mining/app/zxing/decoding/DecodeHandler;->activity:Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;

    invoke-virtual {v15}, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->getHandler()Landroid/os/Handler;

    move-result-object v15

    const v16, 0x7f07001c

    invoke-static/range {v15 .. v16}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    .line 106
    .restart local v6    # "message":Landroid/os/Message;
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 61
    :goto_0
    return-void

    .line 55
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/mining/app/zxing/decoding/DecodeHandler;->decode([BII)V

    goto :goto_0

    .line 58
    :sswitch_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 52
    :sswitch_data_0
    .sparse-switch
        0x7f07001b -> :sswitch_0
        0x7f070021 -> :sswitch_1
    .end sparse-switch
.end method
