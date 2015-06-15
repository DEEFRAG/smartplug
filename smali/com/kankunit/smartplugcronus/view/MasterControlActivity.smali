.class public Lcom/kankunit/smartplugcronus/view/MasterControlActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "MasterControlActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private btnI:I

.field private btnMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private cpid:I

.field private currentPage:I

.field private db:Lnet/tsz/afinal/FinalDb;

.field private deviationX:F

.field private deviationY:F

.field private dragview:Landroid/widget/FrameLayout;

.field private leftScrollView1:Landroid/widget/RelativeLayout;

.field private leftScrollView2:Landroid/widget/RelativeLayout;

.field private leftScrollView3:Landroid/widget/RelativeLayout;

.field private mDragImageView:Lcom/kankunit/smartplugcronus/customview/ParamButton;

.field private mac:Ljava/lang/String;

.field private masterBtn1:Landroid/widget/ImageButton;

.field private masterBtn10:Landroid/widget/ImageButton;

.field private masterBtn11:Landroid/widget/ImageButton;

.field private masterBtn12:Landroid/widget/ImageButton;

.field private masterBtn13:Landroid/widget/ImageButton;

.field private masterBtn14:Landroid/widget/ImageButton;

.field private masterBtn15:Landroid/widget/ImageButton;

.field private masterBtn16:Landroid/widget/ImageButton;

.field private masterBtn17:Landroid/widget/ImageButton;

.field private masterBtn18:Landroid/widget/ImageButton;

.field private masterBtn19:Landroid/widget/ImageButton;

.field private masterBtn2:Landroid/widget/ImageButton;

.field private masterBtn20:Landroid/widget/ImageButton;

.field private masterBtn21:Landroid/widget/ImageButton;

.field private masterBtn22:Landroid/widget/ImageButton;

.field private masterBtn23:Landroid/widget/ImageButton;

.field private masterBtn3:Landroid/widget/ImageButton;

.field private masterBtn4:Landroid/widget/ImageButton;

.field private masterBtn5:Landroid/widget/ImageButton;

.field private masterBtn6:Landroid/widget/ImageButton;

.field private masterBtn7:Landroid/widget/ImageButton;

.field private masterBtn8:Landroid/widget/ImageButton;

.field private masterBtn9:Landroid/widget/ImageButton;

.field private meshList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private nextOnclick:Landroid/view/View$OnClickListener;

.field private nextPageBtn1:Landroid/widget/ImageButton;

.field private nextPageBtn2:Landroid/widget/ImageButton;

.field private nextPageBtn3:Landroid/widget/ImageButton;

.field private final originalBtnTag:Ljava/lang/String;

.field private port:I

.field private preOnclick:Landroid/view/View$OnClickListener;

.field private prePageBtn1:Landroid/widget/ImageButton;

.field private prePageBtn2:Landroid/widget/ImageButton;

