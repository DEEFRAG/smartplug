.class public Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;
.super Landroid/support/v4/app/Fragment;
.source "DeviceGridFragment.java"


# instance fields
.field private configureBtn:Landroid/widget/ImageButton;

.field private exa1:Landroid/graphics/drawable/AnimationDrawable;

.field private exa2:Landroid/graphics/drawable/AnimationDrawable;

.field private rootView:Landroid/view/View;

.field private waveImage1:Landroid/widget/ImageView;

.field private waveImage2:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;->exa1:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;->exa2:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v2, 0x7f040012

    .line 25
    const v0, 0x7f030058

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;->rootView:Landroid/view/View;

    .line 26
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0701b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;->waveImage1:Landroid/widget/ImageView;

    .line 27
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0701b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;->waveImage2:Landroid/widget/ImageView;

    .line 28
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;->waveImage2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 29
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;->waveImage1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 30
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;->waveImage1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;->exa1:Landroid/graphics/drawable/AnimationDrawable;

    .line 31
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;->waveImage2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;->exa2:Landroid/graphics/drawable/AnimationDrawable;

    .line 33
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0701b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;->configureBtn:Landroid/widget/ImageButton;

    .line 34
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;->configureBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment$1;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;->rootView:Landroid/view/View;

    return-object v0
.end method
