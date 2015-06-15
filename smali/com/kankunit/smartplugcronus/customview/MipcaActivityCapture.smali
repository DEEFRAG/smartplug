.class public Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;
.super Landroid/app/Activity;
.source "MipcaActivityCapture.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final BEEP_VOLUME:F = 0.1f

.field private static final VIBRATE_DURATION:J = 0xc8L


# instance fields
.field private final beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private characterSet:Ljava/lang/String;

.field private decodeFormats:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lcom/mining/app/zxing/decoding/CaptureActivityHandler;

.field private hasSurface:Z

.field private inactivityTimer:Lcom/mining/app/zxing/decoding/InactivityTimer;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private playBeep:Z

.field private vibrate:Z

.field private viewfinderView:Lcom/mining/app/zxing/view/ViewfinderView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 219
    new-instance v0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture$1;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture$1;-><init>(Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 35
    return-void
.end method

.method private initBeepSound()V
    .locals 8

    .prologue
    const/4 v1, 0x3

    .line 181
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->playBeep:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 185
    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->setVolumeControlStream(I)V

    .line 186
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 187
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 188
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 190
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 191
    const v1, 0x7f060003

    .line 190
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 193
    .local v7, "file":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 194
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 193
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 195
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 196
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->mediaPlayer:Landroid/media/MediaPlayer;

    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 197
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v7    # "file":Landroid/content/res/AssetFileDescriptor;
    :cond_0
    :goto_0
    return-void

    .line 198
    .restart local v7    # "file":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v6

    .line 199
    .local v6, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->mediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 134
    :try_start_0
    invoke-static {}, Lcom/mining/app/zxing/camera/CameraManager;->get()Lcom/mining/app/zxing/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mining/app/zxing/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->handler:Lcom/mining/app/zxing/decoding/CaptureActivityHandler;

    if-nez v2, :cond_0

    .line 141
    new-instance v2, Lcom/mining/app/zxing/decoding/CaptureActivityHandler;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->decodeFormats:Ljava/util/Vector;

    .line 142
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->characterSet:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Lcom/mining/app/zxing/decoding/CaptureActivityHandler;-><init>(Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;Ljava/util/Vector;Ljava/lang/String;)V

    .line 141
    iput-object v2, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->handler:Lcom/mining/app/zxing/decoding/CaptureActivityHandler;

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "ioe":Ljava/io/IOException;
    goto :goto_0

    .line 137
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method private playBeepSoundAndVibrate()V
    .locals 3

    .prologue
    .line 207
    iget-boolean v1, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->playBeep:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 210
    :cond_0
    iget-boolean v1, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->vibrate:Z

    if-eqz v1, :cond_1

    .line 211
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 212
    .local v0, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 214
    .end local v0    # "vibrator":Landroid/os/Vibrator;
    :cond_1
    return-void
.end method


# virtual methods
.method public drawViewfinder()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->viewfinderView:Lcom/mining/app/zxing/view/ViewfinderView;

    invoke-virtual {v0}, Lcom/mining/app/zxing/view/ViewfinderView;->drawViewfinder()V

    .line 178
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->handler:Lcom/mining/app/zxing/decoding/CaptureActivityHandler;

    return-object v0
.end method

.method public getViewfinderView()Lcom/mining/app/zxing/view/ViewfinderView;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->viewfinderView:Lcom/mining/app/zxing/view/ViewfinderView;

    return-object v0
.end method

.method public handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "result"    # Lcom/google/zxing/Result;
    .param p2, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 116
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->inactivityTimer:Lcom/mining/app/zxing/decoding/InactivityTimer;

    invoke-virtual {v3}, Lcom/mining/app/zxing/decoding/InactivityTimer;->onActivity()V

    .line 117
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->playBeepSoundAndVibrate()V

    .line 118
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "resultString":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    const-string v3, "Scan failed!"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 129
    :goto_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->finish()V

    .line 130
    return-void

    .line 122
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 123
    .local v1, "resultIntent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 124
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "result"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v3, "bitmap"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 126
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 127
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v1, 0x7f03001d

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/mining/app/zxing/camera/CameraManager;->init(Landroid/content/Context;)V

    .line 55
    const v1, 0x7f07007a

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mining/app/zxing/view/ViewfinderView;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->viewfinderView:Lcom/mining/app/zxing/view/ViewfinderView;

    .line 57
    const v1, 0x7f07008f

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 58
    .local v0, "mButtonBack":Landroid/widget/Button;
    new-instance v1, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture$2;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture$2;-><init>(Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->hasSurface:Z

    .line 67
    new-instance v1, Lcom/mining/app/zxing/decoding/InactivityTimer;

    invoke-direct {v1, p0}, Lcom/mining/app/zxing/decoding/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->inactivityTimer:Lcom/mining/app/zxing/decoding/InactivityTimer;

    .line 68
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->inactivityTimer:Lcom/mining/app/zxing/decoding/InactivityTimer;

    invoke-virtual {v0}, Lcom/mining/app/zxing/decoding/InactivityTimer;->shutdown()V

    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 108
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 97
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->handler:Lcom/mining/app/zxing/decoding/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->handler:Lcom/mining/app/zxing/decoding/CaptureActivityHandler;

    invoke-virtual {v0}, Lcom/mining/app/zxing/decoding/CaptureActivityHandler;->quitSynchronously()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->handler:Lcom/mining/app/zxing/decoding/CaptureActivityHandler;

    .line 101
    :cond_0
    invoke-static {}, Lcom/mining/app/zxing/camera/CameraManager;->get()Lcom/mining/app/zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mining/app/zxing/camera/CameraManager;->closeDriver()V

    .line 102
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 73
    const v3, 0x7f070079

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    .line 74
    .local v2, "surfaceView":Landroid/view/SurfaceView;
    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 75
    .local v1, "surfaceHolder":Landroid/view/SurfaceHolder;
    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->hasSurface:Z

    if-eqz v3, :cond_1

    .line 76
    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 81
    :goto_0
    iput-object v4, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->decodeFormats:Ljava/util/Vector;

    .line 82
    iput-object v4, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->characterSet:Ljava/lang/String;

    .line 84
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->playBeep:Z

    .line 85
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 86
    .local v0, "audioService":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 87
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->playBeep:Z

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->initBeepSound()V

    .line 90
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->vibrate:Z

    .line 92
    return-void

    .line 78
    .end local v0    # "audioService":Landroid/media/AudioManager;
    :cond_1
    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 79
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 150
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->hasSurface:Z

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->hasSurface:Z

    .line 156
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 159
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->hasSurface:Z

    .line 165
    return-void
.end method