.field private prePageBtn3:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->btnMap:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->btnI:I

    .line 78
    const-string v0, "1000"

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->originalBtnTag:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->mac:Ljava/lang/String;

    .line 82
    const/16 v0, 0xbd7

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->port:I

    .line 84
    iput v1, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->deviationX:F

    .line 85
    iput v1, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->deviationY:F

    .line 93
    const/4 v0, 0x1

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->currentPage:I

    .line 107
    new-instance v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$1;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->preOnclick:Landroid/view/View$OnClickListener;

    .line 134
    new-instance v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$2;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->nextOnclick:Landroid/view/View$OnClickListener;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->currentPage:I

    return v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->nextPageBtn3:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$10(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Lcom/kankunit/smartplugcronus/customview/ParamButton;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->mDragImageView:Lcom/kankunit/smartplugcronus/customview/ParamButton;

    return-object v0
.end method

.method static synthetic access$11(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)I
    .locals 1

    .prologue
    .line 947
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->savePannel()I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->leftScrollView2:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->leftScrollView1:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->leftScrollView3:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->prePageBtn1:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;I)V
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->currentPage:I

    return-void
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 932
    invoke-direct {p0, p1, p2}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->removeOldBtn(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->dragview:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private createIcon(IILjava/lang/String;ILjava/lang/String;IZ)Lcom/kankunit/smartplugcronus/customview/ParamButton;
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "resId"    # I
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "b"    # Z

    .prologue
    const v4, 0x7f0a0102

    .line 329
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 330
    .local v0, "fl":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 331
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 332
    new-instance v1, Lcom/kankunit/smartplugcronus/customview/ParamButton;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/customview/ParamButton;-><init>(Landroid/content/Context;)V

    .line 333
    .local v1, "iv":Lcom/kankunit/smartplugcronus/customview/ParamButton;
    invoke-virtual {v1, p3}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 334
    invoke-virtual {p0, p4}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResource(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setBackgroundResource(I)V

    .line 335
    invoke-virtual {v1, p7}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setParamBool(Z)V

    .line 336
    if-eqz p7, :cond_0

    .line 337
    invoke-virtual {v1, p5}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 338
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setTextColor(I)V

    .line 341
    :cond_0
    invoke-virtual {v1, v0}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    invoke-virtual {v1, p6}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setBtnId(I)V

    .line 345
    const/16 v2, 0x32

    if-le p4, v2, :cond_1

    .line 346
    invoke-virtual {p0, p4}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getParamId(I)I

    move-result p4

    .line 348
    :cond_1
    invoke-virtual {v1, p4}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setParamInt(I)V

    .line 349
    new-instance v2, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)V

    invoke-virtual {v1, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 471
    return-object v1
.end method

.method private createNewDragImage(IILjava/lang/String;II)Lcom/kankunit/smartplugcronus/customview/ParamButton;
    .locals 5
    .param p1, "downX"    # I
    .param p2, "downY"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "resId"    # I
    .param p5, "id"    # I

    .prologue
    const v4, 0x7f0a0102

    .line 721
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 722
    .local v1, "fl":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 723
    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 724
    new-instance v0, Lcom/kankunit/smartplugcronus/customview/ParamButton;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/customview/ParamButton;-><init>(Landroid/content/Context;)V

    .line 726
    .local v0, "dragImageView":Lcom/kankunit/smartplugcronus/customview/ParamButton;
    const v2, 0x7f07029f

    if-ne p5, v2, :cond_0

    .line 727
    const p4, 0x7f020450

    .line 728
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setParamInt(I)V

    .line 800
    :goto_0
    invoke-virtual {v0, p3}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 801
    invoke-virtual {v0, p0}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 803
    invoke-virtual {v0, p4}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setBackgroundResource(I)V

    .line 804
    new-instance v2, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)V

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 925
    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 927
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->dragview:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 928
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->btnMap:Ljava/util/Map;

    invoke-interface {v2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    return-object v0

    .line 729
    :cond_0
    const v2, 0x7f0702a2

    if-ne p5, v2, :cond_1

    .line 730
    const p4, 0x7f020453

    .line 731
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setParamInt(I)V

    goto :goto_0

    .line 732
    :cond_1
    const v2, 0x7f0702a1

    if-ne p5, v2, :cond_2

    .line 733
    const p4, 0x7f020460

    .line 734
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setParamInt(I)V

    goto :goto_0

    .line 735
    :cond_2
    const v2, 0x7f0702a0

    if-ne p5, v2, :cond_3

    .line 736
    const p4, 0x7f020456

    .line 737
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setParamInt(I)V

    goto :goto_0

    .line 738
    :cond_3
    const v2, 0x7f0702a5

    if-ne p5, v2, :cond_4

    .line 739
    const p4, 0x7f02044d

    .line 740
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setParamInt(I)V

    goto :goto_0

    .line 741
    :cond_4
    const v2, 0x7f0702a6

    if-ne p5, v2, :cond_5

    .line 742
    const p4, 0x7f020463

    .line 743
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setParamInt(I)V

    goto :goto_0

    .line 744
    :cond_5
    const v2, 0x7f0702b7

    if-ne p5, v2, :cond_6

    .line 745
    const p4, 0x7f020469

    .line 746
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setParamInt(I)V

    goto :goto_0

    .line 747
    :cond_6
    const v2, 0x7f0702b4

    if-ne p5, v2, :cond_7

    .line 748
    const p4, 0x7f02045d

    .line 749
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setParamInt(I)V

    goto :goto_0

    .line 750
    :cond_7
    const v2, 0x7f0702a3

    if-ne p5, v2, :cond_8

    .line 751
    const p4, 0x7f020466

    .line 752
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setParamInt(I)V

    goto/16 :goto_0

    .line 753
    :cond_8
    const v2, 0x7f0702a4

    if-ne p5, v2, :cond_9

    .line 754
    const p4, 0x7f02043f

    .line 755
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setParamInt(I)V

    goto/16 :goto_0

    .line 756
    :cond_9
    const v2, 0x7f0702b8

    if-ne p5, v2, :cond_a

    .line 757
    const p4, 0x7f020440

    .line 758
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setParamInt(I)V

    goto/16 :goto_0

    .line 759
    :cond_a
    const v2, 0x7f0702b9

    if-ne p5, v2, :cond_b

    .line 760
    const p4, 0x7f020445

    .line 761
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setParamInt(I)V

    goto/16 :goto_0

    .line 762
    :cond_b
    const v2, 0x7f0702ba

    if-ne p5, v2, :cond_c

    .line 763
    const p4, 0x7f020446

    .line 764
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setParamInt(I)V

    goto/16 :goto_0

    .line 765
    :cond_c
    const v2, 0x7f0702bb

    if-ne p5, v2, :cond_d

    .line 766
    const p4, 0x7f020447

    .line 767
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setParamInt(I)V

    goto/16 :goto_0

    .line 768
    :cond_d
    const v2, 0x7f0702aa

    if-ne p5, v2, :cond_e

    .line 769
    const p4, 0x7f020448

    .line 770
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setParamInt(I)V

    goto/16 :goto_0

    .line 771
    :cond_e
    const v2, 0x7f0702ab

    if-ne p5, v2, :cond_f

    .line 772
    const p4, 0x7f020449

    .line 773
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setParamInt(I)V

    goto/16 :goto_0

    .line 774
    :cond_f
    const v2, 0x7f0702ac

    if-ne p5, v2, :cond_10

    .line 775
    const p4, 0x7f02044a

    .line 776
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setParamInt(I)V

    goto/16 :goto_0

    .line 777
    :cond_10
    const v2, 0x7f0702ad

    if-ne p5, v2, :cond_11

    .line 778
    const p4, 0x7f02044b

    .line 779
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setParamInt(I)V

    goto/16 :goto_0

    .line 780
    :cond_11
    const v2, 0x7f0702ae

    if-ne p5, v2, :cond_12

    .line 781
    const p4, 0x7f02044c

    .line 782
    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setParamInt(I)V

    goto/16 :goto_0

    .line 783
    :cond_12
    const v2, 0x7f0702af

    if-ne p5, v2, :cond_13

    .line 784
    const p4, 0x7f020441

    .line 785
    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setParamInt(I)V

    goto/16 :goto_0

    .line 786
    :cond_13
    const v2, 0x7f0702b0

    if-ne p5, v2, :cond_14

    .line 787
    const p4, 0x7f020442

    .line 788
    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setParamInt(I)V

    goto/16 :goto_0

    .line 789
    :cond_14
    const v2, 0x7f0702b5

    if-ne p5, v2, :cond_15

    .line 790
    const p4, 0x7f020443

    .line 791
    const/16 v2, 0x16

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setParamInt(I)V

    goto/16 :goto_0

    .line 792
    :cond_15
    const v2, 0x7f0702b6

    if-ne p5, v2, :cond_16

    .line 793
    const p4, 0x7f020444

    .line 794
    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setParamInt(I)V

    goto/16 :goto_0

    .line 796
    :cond_16
    const p4, 0x7f020450

    .line 797
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setParamInt(I)V

    goto/16 :goto_0
.end method

.method private createNewSquareImage(IIIII)V
    .locals 4
    .param p1, "downX"    # I
    .param p2, "downY"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "blackOrWhite"    # I

    .prologue
    .line 1090
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1091
    .local v0, "fl":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1092
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1093
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1094
    .local v1, "squareIV":Landroid/widget/ImageView;
    if-nez p5, :cond_0

    .line 1095
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1099
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1100
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->dragview:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 1101
    return-void

    .line 1097
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private initView()V
    .locals 20

    .prologue
    .line 160
    const v1, 0x7f0702a7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->prePageBtn1:Landroid/widget/ImageButton;

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->prePageBtn1:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->preOnclick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v1, 0x7f0702b1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->prePageBtn2:Landroid/widget/ImageButton;

    .line 163
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->prePageBtn2:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->preOnclick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v1, 0x7f0702bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->prePageBtn3:Landroid/widget/ImageButton;

    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->prePageBtn3:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->preOnclick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v1, 0x7f0702a8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->nextPageBtn1:Landroid/widget/ImageButton;

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->nextPageBtn1:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->nextOnclick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    const v1, 0x7f0702b2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->nextPageBtn2:Landroid/widget/ImageButton;

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->nextPageBtn2:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->nextOnclick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    const v1, 0x7f0702bd

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->nextPageBtn3:Landroid/widget/ImageButton;

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->nextPageBtn3:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->nextOnclick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const v1, 0x7f07029e

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->leftScrollView1:Landroid/widget/RelativeLayout;

    .line 174
    const v1, 0x7f0702b3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->leftScrollView2:Landroid/widget/RelativeLayout;

    .line 175
    const v1, 0x7f0702a9

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->leftScrollView3:Landroid/widget/RelativeLayout;

    .line 183
    const v1, 0x7f07013d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->dragview:Landroid/widget/FrameLayout;

    .line 184
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->dragview:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 186
    const v1, 0x7f07029f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn1:Landroid/widget/ImageButton;

    .line 187
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn1:Landroid/widget/ImageButton;

    const-string v4, "1000"

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn1:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 190
    const v1, 0x7f0702a2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn2:Landroid/widget/ImageButton;

    .line 191
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn2:Landroid/widget/ImageButton;

    const-string v4, "1000"

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn2:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 194
    const v1, 0x7f0702a1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn3:Landroid/widget/ImageButton;

    .line 195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn3:Landroid/widget/ImageButton;

    const-string v4, "1000"

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn3:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 198
    const v1, 0x7f0702a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn4:Landroid/widget/ImageButton;

    .line 199
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn4:Landroid/widget/ImageButton;

    const-string v4, "1000"

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn4:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 202
    const v1, 0x7f0702a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn5:Landroid/widget/ImageButton;

    .line 203
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn5:Landroid/widget/ImageButton;

    const-string v4, "1000"

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn5:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 206
    const v1, 0x7f0702a6

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn6:Landroid/widget/ImageButton;

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn6:Landroid/widget/ImageButton;

    const-string v4, "1000"

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn6:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 210
    const v1, 0x7f0702b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn7:Landroid/widget/ImageButton;

    .line 211
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn7:Landroid/widget/ImageButton;

    const-string v4, "1000"

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn7:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 214
    const v1, 0x7f0702b4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn8:Landroid/widget/ImageButton;

    .line 215
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn8:Landroid/widget/ImageButton;

    const-string v4, "1000"

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn8:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 218
    const v1, 0x7f0702a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn9:Landroid/widget/ImageButton;

    .line 219
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn9:Landroid/widget/ImageButton;

    const-string v4, "1000"

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn9:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 222
    const v1, 0x7f0702a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn10:Landroid/widget/ImageButton;

    .line 223
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn10:Landroid/widget/ImageButton;

    const-string v4, "1000"

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn10:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 226
    const v1, 0x7f0702b8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn11:Landroid/widget/ImageButton;

    .line 227
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn11:Landroid/widget/ImageButton;

    const-string v4, "1000"

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn11:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 230
    const v1, 0x7f0702b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn12:Landroid/widget/ImageButton;

    .line 231
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn12:Landroid/widget/ImageButton;

    const-string v4, "1000"

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn12:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 234
    const v1, 0x7f0702ba

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn13:Landroid/widget/ImageButton;

    .line 235
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn13:Landroid/widget/ImageButton;

    const-string v4, "1000"

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn13:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 238
    const v1, 0x7f0702bb

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn14:Landroid/widget/ImageButton;

    .line 239
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn14:Landroid/widget/ImageButton;

    const-string v4, "1000"

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn14:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 242
    const v1, 0x7f0702aa

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn15:Landroid/widget/ImageButton;

    .line 243
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn15:Landroid/widget/ImageButton;

    const-string v4, "1000"

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn15:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 246
    const v1, 0x7f0702ab

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn16:Landroid/widget/ImageButton;

    .line 247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn16:Landroid/widget/ImageButton;

    const-string v4, "1000"

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn16:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 250
    const v1, 0x7f0702ac

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn17:Landroid/widget/ImageButton;

    .line 251
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn17:Landroid/widget/ImageButton;

    const-string v4, "1000"

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn17:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 254
    const v1, 0x7f0702ad

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn18:Landroid/widget/ImageButton;

    .line 255
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn18:Landroid/widget/ImageButton;

    const-string v4, "1000"

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn18:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 258
    const v1, 0x7f0702ae

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn19:Landroid/widget/ImageButton;

    .line 259
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn19:Landroid/widget/ImageButton;

    const-string v4, "1000"

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn19:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 262
    const v1, 0x7f0702af

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn20:Landroid/widget/ImageButton;

    .line 263
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn20:Landroid/widget/ImageButton;

    const-string v4, "1000"

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn20:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 266
    const v1, 0x7f0702b0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn21:Landroid/widget/ImageButton;

    .line 267
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn21:Landroid/widget/ImageButton;

    const-string v4, "1000"

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn21:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 270
    const v1, 0x7f0702b5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn22:Landroid/widget/ImageButton;

    .line 271
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn22:Landroid/widget/ImageButton;

    const-string v4, "1000"

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn22:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 274
    const v1, 0x7f0702b6

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn23:Landroid/widget/ImageButton;

    .line 275
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn23:Landroid/widget/ImageButton;

    const-string v4, "1000"

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->masterBtn23:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 277
    const/4 v14, 0x0

    .line 290
    .local v14, "i":I
    new-instance v1, Ljava/lang/StringBuilder;

    const/high16 v4, 0x436c0000    # 236.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/util/DensityUtil;->px2dip(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "aaaaaaaaaaa236:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/high16 v4, 0x429d0000    # 78.5f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    const v4, 0x43bb8000    # 375.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/util/DensityUtil;->px2dip(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "aaaaaaaaaab375:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/high16 v4, 0x42fa0000    # 125.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    const/high16 v4, 0x43ec0000    # 472.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/util/DensityUtil;->px2dip(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "aaaaaaaaaac472:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v4, 0x431d3333    # 157.2f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    const/high16 v4, 0x44b10000    # 1416.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/util/DensityUtil;->px2dip(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "aaaaaaaaaad1416:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/high16 v4, 0x43ec0000    # 472.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    const/high16 v4, 0x43480000    # 200.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/util/DensityUtil;->px2dip(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "aaaaaaaaaae200:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v4, 0x42853333    # 66.6f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    const/high16 v4, 0x42e20000    # 113.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/util/DensityUtil;->px2dip(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "aaaaaaaaaae113:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/high16 v4, 0x42960000    # 75.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 299
    const/4 v13, 0x0

    .local v13, "county":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a0101

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x7

    if-le v13, v1, :cond_1

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "controlId"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->cpid:I

    .line 318
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->cpid:I

    if-eqz v1, :cond_0

    .line 319
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->cpid:I

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/MasterRemoteControlPannelDao;->getMasterRemoteControlPannelByCpid(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v18

    .line 320
    .local v18, "mrcpmList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;>;"
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v1

    if-lt v15, v1, :cond_4

    .line 327
    .end local v15    # "j":I
    .end local v18    # "mrcpmList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;>;"
    :cond_0
    return-void

    .line 300
    :cond_1
    const/4 v12, 0x0

    .local v12, "countx":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a0101

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    if-le v12, v1, :cond_2

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a0101

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v13, v1

    goto :goto_0

    .line 301
    :cond_2
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 302
    .local v16, "meshMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "x"

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0100

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v1, "y"

    const/high16 v4, 0x42480000    # 50.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    add-int/2addr v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a0100

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int v2, v12, v1

    .line 306
    .local v2, "drawX":I
    const/high16 v1, 0x42480000    # 50.0f

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    add-int v3, v13, v1

    .line 307
    .local v3, "drawY":I
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a0101

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x6

    if-ge v13, v1, :cond_3

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a0101

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a0101

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v5, v1

    rem-int/lit8 v6, v14, 0x2

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->createNewSquareImage(IIIII)V

    .line 313
    :goto_3
    add-int/lit8 v14, v14, 0x1

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a0101

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v12, v1

    goto/16 :goto_2

    .line 310
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a0101

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a0101

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v5, v1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->createNewSquareImage(IIIII)V

    goto :goto_3

    .line 321
    .end local v2    # "drawX":I
    .end local v3    # "drawY":I
    .end local v12    # "countx":I
    .end local v16    # "meshMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v15    # "j":I
    .restart local v18    # "mrcpmList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;>;"
    :cond_4
    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;

    .line 322
    .local v17, "mrcpm":Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getCpid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getX()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getY()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getX()I

    move-result v5

    invoke-virtual/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getY()I

    move-result v6

    invoke-virtual/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getIcon()I

    move-result v8

    invoke-virtual/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getId()I

    move-result v10

    invoke-virtual/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->isAuto()Z

    move-result v11

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->createIcon(IILjava/lang/String;ILjava/lang/String;IZ)Lcom/kankunit/smartplugcronus/customview/ParamButton;

    move-result-object v19

    .line 324
    .local v19, "pb":Lcom/kankunit/smartplugcronus/customview/ParamButton;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->dragview:Landroid/widget/FrameLayout;

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 320
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1
.end method

.method private removeOldBtn(Ljava/lang/String;Landroid/view/View;)V
    .locals 5
    .param p1, "btnTag"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 933
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->dragview:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    .line 934
    .local v1, "subBtnCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 946
    return-void

    .line 935
    :cond_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->dragview:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 936
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 937
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Loop the tag---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "----Incoming tag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 938
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 939
    if-eq p2, v2, :cond_1

    .line 940
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->dragview:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 941
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Deletion of the old btn---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 934
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private savePannel()I
    .locals 17

    .prologue
    .line 949
    move-object/from16 v0, p0

    iget v13, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->cpid:I

    if-nez v13, :cond_0

    .line 950
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    long-to-int v11, v13

    .line 951
    .local v11, "time":I
    new-instance v1, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-direct {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;-><init>()V

    .line 952
    .local v1, "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "universal_"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setDname(Ljava/lang/String;)V

    .line 953
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c0188

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setName(Ljava/lang/String;)V

    .line 954
    const v13, 0x7f020082

    invoke-virtual {v1, v13}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setPhoto(I)V

    .line 955
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->mac:Ljava/lang/String;

    invoke-virtual {v1, v13}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setMac(Ljava/lang/String;)V

    .line 956
    move-object/from16 v0, p0

    iget v13, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->port:I

    invoke-virtual {v1, v13}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setPort(I)V

    .line 957
    const/4 v13, 0x4

    invoke-virtual {v1, v13}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setType(I)V

    .line 958
    const-string v13, "open"

    invoke-virtual {v1, v13}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setStatus(Ljava/lang/String;)V

    .line 959
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v13, v1}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 961
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v14, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v13, v14}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 962
    .local v2, "controlModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    check-cast v1, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 963
    .restart local v1    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getId()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->cpid:I

    .line 965
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->mac:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    .line 966
    .local v3, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    new-instance v9, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-direct {v9}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;-><init>()V

    .line 967
    .local v9, "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    const v13, 0x7f0201be

    invoke-virtual {v9, v13}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    .line 968
    const-string v13, "on"

    invoke-virtual {v9, v13}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOn(Ljava/lang/String;)V

    .line 969
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 970
    invoke-static/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutCount(Landroid/content/Context;)I

    move-result v8

    .line 971
    .local v8, "orderNo":I
    invoke-virtual {v9, v8}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setOrderNo(I)V

    .line 972
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getId()I

    move-result v13

    invoke-virtual {v9, v13}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setRelatedid(I)V

    .line 973
    const-string v13, "universalRemoteControl"

    invoke-virtual {v9, v13}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setShortcutType(Ljava/lang/String;)V

    .line 974
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c0188

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 975
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setDeviceTitle(Ljava/lang/String;)V

    .line 976
    const-string v13, "other"

    invoke-virtual {v9, v13}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setPluginType(Ljava/lang/String;)V

    .line 977
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v13, v9}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 980
    .end local v1    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    .end local v2    # "controlModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    .end local v3    # "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v8    # "orderNo":I
    .end local v9    # "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .end local v11    # "time":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->dragview:Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v10

    .line 985
    .local v10, "subBtnCount":I
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "subBtnCount is----"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 986
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-lt v5, v10, :cond_1

    .line 1086
    move-object/from16 v0, p0

    iget v13, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->cpid:I

    return v13

    .line 987
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->dragview:Landroid/widget/FrameLayout;

    invoke-virtual {v13, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 988
    .local v12, "v":Landroid/view/View;
    if-eqz v12, :cond_2

    .line 989
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const-string v14, "btn"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 990
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 991
    .local v4, "fl":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v4, :cond_2

    move-object v6, v12

    .line 992
    check-cast v6, Lcom/kankunit/smartplugcronus/customview/ParamButton;

    .line 993
    .local v6, "iv":Lcom/kankunit/smartplugcronus/customview/ParamButton;
    new-instance v7, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;

    invoke-direct {v7}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;-><init>()V

    .line 994
    .local v7, "mrcpm":Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->cpid:I

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setCpid(I)V

    .line 995
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->getTag()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setTag(Ljava/lang/String;)V

    .line 996
    iget v13, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setX(I)V

    .line 997
    iget v13, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setY(I)V

    .line 998
    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->isParamBool()Z

    move-result v13

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setAuto(Z)V

    .line 999
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "x is----"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getX()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 1000
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "y is----"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->getY()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 1001
    iget v13, v6, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramInt:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 1002
    const v13, 0x7f020450

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setIcon(I)V

    .line 1003
    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setTitle(Ljava/lang/String;)V

    .line 1075
    :goto_1
    iget v13, v6, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramInt:I

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setIcon(I)V

    .line 1076
    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->getBtnId()I

    move-result v13

    if-nez v13, :cond_1a

    .line 1077
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/kankunit/smartplugcronus/dao/MasterRemoteControlPannelDao;->saveMasterRemoteControlPannel(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;)V

    .line 986
    .end local v4    # "fl":Landroid/widget/FrameLayout$LayoutParams;
    .end local v6    # "iv":Lcom/kankunit/smartplugcronus/customview/ParamButton;
    .end local v7    # "mrcpm":Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1004
    .restart local v4    # "fl":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v6    # "iv":Lcom/kankunit/smartplugcronus/customview/ParamButton;
    .restart local v7    # "mrcpm":Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;
    :cond_3
    iget v13, v6, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramInt:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_4

    .line 1005
    const v13, 0x7f020453

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setIcon(I)V

    .line 1006
    const-string v13, "av"

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 1007
    :cond_4
    iget v13, v6, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramInt:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_5

    .line 1008
    const v13, 0x7f020460

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setIcon(I)V

    .line 1009
    const-string v13, "Home page"

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 1010
    :cond_5
    iget v13, v6, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramInt:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_6

    .line 1011
    const v13, 0x7f020456

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setIcon(I)V

    .line 1012
    const-string v13, "Undo"

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 1013
    :cond_6
    iget v13, v6, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramInt:I

    const/4 v14, 0x5

    if-ne v13, v14, :cond_7

    .line 1014
    const v13, 0x7f02044d

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setIcon(I)V

    .line 1015
    const-string v13, "Add"

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 1016
    :cond_7
    iget v13, v6, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramInt:I

    const/4 v14, 0x6

    if-ne v13, v14, :cond_8

    .line 1017
    const v13, 0x7f020463

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setIcon(I)V

    .line 1018
    const-string v13, "Less"

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 1019
    :cond_8
    iget v13, v6, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramInt:I

    const/4 v14, 0x7

    if-ne v13, v14, :cond_9

    .line 1020
    const v13, 0x7f020469

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setIcon(I)V

    .line 1021
    const-string v13, "Up"

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 1022
    :cond_9
    iget v13, v6, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramInt:I

    const/16 v14, 0x8

    if-ne v13, v14, :cond_a

    .line 1023
    const v13, 0x7f02045d

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setIcon(I)V

    .line 1024
    const-string v13, "Down"

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1025
    :cond_a
    iget v13, v6, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramInt:I

    const/16 v14, 0x9

    if-ne v13, v14, :cond_b

    .line 1026
    const v13, 0x7f020466

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setIcon(I)V

    .line 1027
    const-string v13, "OK"

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1029
    :cond_b
    iget v13, v6, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramInt:I

    const/16 v14, 0xa

    if-ne v13, v14, :cond_c

    .line 1030
    const v13, 0x7f02043f

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setIcon(I)V

    .line 1031
    const-string v13, "Switch"

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1032
    :cond_c
    iget v13, v6, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramInt:I

    const/16 v14, 0xb

    if-ne v13, v14, :cond_d

    .line 1033
    const v13, 0x7f020440

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setIcon(I)V

    .line 1034
    const-string v13, "1"

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1035
    :cond_d
    iget v13, v6, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramInt:I

    const/16 v14, 0xc

    if-ne v13, v14, :cond_e

    .line 1036
    const v13, 0x7f020445

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setIcon(I)V

    .line 1037
    const-string v13, "2"

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1038
    :cond_e
    iget v13, v6, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramInt:I

    const/16 v14, 0xd

    if-ne v13, v14, :cond_f

    .line 1039
    const v13, 0x7f020446

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setIcon(I)V

    .line 1040
    const-string v13, "3"

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1041
    :cond_f
    iget v13, v6, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramInt:I

    const/16 v14, 0xe

    if-ne v13, v14, :cond_10

    .line 1042
    const v13, 0x7f020447

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setIcon(I)V

    .line 1043
    const-string v13, "4"

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1044
    :cond_10
    iget v13, v6, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramInt:I

    const/16 v14, 0xf

    if-ne v13, v14, :cond_11

    .line 1045
    const v13, 0x7f020448

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setIcon(I)V

    .line 1046
    const-string v13, "5"

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1047
    :cond_11
    iget v13, v6, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramInt:I

    const/16 v14, 0x10

    if-ne v13, v14, :cond_12

    .line 1048
    const v13, 0x7f020449

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setIcon(I)V

    .line 1049
    const-string v13, "6"

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1050
    :cond_12
    iget v13, v6, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramInt:I

    const/16 v14, 0x11

    if-ne v13, v14, :cond_13

    .line 1051
    const v13, 0x7f02044a

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setIcon(I)V

    .line 1052
    const-string v13, "7"

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1053
    :cond_13
    iget v13, v6, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramInt:I

    const/16 v14, 0x12

    if-ne v13, v14, :cond_14

    .line 1054
    const v13, 0x7f02044b

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setIcon(I)V

    .line 1055
    const-string v13, "8"

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1056
    :cond_14
    iget v13, v6, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramInt:I

    const/16 v14, 0x13

    if-ne v13, v14, :cond_15

    .line 1057
    const v13, 0x7f02044c

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setIcon(I)V

    .line 1058
    const-string v13, "9"

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1059
    :cond_15
    iget v13, v6, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramInt:I

    const/16 v14, 0x14

    if-ne v13, v14, :cond_16

    .line 1060
    const v13, 0x7f020441

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setIcon(I)V

    .line 1061
    const-string v13, "0"

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1062
    :cond_16
    iget v13, v6, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramInt:I

    const/16 v14, 0x15

    if-ne v13, v14, :cond_17

    .line 1063
    const v13, 0x7f020442

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setIcon(I)V

    .line 1064
    const-string v13, "Add"

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1065
    :cond_17
    iget v13, v6, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramInt:I

    const/16 v14, 0x16

    if-ne v13, v14, :cond_18

    .line 1066
    const v13, 0x7f020443

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setIcon(I)V

    .line 1067
    const-string v13, "Right"

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1068
    :cond_18
    iget v13, v6, Lcom/kankunit/smartplugcronus/customview/ParamButton;->paramInt:I

    const/16 v14, 0x17

    if-ne v13, v14, :cond_19

    .line 1069
    const v13, 0x7f020444

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setIcon(I)V

    .line 1070
    const-string v13, "Left"

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1072
    :cond_19
    const v13, 0x7f020450

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setIcon(I)V

    .line 1073
    const-string v13, "Custom"

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1079
    :cond_1a
    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->getBtnId()I

    move-result v13

    invoke-virtual {v7, v13}, Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;->setId(I)V

    .line 1080
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/kankunit/smartplugcronus/dao/MasterRemoteControlPannelDao;->updateOrSaveMasterRemoteControlPannel(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/MasterRemoteControlPannelModel;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1150
    return-void
.end method

.method public getParamId(I)I
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 1253
    const/4 v0, 0x1

    .line 1254
    .local v0, "paramInt":I
    const v1, 0x7f020338

    if-ne p1, v1, :cond_1

    .line 1255
    const/4 v0, 0x1

    .line 1301
    :cond_0
    :goto_0
    return v0

    .line 1256
    :cond_1
    const v1, 0x7f02033b

    if-ne p1, v1, :cond_2

    .line 1257
    const/4 v0, 0x2

    .line 1258
    goto :goto_0

    :cond_2
    const v1, 0x7f020348

    if-ne p1, v1, :cond_3

    .line 1259
    const/4 v0, 0x3

    .line 1260
    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-eq p1, v1, :cond_4

    const v1, 0x7f02033e

    if-ne p1, v1, :cond_5

    .line 1261
    :cond_4
    const/4 v0, 0x4

    .line 1262
    goto :goto_0

    :cond_5
    const/4 v1, 0x5

    if-eq p1, v1, :cond_6

    const v1, 0x7f020335

    if-ne p1, v1, :cond_7

    .line 1263
    :cond_6
    const/4 v0, 0x5

    .line 1264
    goto :goto_0

    :cond_7
    const/4 v1, 0x6

    if-eq p1, v1, :cond_8

    const v1, 0x7f02034b

    if-ne p1, v1, :cond_9

    .line 1265
    :cond_8
    const/4 v0, 0x6

    .line 1266
    goto :goto_0

    :cond_9
    const/4 v1, 0x7

    if-eq p1, v1, :cond_a

    const v1, 0x7f020351

    if-ne p1, v1, :cond_b

    .line 1267
    :cond_a
    const/4 v0, 0x7

    .line 1268
    goto :goto_0

    :cond_b
    const/16 v1, 0x8

    if-eq p1, v1, :cond_c

    const v1, 0x7f020345

    if-ne p1, v1, :cond_d

    .line 1269
    :cond_c
    const/16 v0, 0x8

    .line 1270
    goto :goto_0

    :cond_d
    const/16 v1, 0x9

    if-eq p1, v1, :cond_e

    const v1, 0x7f02034e

    if-ne p1, v1, :cond_f

    .line 1271
    :cond_e
    const/16 v0, 0x9

    .line 1272
    goto :goto_0

    :cond_f
    const/16 v1, 0xa

    if-eq p1, v1, :cond_10

    const v1, 0x7f020327

    if-ne p1, v1, :cond_11

    .line 1273
    :cond_10
    const/16 v0, 0xa

    .line 1274
    goto :goto_0

    :cond_11
    const/16 v1, 0xb

    if-eq p1, v1, :cond_12

    const v1, 0x7f020328

    if-ne p1, v1, :cond_13

    .line 1275
    :cond_12
    const/16 v0, 0xb

    .line 1276
    goto :goto_0

    :cond_13
    const/16 v1, 0xc

    if-eq p1, v1, :cond_14

    const v1, 0x7f02032d

    if-ne p1, v1, :cond_15

    .line 1277
    :cond_14
    const/16 v0, 0xc

    .line 1278
    goto :goto_0

    :cond_15
    const/16 v1, 0xd

    if-eq p1, v1, :cond_16

    const v1, 0x7f02032e

    if-ne p1, v1, :cond_17

    .line 1279
    :cond_16
    const/16 v0, 0xd

    .line 1280
    goto :goto_0

    :cond_17
    const/16 v1, 0xe

    if-eq p1, v1, :cond_18

    const v1, 0x7f02032f

    if-ne p1, v1, :cond_19

    .line 1281
    :cond_18
    const/16 v0, 0xe

    .line 1282
    goto/16 :goto_0

    :cond_19
    const/16 v1, 0xf

    if-eq p1, v1, :cond_1a

    const v1, 0x7f020330

    if-ne p1, v1, :cond_1b

    .line 1283
    :cond_1a
    const/16 v0, 0xf

    .line 1284
    goto/16 :goto_0

    :cond_1b
    const/16 v1, 0x10

    if-eq p1, v1, :cond_1c

    const v1, 0x7f020331

    if-ne p1, v1, :cond_1d

    .line 1285
    :cond_1c
    const/16 v0, 0x10

    .line 1286
    goto/16 :goto_0

    :cond_1d
    const/16 v1, 0x11

    if-eq p1, v1, :cond_1e

    const v1, 0x7f020332

    if-ne p1, v1, :cond_1f

    .line 1287
    :cond_1e
    const/16 v0, 0x11

    .line 1288
    goto/16 :goto_0

    :cond_1f
    const/16 v1, 0x12

    if-eq p1, v1, :cond_20

    const v1, 0x7f020333

    if-ne p1, v1, :cond_21

    .line 1289
    :cond_20
    const/16 v0, 0x12

    .line 1290
    goto/16 :goto_0

    :cond_21
    const/16 v1, 0x13

    if-eq p1, v1, :cond_22

    const v1, 0x7f020334

    if-ne p1, v1, :cond_23

    .line 1291
    :cond_22
    const/16 v0, 0x13

    .line 1292
    goto/16 :goto_0

    :cond_23
    const/16 v1, 0x14

    if-eq p1, v1, :cond_24

    const v1, 0x7f020329

    if-ne p1, v1, :cond_25

    .line 1293
    :cond_24
    const/16 v0, 0x14

    .line 1294
    goto/16 :goto_0

    :cond_25
    const/16 v1, 0x15

    if-eq p1, v1, :cond_26

    const v1, 0x7f02032a

    if-ne p1, v1, :cond_27

    .line 1295
    :cond_26
    const/16 v0, 0x15

    .line 1296
    goto/16 :goto_0

    :cond_27
    const/16 v1, 0x16

    if-eq p1, v1, :cond_28

    const v1, 0x7f02032b

    if-ne p1, v1, :cond_29

    .line 1297
    :cond_28
    const/16 v0, 0x16

    .line 1298
    goto/16 :goto_0

    :cond_29
    const/16 v1, 0x17

    if-eq p1, v1, :cond_2a

    const v1, 0x7f02032c

    if-ne p1, v1, :cond_0

    .line 1299
    :cond_2a
    const/16 v0, 0x17

    goto/16 :goto_0
.end method

.method public getResource(I)I
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 1201
    const v0, 0x7f020450

    .line 1202
    .local v0, "paramInt":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const v1, 0x7f020338

    if-ne p1, v1, :cond_2

    .line 1203
    :cond_0
    const v0, 0x7f020450

    .line 1249
    :cond_1
    :goto_0
    return v0

    .line 1204
    :cond_2
    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const v1, 0x7f02033b

    if-ne p1, v1, :cond_4

    .line 1205
    :cond_3
    const v0, 0x7f020453

    .line 1206
    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    if-eq p1, v1, :cond_5

    const v1, 0x7f020348

    if-ne p1, v1, :cond_6

    .line 1207
    :cond_5
    const v0, 0x7f020460

    .line 1208
    goto :goto_0

    :cond_6
    const/4 v1, 0x4

    if-eq p1, v1, :cond_7

    const v1, 0x7f02033e

    if-ne p1, v1, :cond_8

    .line 1209
    :cond_7
    const v0, 0x7f020456

    .line 1210
    goto :goto_0

    :cond_8
    const/4 v1, 0x5

    if-eq p1, v1, :cond_9

    const v1, 0x7f020335

    if-ne p1, v1, :cond_a

    .line 1211
    :cond_9
    const v0, 0x7f02044d

    .line 1212
    goto :goto_0

    :cond_a
    const/4 v1, 0x6

    if-eq p1, v1, :cond_b

    const v1, 0x7f02034b

    if-ne p1, v1, :cond_c

    .line 1213
    :cond_b
    const v0, 0x7f020463

    .line 1214
    goto :goto_0

    :cond_c
    const/4 v1, 0x7

    if-eq p1, v1, :cond_d

    const v1, 0x7f020351

    if-ne p1, v1, :cond_e

    .line 1215
    :cond_d
    const v0, 0x7f020469

    .line 1216
    goto :goto_0

    :cond_e
    const/16 v1, 0x8

    if-eq p1, v1, :cond_f

    const v1, 0x7f020345

    if-ne p1, v1, :cond_10

    .line 1217
    :cond_f
    const v0, 0x7f02045d

    .line 1218
    goto :goto_0

    :cond_10
    const/16 v1, 0x9

    if-eq p1, v1, :cond_11

    const v1, 0x7f02034e

    if-ne p1, v1, :cond_12

    .line 1219
    :cond_11
    const v0, 0x7f020466

    .line 1220
    goto :goto_0

    :cond_12
    const/16 v1, 0xa

    if-eq p1, v1, :cond_13

    const v1, 0x7f020327

    if-ne p1, v1, :cond_14

    .line 1221
    :cond_13
    const v0, 0x7f02043f

    .line 1222
    goto :goto_0

    :cond_14
    const/16 v1, 0xb

    if-eq p1, v1, :cond_15

    const v1, 0x7f020328

    if-ne p1, v1, :cond_16

    .line 1223
    :cond_15
    const v0, 0x7f020440

    .line 1224
    goto :goto_0

    :cond_16
    const/16 v1, 0xc

    if-eq p1, v1, :cond_17

    const v1, 0x7f02032d

    if-ne p1, v1, :cond_18

    .line 1225
    :cond_17
    const v0, 0x7f020445

    .line 1226
    goto/16 :goto_0

    :cond_18
    const/16 v1, 0xd

    if-eq p1, v1, :cond_19

    const v1, 0x7f02032e

    if-ne p1, v1, :cond_1a

    .line 1227
    :cond_19
    const v0, 0x7f020446

    .line 1228
    goto/16 :goto_0

    :cond_1a
    const/16 v1, 0xe

    if-eq p1, v1, :cond_1b

    const v1, 0x7f02032f

    if-ne p1, v1, :cond_1c

    .line 1229
    :cond_1b
    const v0, 0x7f020447

    .line 1230
    goto/16 :goto_0

    :cond_1c
    const/16 v1, 0xf

    if-eq p1, v1, :cond_1d

    const v1, 0x7f020330

    if-ne p1, v1, :cond_1e

    .line 1231
    :cond_1d
    const v0, 0x7f020448

    .line 1232
    goto/16 :goto_0

    :cond_1e
    const/16 v1, 0x10

    if-eq p1, v1, :cond_1f

    const v1, 0x7f020331

    if-ne p1, v1, :cond_20

    .line 1233
    :cond_1f
    const v0, 0x7f020449

    .line 1234
    goto/16 :goto_0

    :cond_20
    const/16 v1, 0x11

    if-eq p1, v1, :cond_21

    const v1, 0x7f020332

    if-ne p1, v1, :cond_22

    .line 1235
    :cond_21
    const v0, 0x7f02044a

    .line 1236
    goto/16 :goto_0

    :cond_22
    const/16 v1, 0x12

    if-eq p1, v1, :cond_23

    const v1, 0x7f020333

    if-ne p1, v1, :cond_24

    .line 1237
    :cond_23
    const v0, 0x7f02044b

    .line 1238
    goto/16 :goto_0

    :cond_24
    const/16 v1, 0x13

    if-eq p1, v1, :cond_25

    const v1, 0x7f020334

    if-ne p1, v1, :cond_26

    .line 1239
    :cond_25
    const v0, 0x7f02044c

    .line 1240
    goto/16 :goto_0

    :cond_26
    const/16 v1, 0x14

    if-eq p1, v1, :cond_27

    const v1, 0x7f020329

    if-ne p1, v1, :cond_28

    .line 1241
    :cond_27
    const v0, 0x7f020441

    .line 1242
    goto/16 :goto_0

    :cond_28
    const/16 v1, 0x15

    if-eq p1, v1, :cond_29

    const v1, 0x7f02032a

    if-ne p1, v1, :cond_2a

    .line 1243
    :cond_29
    const v0, 0x7f020442

    .line 1244
    goto/16 :goto_0

    :cond_2a
    const/16 v1, 0x16

    if-eq p1, v1, :cond_2b

    const v1, 0x7f02032b

    if-ne p1, v1, :cond_2c

    .line 1245
    :cond_2b
    const v0, 0x7f020443

    .line 1246
    goto/16 :goto_0

    :cond_2c
    const/16 v1, 0x17

    if-eq p1, v1, :cond_2d

    const v1, 0x7f02032c

    if-ne p1, v1, :cond_1

    .line 1247
    :cond_2d
    const v0, 0x7f020444

    goto/16 :goto_0
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 1153
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1154
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0188

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1155
    new-instance v3, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$6;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$6;-><init>(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1161
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1162
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$7;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$7;-><init>(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1169
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 1170
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const v3, 0x7f02010d

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1171
    new-instance v3, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$8;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$8;-><init>(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1197
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 475
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 476
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 477
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 478
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 480
    const v0, 0x7f03009a

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->setContentView(I)V

    .line 481
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 482
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mac"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->mac:Ljava/lang/String;

    .line 483
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "port"

    const/16 v2, 0xbd7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->port:I

    .line 484
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 485
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->initView()V

    .line 486
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1104
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1105
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f100007

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1107
    const v1, 0x7f0703d3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1108
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 1109
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v8, 0x0

    .line 1117
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "item id is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 1118
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    const v7, 0x102002c

    if-ne v6, v7, :cond_0

    .line 1119
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->finish()V

    .line 1120
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    .line 1144
    :goto_0
    return v6

    .line 1122
    :cond_0
    const/4 v3, 0x1

    .line 1123
    .local v3, "isEmpty":Z
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->dragview:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    .line 1124
    .local v4, "subBtnCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v4, :cond_1

    .line 1133
    :goto_2
    if-eqz v3, :cond_3

    .line 1134
    const-string v6, "Remote control without buttons could not be saved"

    invoke-static {p0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1135
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    goto :goto_0

    .line 1125
    :cond_1
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->dragview:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1126
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_2

    .line 1127
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "btn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1128
    const/4 v3, 0x0

    .line 1129
    goto :goto_2

    .line 1124
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1137
    .end local v5    # "v":Landroid/view/View;
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    const-string v7, "Complete"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1138
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->savePannel()I

    move-result v0

    .line 1139
    .local v0, "cpid":I
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1140
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "controlId"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1141
    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->startActivity(Landroid/content/Intent;)V

    .line 1142
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->finish()V

    .line 1144
    .end local v0    # "cpid":I
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 103
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 104
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 98
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 31
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 489
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 490
    .local v7, "action":I
    const/4 v13, 0x1

    .line 491
    .local v13, "isShowIcon":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    .line 492
    .local v26, "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v30

    .line 496
    .local v30, "y":F
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "x:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v26

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 497
    if-nez v7, :cond_1b

    .line 498
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 499
    const/4 v1, 0x1

    .line 716
    :goto_0
    return v1

    .line 501
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "btn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Click on the"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v1, p1

    .line 503
    check-cast v1, Lcom/kankunit/smartplugcronus/customview/ParamButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->mDragImageView:Lcom/kankunit/smartplugcronus/customview/ParamButton;

    .line 507
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "1000"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    move-object/from16 v23, p1

    .line 508
    check-cast v23, Landroid/widget/ImageButton;

    .line 509
    .local v23, "pb":Landroid/widget/ImageButton;
    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 510
    .local v10, "fl":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v10, :cond_2

    .line 511
    const/4 v5, 0x0

    .line 512
    .local v5, "resId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f07029f

    if-ne v1, v2, :cond_3

    .line 513
    const v5, 0x7f020450

    .line 562
    :goto_1
    iget v1, v10, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    int-to-float v1, v1

    add-float v1, v1, v26

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0103

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->deviationX:F

    .line 563
    iget v1, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v1, v1

    add-float v1, v1, v30

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0103

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->deviationY:F

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Initial increment:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->deviationX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->deviationY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 565
    move/from16 v0, v26

    float-to-int v1, v0

    iget v2, v10, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v1

    move/from16 v0, v30

    float-to-int v1, v0

    iget v3, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "btn"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->btnI:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->createNewDragImage(IILjava/lang/String;II)Lcom/kankunit/smartplugcronus/customview/ParamButton;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->mDragImageView:Lcom/kankunit/smartplugcronus/customview/ParamButton;

    .line 716
    .end local v5    # "resId":I
    .end local v10    # "fl":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v23    # "pb":Landroid/widget/ImageButton;
    :cond_2
    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 514
    .restart local v5    # "resId":I
    .restart local v10    # "fl":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v23    # "pb":Landroid/widget/ImageButton;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0702a2

    if-ne v1, v2, :cond_4

    .line 515
    const v5, 0x7f020453

    .line 516
    goto/16 :goto_1

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0702a1

    if-ne v1, v2, :cond_5

    .line 517
    const v5, 0x7f020460

    .line 518
    goto/16 :goto_1

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0702a0

    if-ne v1, v2, :cond_6

    .line 519
    const v5, 0x7f020456

    .line 520
    goto/16 :goto_1

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0702a5

    if-ne v1, v2, :cond_7

    .line 521
    const v5, 0x7f02044d

    .line 522
    goto/16 :goto_1

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0702a6

    if-ne v1, v2, :cond_8

    .line 523
    const v5, 0x7f020463

    .line 524
    goto/16 :goto_1

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0702b7

    if-ne v1, v2, :cond_9

    .line 525
    const v5, 0x7f020469

    .line 526
    goto/16 :goto_1

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0702b4

    if-ne v1, v2, :cond_a

    .line 527
    const v5, 0x7f02045d

    .line 528
    goto/16 :goto_1

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0702a3

    if-ne v1, v2, :cond_b

    .line 529
    const v5, 0x7f020466

    .line 530
    goto/16 :goto_1

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0702a4

    if-ne v1, v2, :cond_c

    .line 531
    const v5, 0x7f02043f

    .line 532
    goto/16 :goto_1

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0702b8

    if-ne v1, v2, :cond_d

    .line 533
    const v5, 0x7f020440

    .line 534
    goto/16 :goto_1

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0702b9

    if-ne v1, v2, :cond_e

    .line 535
    const v5, 0x7f020445

    .line 536
    goto/16 :goto_1

    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0702ba

    if-ne v1, v2, :cond_f

    .line 537
    const v5, 0x7f020446

    .line 538
    goto/16 :goto_1

    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0702bb

    if-ne v1, v2, :cond_10

    .line 539
    const v5, 0x7f020447

    .line 540
    goto/16 :goto_1

    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0702aa

    if-ne v1, v2, :cond_11

    .line 541
    const v5, 0x7f020448

    .line 542
    goto/16 :goto_1

    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0702ab

    if-ne v1, v2, :cond_12

    .line 543
    const v5, 0x7f020449

    .line 544
    goto/16 :goto_1

    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0702ac

    if-ne v1, v2, :cond_13

    .line 545
    const v5, 0x7f02044a

    .line 546
    goto/16 :goto_1

    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0702ad

    if-ne v1, v2, :cond_14

    .line 547
    const v5, 0x7f02044b

    .line 548
    goto/16 :goto_1

    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0702ae

    if-ne v1, v2, :cond_15

    .line 549
    const v5, 0x7f02044c

    .line 550
    goto/16 :goto_1

    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0702af

    if-ne v1, v2, :cond_16

    .line 551
    const v5, 0x7f020441

    .line 552
    goto/16 :goto_1

    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0702b0

    if-ne v1, v2, :cond_17

    .line 553
    const v5, 0x7f020442

    .line 554
    goto/16 :goto_1

    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0702b5

    if-ne v1, v2, :cond_18

    .line 555
    const v5, 0x7f020443

    .line 556
    goto/16 :goto_1

    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0702b6

    if-ne v1, v2, :cond_19

    .line 557
    const v5, 0x7f020444

    .line 558
    goto/16 :goto_1

    .line 559
    :cond_19
    const v5, 0x7f020450

    goto/16 :goto_1

    .line 568
    .end local v5    # "resId":I
    .end local v10    # "fl":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v23    # "pb":Landroid/widget/ImageButton;
    :cond_1a
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->deviationX:F

    .line 569
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->deviationY:F

    goto/16 :goto_2

    .line 572
    :cond_1b
    const/4 v1, 0x2

    if-ne v7, v1, :cond_1c

    .line 573
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "1000"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 574
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->mDragImageView:Lcom/kankunit/smartplugcronus/customview/ParamButton;

    if-eqz v1, :cond_2

    .line 575
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->mDragImageView:Lcom/kankunit/smartplugcronus/customview/ParamButton;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 576
    .local v10, "fl":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v10, :cond_2

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mobile increment:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->deviationX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->deviationY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 580
    move/from16 v0, v26

    float-to-int v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->deviationX:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0103

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 581
    move/from16 v0, v30

    float-to-int v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->deviationY:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0103

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 582
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->mDragImageView:Lcom/kankunit/smartplugcronus/customview/ParamButton;

    invoke-virtual {v1, v10}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 586
    .end local v10    # "fl":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1c
    const/4 v1, 0x1

    if-ne v7, v1, :cond_2

    .line 587
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->deviationX:F

    float-to-int v1, v1

    int-to-float v1, v1

    add-float v1, v1, v26

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0103

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v26, v1, v2

    .line 588
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->deviationY:F

    float-to-int v1, v1

    int-to-float v1, v1

    add-float v1, v1, v30

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0103

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v30, v1, v2

    .line 589
    const/high16 v1, 0x42600000    # 56.0f

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v30, v1

    if-gez v1, :cond_22

    .line 590
    const/4 v13, 0x0

    .line 595
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "1000"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 596
    const/16 v24, 0x0

    .line 597
    .local v24, "stopX":I
    const/16 v25, 0x0

    .line 598
    .local v25, "stopY":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v11, v1, :cond_23

    .line 656
    if-eqz v13, :cond_1e

    .line 657
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "x"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v0, v24

    if-lt v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "y"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v0, v25

    if-le v0, v1, :cond_1e

    .line 658
    :cond_1d
    const-string v1, "Out of Bounds"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 659
    const/4 v13, 0x0

    .line 662
    :cond_1e
    if-nez v25, :cond_1f

    .line 663
    const/4 v13, 0x0

    .line 665
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stopX---"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v24

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-----stopY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v25

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 666
    if-eqz v13, :cond_2e

    .line 667
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->mDragImageView:Lcom/kankunit/smartplugcronus/customview/ParamButton;

    if-eqz v1, :cond_2

    .line 668
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->mDragImageView:Lcom/kankunit/smartplugcronus/customview/ParamButton;

    if-eqz v1, :cond_21

    .line 669
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->mDragImageView:Lcom/kankunit/smartplugcronus/customview/ParamButton;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->getParamInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    .line 670
    new-instance v12, Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 671
    .local v12, "inputName":Landroid/widget/EditText;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 672
    .local v9, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "Enter the button name"

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 673
    const v2, 0x108009b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 675
    const-string v1, "Ok"

    new-instance v2, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v12}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;Landroid/widget/EditText;)V

    invoke-virtual {v9, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 689
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 690
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 693
    .end local v9    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v12    # "inputName":Landroid/widget/EditText;
    :cond_20
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->mDragImageView:Lcom/kankunit/smartplugcronus/customview/ParamButton;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 694
    .restart local v10    # "fl":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v10, :cond_21

    .line 695
    add-int/lit8 v1, v24, 0x14

    iput v1, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 696
    add-int/lit8 v1, v25, 0x14

    iput v1, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 697
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->mDragImageView:Lcom/kankunit/smartplugcronus/customview/ParamButton;

    invoke-virtual {v1, v10}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 698
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "btn"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v24

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v25

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 699
    .local v8, "btnTag":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "New btn of tag---"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 700
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->mDragImageView:Lcom/kankunit/smartplugcronus/customview/ParamButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->removeOldBtn(Ljava/lang/String;Landroid/view/View;)V

    .line 701
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->mDragImageView:Lcom/kankunit/smartplugcronus/customview/ParamButton;

    invoke-virtual {v1, v8}, Lcom/kankunit/smartplugcronus/customview/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 704
    .end local v8    # "btnTag":Ljava/lang/String;
    .end local v10    # "fl":Landroid/widget/FrameLayout$LayoutParams;
    :cond_21
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->btnI:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->btnI:I

    goto/16 :goto_2

    .line 592
    .end local v11    # "i":I
    .end local v24    # "stopX":I
    .end local v25    # "stopY":I
    :cond_22
    const/4 v13, 0x1

    goto/16 :goto_3

    .line 599
    .restart local v11    # "i":I
    .restart local v24    # "stopX":I
    .restart local v25    # "stopY":I
    :cond_23
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map;

    .line 600
    .local v17, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "x"

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 601
    .local v18, "meshX":I
    const-string v1, "y"

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 602
    .local v19, "meshY":I
    if-nez v11, :cond_26

    .line 603
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;

    add-int/lit8 v2, v11, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map;

    .line 604
    .local v22, "nextm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "x"

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 605
    .local v20, "nextX":I
    const-string v1, "y"

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 606
    .local v21, "nextY":I
    move/from16 v0, v18

    int-to-float v1, v0

    cmpg-float v1, v1, v26

    if-gtz v1, :cond_24

    move/from16 v0, v20

    int-to-float v1, v0

    cmpg-float v1, v26, v1

    if-gtz v1, :cond_24

    .line 607
    move/from16 v24, v18

    .line 609
    :cond_24
    move/from16 v0, v19

    int-to-float v1, v0

    cmpg-float v1, v1, v30

    if-gtz v1, :cond_25

    move/from16 v0, v21

    int-to-float v1, v0

    cmpg-float v1, v30, v1

    if-gtz v1, :cond_25

    .line 610
    move/from16 v25, v19

    .line 598
    .end local v20    # "nextX":I
    .end local v21    # "nextY":I
    .end local v22    # "nextm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_25
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 612
    :cond_26
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v11, v1, :cond_28

    .line 613
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map;

    .line 614
    .local v16, "lastm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "x"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 615
    .local v14, "lastX":I
    const-string v1, "y"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 616
    .local v15, "lastY":I
    move/from16 v0, v18

    int-to-float v1, v0

    cmpg-float v1, v1, v26

    if-gtz v1, :cond_27

    int-to-float v1, v14

    cmpl-float v1, v26, v1

    if-ltz v1, :cond_27

    .line 617
    move/from16 v24, v14

    .line 619
    :cond_27
    move/from16 v0, v19

    int-to-float v1, v0

    cmpl-float v1, v1, v30

    if-ltz v1, :cond_25

    int-to-float v1, v15

    cmpl-float v1, v30, v1

    if-ltz v1, :cond_25

    .line 620
    move/from16 v25, v15

    .line 622
    goto :goto_5

    .line 623
    .end local v14    # "lastX":I
    .end local v15    # "lastY":I
    .end local v16    # "lastm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_28
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;

    add-int/lit8 v2, v11, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map;

    .line 624
    .restart local v22    # "nextm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "x"

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 625
    .restart local v20    # "nextX":I
    const-string v1, "y"

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 626
    .restart local v21    # "nextY":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;

    add-int/lit8 v2, v11, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map;

    .line 627
    .restart local v16    # "lastm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "x"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 628
    .restart local v14    # "lastX":I
    const-string v1, "y"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 630
    .restart local v15    # "lastY":I
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0101

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0100

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int v27, v1, v2

    .line 631
    .local v27, "x1":I
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0101

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0100

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int v28, v1, v2

    .line 632
    .local v28, "x2":I
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0101

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0100

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int v29, v1, v2

    .line 637
    .local v29, "x3":I
    move/from16 v0, v28

    int-to-float v1, v0

    cmpl-float v1, v1, v26

    if-ltz v1, :cond_2c

    move/from16 v0, v27

    int-to-float v1, v0

    cmpl-float v1, v26, v1

    if-ltz v1, :cond_2c

    .line 638
    move/from16 v24, v27

    .line 648
    :cond_29
    :goto_6
    move/from16 v0, v19

    int-to-float v1, v0

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0101

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float v2, v2, v30

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0101

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v1, v1, v30

    int-to-float v2, v15

    cmpl-float v1, v1, v2

    if-gez v1, :cond_2b

    :cond_2a
    move/from16 v0, v19

    int-to-float v1, v0

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0101

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float v2, v2, v30

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0101

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v1, v1, v30

    move/from16 v0, v21

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_25

    .line 649
    :cond_2b
    move/from16 v25, v15

    .line 650
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    if-ne v11, v1, :cond_25

    .line 651
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 639
    :cond_2c
    move/from16 v0, v28

    int-to-float v1, v0

    cmpg-float v1, v1, v26

    if-gtz v1, :cond_2d

    move/from16 v0, v29

    int-to-float v1, v0

    cmpg-float v1, v26, v1

    if-gtz v1, :cond_2d

    .line 640
    move/from16 v24, v28

    .line 641
    goto :goto_6

    :cond_2d
    move/from16 v0, v29

    int-to-float v1, v0

    cmpl-float v1, v26, v1

    if-ltz v1, :cond_29

    .line 642
    move/from16 v24, v29

    goto/16 :goto_6

    .line 709
    .end local v14    # "lastX":I
    .end local v15    # "lastY":I
    .end local v16    # "lastm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v17    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v18    # "meshX":I
    .end local v19    # "meshY":I
    .end local v20    # "nextX":I
    .end local v21    # "nextY":I
    .end local v22    # "nextm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v27    # "x1":I
    .end local v28    # "x2":I
    .end local v29    # "x3":I
    :cond_2e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->dragview:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->mDragImageView:Lcom/kankunit/smartplugcronus/customview/ParamButton;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 710
    const-string v1, "Remove aaa---"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
