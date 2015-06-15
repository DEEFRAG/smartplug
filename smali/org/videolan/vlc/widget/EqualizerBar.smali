.class public Lorg/videolan/vlc/widget/EqualizerBar;
.super Landroid/widget/LinearLayout;
.source "EqualizerBar.java"


# static fields
.field private static final PRECISION:I = 0xa

.field private static final RANGE:I = 0xc8


# instance fields
.field private listener:Lorg/videolan/vlc/interfaces/OnEqualizerBarChangeListener;

.field private mBand:Landroid/widget/TextView;

.field private mSeek:Lorg/videolan/vlc/widget/VerticalSeekBar;

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "band"    # F

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v0, Lorg/videolan/vlc/widget/EqualizerBar$1;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/widget/EqualizerBar$1;-><init>(Lorg/videolan/vlc/widget/EqualizerBar;)V

    iput-object v0, p0, Lorg/videolan/vlc/widget/EqualizerBar;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/videolan/vlc/widget/EqualizerBar;->init(Landroid/content/Context;F)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    new-instance v0, Lorg/videolan/vlc/widget/EqualizerBar$1;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/widget/EqualizerBar$1;-><init>(Lorg/videolan/vlc/widget/EqualizerBar;)V

    iput-object v0, p0, Lorg/videolan/vlc/widget/EqualizerBar;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/videolan/vlc/widget/EqualizerBar;->init(Landroid/content/Context;F)V

    .line 52
    return-void
.end method

.method static synthetic access$0(Lorg/videolan/vlc/widget/EqualizerBar;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/videolan/vlc/widget/EqualizerBar;->mValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lorg/videolan/vlc/widget/EqualizerBar;)Lorg/videolan/vlc/interfaces/OnEqualizerBarChangeListener;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/videolan/vlc/widget/EqualizerBar;->listener:Lorg/videolan/vlc/interfaces/OnEqualizerBarChangeListener;

    return-object v0
.end method

.method private init(Landroid/content/Context;F)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "band"    # F

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006b

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 57
    const v0, 0x7f0701db

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/widget/EqualizerBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/widget/VerticalSeekBar;

    iput-object v0, p0, Lorg/videolan/vlc/widget/EqualizerBar;->mSeek:Lorg/videolan/vlc/widget/VerticalSeekBar;

    .line 58
    iget-object v0, p0, Lorg/videolan/vlc/widget/EqualizerBar;->mSeek:Lorg/videolan/vlc/widget/VerticalSeekBar;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/widget/VerticalSeekBar;->setMax(I)V

    .line 59
    iget-object v0, p0, Lorg/videolan/vlc/widget/EqualizerBar;->mSeek:Lorg/videolan/vlc/widget/VerticalSeekBar;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/widget/VerticalSeekBar;->setProgress(I)V

    .line 60
    iget-object v0, p0, Lorg/videolan/vlc/widget/EqualizerBar;->mSeek:Lorg/videolan/vlc/widget/VerticalSeekBar;

    iget-object v1, p0, Lorg/videolan/vlc/widget/EqualizerBar;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/widget/VerticalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 61
    const v0, 0x7f0701dc

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/widget/EqualizerBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/videolan/vlc/widget/EqualizerBar;->mBand:Landroid/widget/TextView;

    .line 62
    iget-object v1, p0, Lorg/videolan/vlc/widget/EqualizerBar;->mBand:Landroid/widget/TextView;

    const v0, 0x4479e000    # 999.5f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    add-float v2, p2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " Hz"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const v0, 0x7f0701dd

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/widget/EqualizerBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/videolan/vlc/widget/EqualizerBar;->mValue:Landroid/widget/TextView;

    .line 66
    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float v2, p2, v2

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " kHz"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public setListener(Lorg/videolan/vlc/interfaces/OnEqualizerBarChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/videolan/vlc/interfaces/OnEqualizerBarChangeListener;

    .prologue
    .line 91
    iput-object p1, p0, Lorg/videolan/vlc/widget/EqualizerBar;->listener:Lorg/videolan/vlc/interfaces/OnEqualizerBarChangeListener;

    .line 92
    return-void
.end method

.method public setValue(F)V
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 87
    iget-object v0, p0, Lorg/videolan/vlc/widget/EqualizerBar;->mSeek:Lorg/videolan/vlc/widget/VerticalSeekBar;

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v1, p1

    const/high16 v2, 0x43480000    # 200.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/widget/VerticalSeekBar;->setProgress(I)V

    .line 88
    return-void
.end method
