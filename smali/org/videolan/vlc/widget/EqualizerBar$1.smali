.class Lorg/videolan/vlc/widget/EqualizerBar$1;
.super Ljava/lang/Object;
.source "EqualizerBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/widget/EqualizerBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/widget/EqualizerBar;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/widget/EqualizerBar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/widget/EqualizerBar$1;->this$0:Lorg/videolan/vlc/widget/EqualizerBar;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 79
    add-int/lit16 v1, p2, -0xc8

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float v0, v1, v2

    .line 80
    .local v0, "value":F
    iget-object v1, p0, Lorg/videolan/vlc/widget/EqualizerBar$1;->this$0:Lorg/videolan/vlc/widget/EqualizerBar;

    # getter for: Lorg/videolan/vlc/widget/EqualizerBar;->mValue:Landroid/widget/TextView;
    invoke-static {v1}, Lorg/videolan/vlc/widget/EqualizerBar;->access$0(Lorg/videolan/vlc/widget/EqualizerBar;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " Db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v1, p0, Lorg/videolan/vlc/widget/EqualizerBar$1;->this$0:Lorg/videolan/vlc/widget/EqualizerBar;

    # getter for: Lorg/videolan/vlc/widget/EqualizerBar;->listener:Lorg/videolan/vlc/interfaces/OnEqualizerBarChangeListener;
    invoke-static {v1}, Lorg/videolan/vlc/widget/EqualizerBar;->access$1(Lorg/videolan/vlc/widget/EqualizerBar;)Lorg/videolan/vlc/interfaces/OnEqualizerBarChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lorg/videolan/vlc/widget/EqualizerBar$1;->this$0:Lorg/videolan/vlc/widget/EqualizerBar;

    # getter for: Lorg/videolan/vlc/widget/EqualizerBar;->listener:Lorg/videolan/vlc/interfaces/OnEqualizerBarChangeListener;
    invoke-static {v1}, Lorg/videolan/vlc/widget/EqualizerBar;->access$1(Lorg/videolan/vlc/widget/EqualizerBar;)Lorg/videolan/vlc/interfaces/OnEqualizerBarChangeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/videolan/vlc/interfaces/OnEqualizerBarChangeListener;->onProgressChanged(F)V

    .line 83
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 71
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 75
    return-void
.end method
