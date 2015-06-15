.class Lorg/videolan/vlc/gui/audio/EqualizerFragment$4;
.super Ljava/lang/Object;
.source "EqualizerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/audio/EqualizerFragment;->fillViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;

.field private final synthetic val$equalizer_preset_pref:I


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/audio/EqualizerFragment;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$4;->this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;

    iput p2, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$4;->val$equalizer_preset_pref:I

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$4;->this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;

    # getter for: Lorg/videolan/vlc/gui/audio/EqualizerFragment;->equalizer_presets:Landroid/widget/Spinner;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->access$3(Lorg/videolan/vlc/gui/audio/EqualizerFragment;)Landroid/widget/Spinner;

    move-result-object v0

    iget v1, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$4;->val$equalizer_preset_pref:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 143
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$4;->this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;

    # getter for: Lorg/videolan/vlc/gui/audio/EqualizerFragment;->equalizer_presets:Landroid/widget/Spinner;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->access$3(Lorg/videolan/vlc/gui/audio/EqualizerFragment;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$4;->this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;

    # getter for: Lorg/videolan/vlc/gui/audio/EqualizerFragment;->mPresetListener:Landroid/widget/AdapterView$OnItemSelectedListener;
    invoke-static {v1}, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->access$4(Lorg/videolan/vlc/gui/audio/EqualizerFragment;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 144
    return-void
.end method
