.class public Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;
.super Lcom/kankunit/smartplugcronus/base/BaseFragment;
.source "DeviceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;,
        Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$MyOnClickListener;
    }
.end annotation


# instance fields
.field private begin:I

.field private bmpW:I

.field context:Landroid/content/Context;

.field private controlButton:Landroid/widget/ImageButton;

.field private controlText:Landroid/widget/TextView;

.field private currIndex:I

.field private db:Lnet/tsz/afinal/FinalDb;

.field private deviceButton:Landroid/widget/ImageButton;

.field private deviceList_title:Landroid/widget/TextView;

.field private deviceText:Landroid/widget/TextView;

.field private end:I

.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private imageView:Landroid/widget/ImageView;

.field private infraredButton:Landroid/widget/ImageButton;

.field private infraredText:Landroid/widget/TextView;

.field private ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;

.field private middle:I

.field private offset:I

.field parent:Landroid/view/View;

.field private shadowlayer:Landroid/widget/RelativeLayout;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;-><init>()V

    .line 48
    iput v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->offset:I

    .line 49
    iput v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->currIndex:I

    .line 51
    iput v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->begin:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->db:Lnet/tsz/afinal/FinalDb;

    .line 40
    return-void
.end method

.method private InitImageView()V
    .locals 3

    .prologue
    .line 162
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->parent:Landroid/view/View;

    const v2, 0x7f07016e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->imageView:Landroid/widget/ImageView;

    .line 163
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02017e

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->bmpW:I

    .line 164
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 167
    .local v0, "layoutwidth":I
    div-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->bmpW:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->middle:I

    .line 168
    iget v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->bmpW:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->end:I

    .line 171
    return-void
.end method

.method private InitTextView()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->parent:Landroid/view/View;

    const v1, 0x7f07016f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->deviceButton:Landroid/widget/ImageButton;

    .line 130
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->parent:Landroid/view/View;

    const v1, 0x7f070171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->controlButton:Landroid/widget/ImageButton;

    .line 131
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->parent:Landroid/view/View;

    const v1, 0x7f070173

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->infraredButton:Landroid/widget/ImageButton;

    .line 133
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->parent:Landroid/view/View;

    const v1, 0x7f070170

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->deviceText:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->parent:Landroid/view/View;

    const v1, 0x7f070172

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->controlText:Landroid/widget/TextView;

    .line 135
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->parent:Landroid/view/View;

    const v1, 0x7f070174

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->infraredText:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->parent:Landroid/view/View;

    const v1, 0x7f07004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->deviceList_title:Landroid/widget/TextView;

    .line 138
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->deviceButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$MyOnClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$MyOnClickListener;-><init>(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->controlButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$MyOnClickListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$MyOnClickListener;-><init>(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->infraredButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$MyOnClickListener;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$MyOnClickListener;-><init>(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->deviceButton:Landroid/widget/ImageButton;

    const v1, 0x7f020177

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 143
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->deviceText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    return-void
.end method

.method private InitViewPager()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->parent:Landroid/view/View;

    const v1, 0x7f070175

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 118
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 119
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/kankunit/smartplugcronus/adapter/DevicePagerAdapter;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-direct {v1, v2}, Lcom/kankunit/smartplugcronus/adapter/DevicePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 120
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 121
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;-><init>(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 122
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->offset:I

    return v0
.end method

.method static synthetic access$10(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->deviceButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$11(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->deviceList_title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->controlText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->controlButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$14(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->infraredText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->infraredButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$16(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->bmpW:I

    return v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->resetImage()V

    return-void
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->middle:I

    return v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->begin:I

    return v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->currIndex:I

    return v0
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->end:I

    return v0
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->currIndex:I

    return-void
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->deviceText:Landroid/widget/TextView;

    return-object v0
.end method

.method private resetImage()V
    .locals 3

    .prologue
    const v2, 0x7f09001f

    .line 147
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->deviceButton:Landroid/widget/ImageButton;

    const v1, 0x7f020174

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 148
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->controlButton:Landroid/widget/ImageButton;

    const v1, 0x7f020184

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 150
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->infraredButton:Landroid/widget/ImageButton;

    const v1, 0x7f020182

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 152
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->deviceText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->controlText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->infraredText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    return-void
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 280
    return-void
.end method

.method public hideShadePopWindow()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->shadowlayer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->shadowlayer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 69
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->context:Landroid/content/Context;

    .line 82
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->context:Landroid/content/Context;

    invoke-static {v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->db:Lnet/tsz/afinal/FinalDb;

    .line 83
    invoke-super {p0, p1, p2, p3}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 84
    const v1, 0x7f030052

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->parent:Landroid/view/View;

    .line 85
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->parent:Landroid/view/View;

    const v2, 0x7f07004e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 86
    .local v0, "menuButton":Landroid/widget/ImageButton;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 87
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->parent:Landroid/view/View;

    const v2, 0x7f070056

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->shadowlayer:Landroid/widget/RelativeLayout;

    .line 88
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->shadowlayer:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$1;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    new-instance v1, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$2;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$2;-><init>(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->InitTextView()V

    .line 110
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->InitViewPager()V

    .line 111
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->InitImageView()V

    .line 113
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->parent:Landroid/view/View;

    return-object v1
.end method

.method public showShadePopWindow()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->shadowlayer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->shadowlayer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 64
    :cond_0
    return-void
.end method

.method public showSwitch(Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    .locals 3
    .param p1, "dm"    # Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .prologue
    .line 284
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    .line 285
    .local v0, "df":Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;
    invoke-virtual {v0, p1}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->showSwitch(Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 286
    return-void
.end method
