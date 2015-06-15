.class Lorg/videolan/vlc/gui/audio/EqualizerFragment$1;
.super Ljava/lang/Object;
.source "EqualizerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/audio/EqualizerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/audio/EqualizerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$1;->this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$1;->this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;

    iget-object v3, v3, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->libVlc:Lorg/videolan/libvlc/LibVLC;

    if-nez v3, :cond_1

    .line 199
    :cond_0
    return-void

    .line 189
    :cond_1
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$1;->this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;

    iget-object v3, v3, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->libVlc:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v3, p3}, Lorg/videolan/libvlc/LibVLC;->getPreset(I)[F

    move-result-object v2

    .line 190
    .local v2, "preset":[F
    if-eqz v2, :cond_0

    .line 193
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$1;->this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;

    iput-object v2, v3, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->equalizer:[F

    .line 194
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$1;->this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;

    # getter for: Lorg/videolan/vlc/gui/audio/EqualizerFragment;->preamp:Landroid/widget/SeekBar;
    invoke-static {v3}, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->access$0(Lorg/videolan/vlc/gui/audio/EqualizerFragment;)Landroid/widget/SeekBar;

    move-result-object v3

    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$1;->this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;

    iget-object v4, v4, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->equalizer:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x14

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 195
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$1;->this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;

    iget-object v3, v3, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->equalizer:[F

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    .line 196
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$1;->this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;

    # getter for: Lorg/videolan/vlc/gui/audio/EqualizerFragment;->bands_layout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->access$1(Lorg/videolan/vlc/gui/audio/EqualizerFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/widget/EqualizerBar;

    .line 197
    .local v0, "bar":Lorg/videolan/vlc/widget/EqualizerBar;
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$1;->this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;

    iget-object v3, v3, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->equalizer:[F

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Lorg/videolan/vlc/widget/EqualizerBar;->setValue(F)V

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
