.class Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture$1;
.super Ljava/lang/Object;
.source "MipcaActivityCapture.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture$1;->this$0:Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 222
    return-void
.end method
