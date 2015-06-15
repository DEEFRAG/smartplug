.class public Lcom/kankunit/smartplugcronus/view/AddSceneActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "AddSceneActivity.java"


# instance fields
.field private aboveAdapter:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

.field private aboveLayout:Landroid/view/View;

.field private aboveLeft:I

.field private aboveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private aboveListView:Landroid/widget/ListView;

.field private aboveWidth:I

.field private actionType:Ljava/lang/String;

.field private b1:D

.field private b2:D

.field private b3:D

.field private behindAdapter:Landroid/widget/BaseAdapter;

.field private behindLayout:Landroid/view/View;

.field private behindList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private behindListView:Landroid/widget/ListView;

.field private currentIndex:I

.field private db:Lnet/tsz/afinal/FinalDb;

.field private expendLayout:Landroid/view/View;

.field private expendLayoutWidth:I

.field private imageScrollView:Landroid/widget/LinearLayout;

.field private isExpend:Z

.field private mFlag:Z

.field private mlength:I

.field private mtime:I

.field public operationIndex:I

.field public operationType:Ljava/lang/String;

.field private rightWidth:I

.field private sceneId:Ljava/lang/String;

.field private sceneImageView:Landroid/widget/ImageView;

.field private sceneName:Landroid/widget/TextView;

.field private taskcountTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 70
    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 85
    const-wide v0, 0x3fd7ae147ae147aeL    # 0.37

    iput-wide v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->b1:D

    const-wide v0, 0x3fe428f5c28f5c29L    # 0.63

    iput-wide v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->b2:D

    const-wide v0, 0x3fc1eb851eb851ecL    # 0.14

    iput-wide v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->b3:D

    .line 86
    const/16 v0, 0x12c

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->mtime:I

    .line 87
    iput v2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveLeft:I

    .line 88
    iput v2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveWidth:I

    .line 89
    iput v2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->expendLayoutWidth:I

    .line 90
    iput v2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->rightWidth:I

    .line 91
    iput v2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->mlength:I

    .line 93
    iput v2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->currentIndex:I

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->behindList:Ljava/util/List;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveList:Ljava/util/List;

    .line 98
    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->behindAdapter:Landroid/widget/BaseAdapter;

    .line 99
    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveAdapter:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->mFlag:Z

    .line 102
    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->isExpend:Z

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->actionType:Ljava/lang/String;

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneId:Ljava/lang/String;

    .line 106
    const-string v0, "add"

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->operationType:Ljava/lang/String;

    .line 107
    iput v2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->operationIndex:I

    .line 68
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;Z)V
    .locals 0

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->mFlag:Z

    return-void
.end method

.method static synthetic access$11(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;Z)V
    .locals 0

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->isExpend:Z

    return-void
.end method

.method static synthetic access$12(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$13(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->expendLayoutWidth:I

    return v0
.end method

.method static synthetic access$14(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->expendLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$15(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveLeft:I

    return v0
.end method

.method static synthetic access$16(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Lnet/tsz/afinal/FinalDb;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->db:Lnet/tsz/afinal/FinalDb;

    return-object v0
.end method

.method static synthetic access$17(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->actionType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveAdapter:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->taskcountTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->behindList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->mFlag:Z

    return v0
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->isExpend:Z

    return v0
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;I)V
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->currentIndex:I

    return-void
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveWidth:I

    return v0
.end method

.method public static getAndroidSDKVersion()I
    .locals 3

    .prologue
    .line 984
    const/4 v1, 0x0

    .line 986
    .local v1, "version":I
    :try_start_0
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 990
    :goto_0
    return v1

    .line 987
    :catch_0
    move-exception v0

    .line 988
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public aboveListEdit()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 423
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveList:Ljava/util/List;

    iget v2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->operationIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 424
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "type"

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    new-instance v0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;

    new-instance v2, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$2;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)V

    .line 449
    const/4 v4, 0x5

    move-object v1, p0

    move v5, v3

    .line 425
    invoke-direct/range {v0 .. v6}, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;-><init>(Landroid/content/Context;Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog$OnTimeSetListener;IIIZ)V

    .line 450
    .local v0, "mTimePicker":Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->show()V

    .line 452
    .end local v0    # "mTimePicker":Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;
    :cond_0
    return-void
.end method

.method public clickList(Ljava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 518
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "type"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 519
    invoke-static {}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->getAndroidSDKVersion()I

    move-result v2

    const/16 v3, 0xb

    if-lt v2, v3, :cond_5

    .line 520
    new-instance v0, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;

    new-instance v2, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$7;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$7;-><init>(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)V

    .line 548
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x1

    move-object v1, p0

    .line 520
    invoke-direct/range {v0 .. v6}, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;-><init>(Landroid/content/Context;Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog$OnTimeSetListener;IIIZ)V

    .line 549
    .local v0, "mTimePicker":Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;->show()V

    .line 585
    .end local v0    # "mTimePicker":Lcom/kankunit/smartplugcronus/util/MyTimePickerDialog;
    :cond_0
    :goto_0
    const-string v2, "type"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "type"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "type"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "type"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 586
    :cond_1
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 587
    .local v8, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0174

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 588
    new-instance v9, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

    invoke-direct {v9}, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;-><init>()V

    .line 589
    .local v9, "chooseListener":Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;
    const-string v2, "type"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 590
    const v2, 0x7f0e0004

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3, v9}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 595
    :goto_1
    new-instance v7, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$9;

    invoke-direct {v7, p0, v9, p1}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$9;-><init>(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;Ljava/util/Map;)V

    .line 634
    .local v7, "btnListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0239

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 635
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c023b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$10;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$10;-><init>(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)V

    invoke-virtual {v8, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 643
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 644
    .local v10, "dialog":Landroid/app/Dialog;
    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 646
    .end local v7    # "btnListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v8    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v9    # "chooseListener":Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;
    .end local v10    # "dialog":Landroid/app/Dialog;
    :cond_2
    const-string v13, ""

    .line 647
    .local v13, "recordIdx":Ljava/lang/String;
    const-string v2, "recordIdx"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 648
    const-string v2, "recordIdx"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 650
    :cond_3
    const-string v2, "type"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 651
    new-instance v12, Landroid/content/Intent;

    const-class v2, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    invoke-direct {v12, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 652
    .local v12, "intent":Landroid/content/Intent;
    const-string v2, "controlId"

    const-string v3, "controlId"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 653
    const/4 v2, 0x6

    invoke-virtual {p0, v12, v2}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 718
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_4
    :goto_2
    return-void

    .line 551
    .end local v13    # "recordIdx":Ljava/lang/String;
    :cond_5
    new-instance v1, Landroid/app/TimePickerDialog;

    new-instance v3, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$8;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$8;-><init>(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)V

    .line 579
    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x1

    move-object v2, p0

    .line 551
    invoke-direct/range {v1 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 580
    .local v1, "time":Landroid/app/TimePickerDialog;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0171

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/TimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 581
    invoke-virtual {v1}, Landroid/app/TimePickerDialog;->show()V

    goto/16 :goto_0

    .line 592
    .end local v1    # "time":Landroid/app/TimePickerDialog;
    .restart local v8    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v9    # "chooseListener":Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;
    :cond_6
    const v2, 0x7f0e0003

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3, v9}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 654
    .end local v8    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v9    # "chooseListener":Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;
    .restart local v13    # "recordIdx":Ljava/lang/String;
    :cond_7
    const-string v2, "type"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 655
    new-instance v12, Landroid/content/Intent;

    const-class v2, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    invoke-direct {v12, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 656
    .restart local v12    # "intent":Landroid/content/Intent;
    const-string v2, "controlId"

    const-string v3, "controlId"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 657
    const-string v2, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 658
    const-string v2, "recordIdx"

    invoke-virtual {v12, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    :cond_8
    const/4 v2, 0x4

    invoke-virtual {p0, v12, v2}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 661
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_9
    const-string v2, "type"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 662
    new-instance v12, Landroid/content/Intent;

    const-class v2, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    invoke-direct {v12, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 663
    .restart local v12    # "intent":Landroid/content/Intent;
    const-string v2, "controlId"

    const-string v3, "controlId"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 664
    const-string v2, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 665
    const-string v2, "recordIdx"

    invoke-virtual {v12, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    :cond_a
    const/16 v2, 0xb

    invoke-virtual {p0, v12, v2}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 668
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_b
    const-string v2, "type"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 669
    new-instance v12, Landroid/content/Intent;

    const-class v2, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    invoke-direct {v12, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 670
    .restart local v12    # "intent":Landroid/content/Intent;
    const-string v2, "controlId"

    const-string v3, "controlId"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    const-string v2, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 672
    const-string v2, "recordIdx"

    invoke-virtual {v12, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    :cond_c
    const/16 v2, 0xa

    invoke-virtual {p0, v12, v2}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 675
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_d
    const-string v2, "type"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 676
    new-instance v11, Landroid/content/Intent;

    const-class v2, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    invoke-direct {v11, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 677
    .local v11, "i":Landroid/content/Intent;
    const-string v2, "controlId"

    const-string v3, "controlId"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    const-string v2, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 679
    const-string v2, "recordIdx"

    invoke-virtual {v11, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    :cond_e
    const/4 v2, 0x5

    invoke-virtual {p0, v11, v2}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 682
    .end local v11    # "i":Landroid/content/Intent;
    :cond_f
    const-string v2, "type"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 683
    new-instance v11, Landroid/content/Intent;

    const-class v2, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    invoke-direct {v11, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 684
    .restart local v11    # "i":Landroid/content/Intent;
    const-string v2, "controlId"

    const-string v3, "controlId"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    const-string v2, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 686
    const-string v2, "recordIdx"

    invoke-virtual {v11, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    :cond_10
    const/4 v2, 0x7

    invoke-virtual {p0, v11, v2}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 689
    .end local v11    # "i":Landroid/content/Intent;
    :cond_11
    const-string v2, "type"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 690
    new-instance v11, Landroid/content/Intent;

    const-class v2, Lcom/kankunit/smartplugcronus/view/MiControlRecordActivity;

    invoke-direct {v11, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 691
    .restart local v11    # "i":Landroid/content/Intent;
    const-string v2, "controlId"

    const-string v3, "controlId"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    const-string v2, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 693
    const-string v2, "recordIdx"

    invoke-virtual {v11, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    :cond_12
    const/16 v2, 0x8

    invoke-virtual {p0, v11, v2}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 696
    .end local v11    # "i":Landroid/content/Intent;
    :cond_13
    const-string v2, "type"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 697
    new-instance v11, Landroid/content/Intent;

    const-class v2, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;

    invoke-direct {v11, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 698
    .restart local v11    # "i":Landroid/content/Intent;
    const-string v2, "controlId"

    const-string v3, "controlId"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 699
    const-string v2, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 700
    const-string v2, "recordIdx"

    invoke-virtual {v11, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 702
    :cond_14
    const/16 v2, 0x9

    invoke-virtual {p0, v11, v2}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 703
    .end local v11    # "i":Landroid/content/Intent;
    :cond_15
    const-string v2, "type"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 704
    new-instance v11, Landroid/content/Intent;

    const-class v2, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;

    invoke-direct {v11, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 705
    .restart local v11    # "i":Landroid/content/Intent;
    const-string v2, "controlId"

    const-string v3, "controlId"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    const-string v2, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 707
    const-string v2, "recordIdx"

    invoke-virtual {v11, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    :cond_16
    const/16 v2, 0xc

    invoke-virtual {p0, v11, v2}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 710
    .end local v11    # "i":Landroid/content/Intent;
    :cond_17
    const-string v2, "type"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 711
    new-instance v11, Landroid/content/Intent;

    const-class v2, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;

    invoke-direct {v11, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 712
    .restart local v11    # "i":Landroid/content/Intent;
    const-string v2, "controlId"

    const-string v3, "controlId"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    const-string v2, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 714
    const-string v2, "recordIdx"

    invoke-virtual {v11, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 716
    :cond_18
    const/16 v2, 0xd

    invoke-virtual {p0, v11, v2}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2
.end method

.method public contractContent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 771
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->mFlag:Z

    .line 772
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveAdapter:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->setCurrentIndex(I)V

    .line 773
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveAdapter:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->notifyDataSetChanged()V

    .line 774
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->expendLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 775
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->mlength:I

    int-to-float v1, v1

    invoke-direct {v0, v3, v1, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 776
    .local v0, "translateShow":Landroid/view/animation/TranslateAnimation;
    iget v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->mtime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 777
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 778
    new-instance v1, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$12;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$12;-><init>(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 799
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 800
    return-void
.end method

.method public dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dpValue"    # F

    .prologue
    .line 803
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 804
    .local v0, "scale":F
    mul-float v1, p2, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public doReceive(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1105
    return-void
.end method

.method public expendContent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 724
    iget-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->mFlag:Z

    if-nez v1, :cond_0

    .line 765
    :goto_0
    return-void

    .line 727
    :cond_0
    iget-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->isExpend:Z

    if-eqz v1, :cond_1

    .line 728
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveAdapter:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->setCurrentIndex(I)V

    .line 729
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveAdapter:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 732
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->mFlag:Z

    .line 734
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->mlength:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 735
    .local v0, "translateShow":Landroid/view/animation/TranslateAnimation;
    iget v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->mtime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 736
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 737
    new-instance v1, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$11;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$11;-><init>(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 764
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public getBehindList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 419
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->behindList:Ljava/util/List;

    return-object v0
.end method

.method public getList()V
    .locals 20

    .prologue
    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->behindList:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 317
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 318
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v16, "type"

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v16, "title"

    const-string v17, "Delay Function"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->behindList:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->db:Lnet/tsz/afinal/FinalDb;

    move-object/from16 v16, v0

    const-class v17, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v18, "version=1"

    invoke-virtual/range {v16 .. v18}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 322
    .local v6, "devicelist1":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    invoke-static/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getDeviceAll(Landroid/content/Context;)Ljava/util/List;

    move-result-object v13

    .line 323
    .local v13, "shortCutList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->db:Lnet/tsz/afinal/FinalDb;

    move-object/from16 v16, v0

    const-class v17, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v18, "version=2"

    invoke-virtual/range {v16 .. v18}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 324
    .local v7, "devicelist2":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->db:Lnet/tsz/afinal/FinalDb;

    move-object/from16 v16, v0

    const-class v17, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v18, "version=3 or version=4"

    invoke-virtual/range {v16 .. v18}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 325
    .local v8, "devicelist3":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 326
    invoke-interface {v6, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 327
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_2

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->db:Lnet/tsz/afinal/FinalDb;

    move-object/from16 v16, v0

    const-class v17, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual/range {v16 .. v17}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 366
    .local v3, "controlModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    invoke-static/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortRemoteControlList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v14

    .line 367
    .local v14, "shortList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_c

    .line 416
    return-void

    .line 327
    .end local v3    # "controlModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    .end local v14    # "shortList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 328
    .local v11, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    const/4 v2, 0x0

    .line 329
    .local v2, "b":Z
    if-eqz v13, :cond_4

    .line 330
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_6

    .line 337
    :cond_4
    :goto_2
    if-eqz v2, :cond_0

    .line 340
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 341
    .local v9, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getFlag()Ljava/lang/String;

    move-result-object v17

    const-string v18, "new"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 342
    const-string v17, "isNew"

    const-string v18, "true"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :goto_3
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getStatus()Ljava/lang/String;

    move-result-object v17

    const-string v18, "off"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 347
    const-string v17, "status"

    const-string v18, "offline"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    :goto_4
    const-string v17, "mac"

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string v17, "title"

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 355
    const-string v17, "type"

    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->behindList:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 330
    .end local v9    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 331
    .local v4, "cutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceMac()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_3

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceMac()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 332
    const/4 v2, 0x1

    .line 333
    goto/16 :goto_2

    .line 344
    .end local v4    # "cutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .restart local v9    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_7
    const-string v17, "isNew"

    const-string v18, "false"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 349
    :cond_8
    const-string v17, "status"

    const-string v18, "online"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 356
    :cond_9
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 357
    const-string v17, "type"

    const/16 v18, 0x3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 358
    :cond_a
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 359
    const-string v17, "type"

    const/16 v18, 0xe

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 360
    :cond_b
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 361
    const-string v17, "type"

    const/16 v18, 0xf

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 367
    .end local v2    # "b":Z
    .end local v9    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .restart local v3    # "controlModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    .restart local v14    # "shortList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    :cond_c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 378
    .local v11, "model":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v5

    .line 379
    .local v5, "deviceModelin":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    const/4 v15, 0x0

    .line 380
    .local v15, "smodel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_d
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_f

    .line 386
    :goto_6
    if-eqz v15, :cond_1

    invoke-virtual {v15}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getIsOn()Ljava/lang/String;

    move-result-object v17

    const-string v18, "off"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 389
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 390
    .restart local v9    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v17, "title"

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string v17, "controlId"

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getId()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string v17, "devicename"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "("

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 394
    const-string v17, "type"

    const/16 v18, 0x6

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->behindList:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 380
    .end local v9    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_f
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 381
    .local v12, "scModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-virtual {v12}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getRelatedid()I

    move-result v18

    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getId()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 382
    move-object v15, v12

    .line 383
    goto/16 :goto_6

    .line 395
    .end local v12    # "scModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .restart local v9    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_10
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 396
    const-string v17, "type"

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 397
    :cond_11
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 398
    const-string v17, "type"

    const/16 v18, 0xb

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 399
    :cond_12
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 400
    const-string v17, "type"

    const/16 v18, 0xa

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 401
    :cond_13
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v17

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 402
    const-string v17, "type"

    const/16 v18, 0x5

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 403
    :cond_14
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v17

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    .line 404
    const-string v17, "type"

    const/16 v18, 0x7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 405
    :cond_15
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v17

    const/16 v18, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    .line 406
    const-string v17, "type"

    const/16 v18, 0x8

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 407
    :cond_16
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    .line 408
    const-string v17, "type"

    const/16 v18, 0x9

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 409
    :cond_17
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v17

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_18

    .line 410
    const-string v17, "type"

    const/16 v18, 0xc

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 411
    :cond_18
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getType()I

    move-result v17

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 412
    const-string v17, "type"

    const/16 v18, 0xd

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7
.end method

.method public initEvent()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->behindListView:Landroid/widget/ListView;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$3;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 470
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveLayout:Landroid/view/View;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$4;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->expendLayout:Landroid/view/View;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$5;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveListView:Landroid/widget/ListView;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$6;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$6;-><init>(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 515
    return-void
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 996
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 997
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c016a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 998
    new-instance v3, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$13;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$13;-><init>(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1004
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1005
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$14;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$14;-><init>(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1012
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 1013
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const v3, 0x7f02010d

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1014
    new-instance v3, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$15;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$15;-><init>(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1099
    return-void
.end method

.method public loadListData()V
    .locals 15

    .prologue
    const/4 v14, 0x5

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, -0x2

    .line 224
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->getList()V

    .line 225
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->actionType:Ljava/lang/String;

    const-string v7, "edit"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 226
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v7, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "sceneId="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 227
    .local v2, "detailModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneDetailModel;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->updateTaskCount()V

    .line 253
    .end local v2    # "detailModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneDetailModel;>;"
    :cond_0
    new-instance v6, Lcom/kankunit/smartplugcronus/adapter/AddSceneBehindListAdapter;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->behindList:Ljava/util/List;

    invoke-direct {v6, p0, v7}, Lcom/kankunit/smartplugcronus/adapter/AddSceneBehindListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->behindAdapter:Landroid/widget/BaseAdapter;

    .line 254
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->behindListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->behindAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 255
    new-instance v6, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveList:Ljava/util/List;

    invoke-direct {v6, p0, v7}, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveAdapter:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    .line 256
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveAdapter:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    iget v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->rightWidth:I

    invoke-virtual {v6, v7}, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->setImageLayoutWidth(I)V

    .line 257
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveAdapter:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->taskcountTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->setCountTextView(Landroid/widget/TextView;)V

    .line 258
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveAdapter:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 260
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    if-le v3, v14, :cond_6

    .line 306
    return-void

    .line 227
    .end local v3    # "i":I
    .restart local v2    # "detailModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneDetailModel;>;"
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    .line 228
    .local v1, "detailModel":Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 229
    .local v0, "aboveMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "title"

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v7, "type"

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v7

    if-ne v7, v11, :cond_2

    .line 232
    const-string v7, "hour"

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getHour()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v7, "minute"

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getMinute()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v7, "second"

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getSecond()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :goto_2
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 235
    :cond_2
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v7

    if-eq v7, v12, :cond_3

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v7

    if-eq v7, v13, :cond_3

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v7

    const/16 v8, 0xe

    if-eq v7, v8, :cond_3

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v7

    const/16 v8, 0xf

    if-ne v7, v8, :cond_4

    .line 236
    :cond_3
    const-string v7, "mac"

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getMac()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v7, "isNew"

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getIsNew()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v7, "status"

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getStatus()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v7, "deviceName"

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v7, "action"

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getAction()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 242
    :cond_4
    const-string v7, "controlId"

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getControlId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getType()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_5

    .line 244
    const-string v7, "groupString"

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getGroupString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 246
    :cond_5
    const-string v7, "recordIdx"

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->getRecordIdx()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 261
    .end local v0    # "aboveMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "detailModel":Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    .end local v2    # "detailModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneDetailModel;>;"
    .restart local v3    # "i":I
    :cond_6
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 262
    .local v4, "imageView":Landroid/widget/ImageView;
    if-ne v3, v11, :cond_8

    .line 263
    const v6, 0x7f02007c

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 273
    :cond_7
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 274
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 275
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v6, 0x1e

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 277
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    new-instance v6, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$1;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->imageScrollView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 260
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 264
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    if-ne v3, v12, :cond_9

    .line 265
    const v6, 0x7f020377

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 266
    :cond_9
    if-ne v3, v13, :cond_a

    .line 267
    const v6, 0x7f02037b

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 268
    :cond_a
    const/4 v6, 0x4

    if-ne v3, v6, :cond_b

    .line 269
    const v6, 0x7f02037f

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 270
    :cond_b
    if-ne v3, v14, :cond_7

    .line 271
    const v6, 0x7f020383

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x6

    .line 812
    invoke-super {p0, p1, p2, p3}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 813
    if-ne p1, v9, :cond_1

    const/4 v7, -0x1

    if-ne p2, v7, :cond_1

    .line 814
    if-eqz p3, :cond_1

    .line 815
    const-string v7, "operationType"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 816
    .local v3, "operationType":Ljava/lang/String;
    const-string v7, "title"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 817
    .local v5, "title":Ljava/lang/String;
    const-string v7, "type"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 818
    .local v6, "type":I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 819
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "title"

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    const-string v7, "type"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    if-ne v6, v9, :cond_4

    .line 822
    const-string v7, "hour"

    const-string v8, "hour"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    const-string v7, "minute"

    const-string v8, "minute"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    const-string v7, "second"

    const-string v8, "second"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    :goto_0
    const-string v7, "add"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 841
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveList:Ljava/util/List;

    iget v8, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->currentIndex:I

    invoke-interface {v7, v8, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 846
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveAdapter:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->notifyDataSetChanged()V

    .line 847
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->taskcountTextView:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 850
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "operationType":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "type":I
    :cond_1
    if-eq p1, v10, :cond_2

    const/4 v7, 0x4

    if-eq p1, v7, :cond_2

    const/16 v7, 0xb

    if-eq p1, v7, :cond_2

    const/16 v7, 0xa

    if-eq p1, v7, :cond_2

    const/4 v7, 0x5

    if-eq p1, v7, :cond_2

    const/4 v7, 0x7

    if-eq p1, v7, :cond_2

    const/16 v7, 0x8

    if-eq p1, v7, :cond_2

    const/16 v7, 0x9

    if-eq p1, v7, :cond_2

    const/16 v7, 0xc

    if-eq p1, v7, :cond_2

    const/16 v7, 0xd

    if-ne p1, v7, :cond_3

    .line 851
    :cond_2
    if-nez p3, :cond_9

    .line 875
    :cond_3
    :goto_2
    return-void

    .line 825
    .restart local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "operationType":Ljava/lang/String;
    .restart local v5    # "title":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_4
    const/4 v7, 0x2

    if-eq v6, v7, :cond_5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_5

    const/16 v7, 0xe

    if-eq v6, v7, :cond_5

    const/16 v7, 0xf

    if-ne v6, v7, :cond_6

    .line 826
    :cond_5
    const-string v7, "mac"

    const-string v8, "mac"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    const-string v7, "isNew"

    const-string v8, "isNew"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    const-string v7, "status"

    const-string v8, "status"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    const-string v7, "deviceName"

    const-string v8, "deviceName"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    const-string v7, "action"

    const-string v8, "action"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 832
    :cond_6
    const-string v7, "controlId"

    const-string v8, "controlId"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    if-ne v6, v10, :cond_7

    .line 834
    const-string v7, "groupString"

    const-string v8, "groupString"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 836
    :cond_7
    const-string v7, "recordIdx"

    const-string v8, "recordIdx"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 842
    :cond_8
    const-string v7, "edit"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 844
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveList:Ljava/util/List;

    iget v8, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->currentIndex:I

    invoke-interface {v7, v8, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 854
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "operationType":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "type":I
    :cond_9
    const-string v7, "title"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 855
    .restart local v5    # "title":Ljava/lang/String;
    const-string v7, "controlId"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, "controlId":Ljava/lang/String;
    const-string v7, "groupString"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 857
    .local v1, "groupString":Ljava/lang/String;
    const-string v7, "recordIdx"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 858
    .local v4, "recordIdx":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 859
    .restart local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "title"

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    const-string v7, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    const-string v7, "controlId"

    invoke-interface {v2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    if-ne p1, v10, :cond_a

    .line 863
    const-string v7, "groupString"

    invoke-interface {v2, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    :goto_3
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->operationType:Ljava/lang/String;

    const-string v8, "add"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 868
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 872
    :goto_4
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveAdapter:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->notifyDataSetChanged()V

    .line 873
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->taskcountTextView:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 865
    :cond_a
    const-string v7, "recordIdx"

    invoke-interface {v2, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 870
    :cond_b
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveList:Ljava/util/List;

    iget v8, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->operationIndex:I

    invoke-interface {v7, v8, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const v9, 0x7f0c01d5

    const v12, 0x7f02007b

    const/16 v11, 0xb

    const/4 v10, 0x1

    .line 113
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "actionType"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "actionType"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->actionType:Ljava/lang/String;

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "sceneId"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "sceneId"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneId:Ljava/lang/String;

    .line 126
    :cond_1
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v7

    iput-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 128
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v8, Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual {v7, v8}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    .line 129
    .local v5, "sceneModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneModel;>;"
    invoke-static {}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->getAndroidSDKVersion()I

    move-result v7

    if-lt v7, v11, :cond_2

    .line 130
    const v7, 0x7f030025

    invoke-virtual {p0, v7}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->setContentView(I)V

    .line 134
    :goto_0
    const v7, 0x7f0700a8

    invoke-virtual {p0, v7}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveLayout:Landroid/view/View;

    .line 135
    const v7, 0x7f0700a6

    invoke-virtual {p0, v7}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->behindLayout:Landroid/view/View;

    .line 136
    const v7, 0x7f0700b1

    invoke-virtual {p0, v7}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->expendLayout:Landroid/view/View;

    .line 137
    const v7, 0x7f0700a7

    invoke-virtual {p0, v7}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->behindListView:Landroid/widget/ListView;

    .line 138
    const v7, 0x7f0700b0

    invoke-virtual {p0, v7}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveListView:Landroid/widget/ListView;

    .line 139
    const v7, 0x7f0700ac

    invoke-virtual {p0, v7}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->imageScrollView:Landroid/widget/LinearLayout;

    .line 140
    const v7, 0x7f0700ae

    invoke-virtual {p0, v7}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneName:Landroid/widget/TextView;

    .line 141
    const v7, 0x7f0700aa

    invoke-virtual {p0, v7}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneImageView:Landroid/widget/ImageView;

    .line 142
    if-nez v5, :cond_3

    .line 144
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :goto_1
    const v7, 0x7f0700af

    invoke-virtual {p0, v7}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->taskcountTextView:Landroid/widget/TextView;

    .line 172
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->expendLayout:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 175
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v6

    .line 176
    .local v6, "width":I
    int-to-double v7, v6

    iget-wide v9, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->b2:D

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveLeft:I

    .line 177
    int-to-double v7, v6

    iget-wide v9, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->b3:D

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->expendLayoutWidth:I

    .line 178
    iget v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveLeft:I

    iget v8, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->expendLayoutWidth:I

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->mlength:I

    .line 181
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->expendLayout:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v8, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->expendLayoutWidth:I

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 182
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveLayout:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v6, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 183
    invoke-static {}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->getAndroidSDKVersion()I

    move-result v7

    if-lt v7, v11, :cond_a

    .line 184
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveLayout:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 185
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveLeft:I

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 186
    iget v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->expendLayoutWidth:I

    sub-int v7, v6, v7

    iput v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveWidth:I

    .line 187
    iget v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveWidth:I

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 188
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveLayout:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :goto_2
    int-to-double v7, v6

    iget-wide v9, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->b1:D

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->rightWidth:I

    .line 198
    const v7, 0x7f0700a9

    invoke-virtual {p0, v7}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 199
    .local v4, "sceneImageLayout":Landroid/view/View;
    const v7, 0x7f0700ad

    invoke-virtual {p0, v7}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 200
    .local v3, "r1LayoutView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v8, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->rightWidth:I

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 201
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v8, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->rightWidth:I

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 205
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->initEvent()V

    .line 207
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->loadListData()V

    .line 209
    return-void

    .line 132
    .end local v3    # "r1LayoutView":Landroid/view/View;
    .end local v4    # "sceneImageLayout":Landroid/view/View;
    .end local v6    # "width":I
    :cond_2
    const v7, 0x7f030029

    invoke-virtual {p0, v7}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 146
    :cond_3
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->actionType:Ljava/lang/String;

    const-string v8, "edit"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 147
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->db:Lnet/tsz/afinal/FinalDb;

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneId:Ljava/lang/String;

    const-class v9, Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual {v7, v8, v9}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/SceneModel;

    .line 148
    .local v1, "model":Lcom/kankunit/smartplugcronus/model/SceneModel;
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getSceneName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Edit scene-"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getSceneName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getSceneImage()I

    move-result v0

    .line 151
    .local v0, "index":I
    if-ne v0, v10, :cond_4

    .line 152
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 164
    :goto_3
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneImageView:Landroid/widget/ImageView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 153
    :cond_4
    const/4 v7, 0x2

    if-ne v0, v7, :cond_5

    .line 154
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneImageView:Landroid/widget/ImageView;

    const v8, 0x7f020376

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 155
    :cond_5
    const/4 v7, 0x3

    if-ne v0, v7, :cond_6

    .line 156
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneImageView:Landroid/widget/ImageView;

    const v8, 0x7f02037a

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 157
    :cond_6
    const/4 v7, 0x4

    if-ne v0, v7, :cond_7

    .line 158
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneImageView:Landroid/widget/ImageView;

    const v8, 0x7f02037e

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 159
    :cond_7
    const/4 v7, 0x5

    if-ne v0, v7, :cond_8

    .line 160
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneImageView:Landroid/widget/ImageView;

    const v8, 0x7f020382

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 162
    :cond_8
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 167
    .end local v0    # "index":I
    .end local v1    # "model":Lcom/kankunit/smartplugcronus/model/SceneModel;
    :cond_9
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 190
    .restart local v6    # "width":I
    :cond_a
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveLayout:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 191
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveLeft:I

    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 192
    iget v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->expendLayoutWidth:I

    sub-int v7, v6, v7

    iput v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveWidth:I

    .line 193
    iget v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveWidth:I

    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 194
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveLayout:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 881
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 882
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f100007

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 884
    const v1, 0x7f0703d3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 885
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 886
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 17
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 894
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v13

    const v14, 0x102002c

    if-ne v13, v14, :cond_0

    .line 895
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->finish()V

    .line 896
    invoke-super/range {p0 .. p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v13

    .line 980
    :goto_0
    return v13

    .line 899
    :cond_0
    const/4 v2, 0x0

    .line 900
    .local v2, "count":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_2

    .line 906
    if-nez v2, :cond_3

    .line 907
    const-string v13, "Scene no task, can not be saved"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 909
    const/4 v13, 0x0

    goto :goto_0

    .line 900
    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 901
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v14, "type"

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 902
    .local v12, "type":I
    const/4 v14, 0x1

    if-eq v12, v14, :cond_1

    .line 903
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 911
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "type":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v14, Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual {v13, v14}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v10

    .line 912
    .local v10, "sceneList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneModel;>;"
    const/4 v7, 0x0

    .line 913
    .local v7, "max":I
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_7

    .line 918
    new-instance v9, Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-direct {v9}, Lcom/kankunit/smartplugcronus/model/SceneModel;-><init>()V

    .line 919
    .local v9, "scene":Lcom/kankunit/smartplugcronus/model/SceneModel;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneImageView:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 920
    .local v1, "contentD":Ljava/lang/CharSequence;
    if-eqz v1, :cond_5

    const-string v13, ""

    invoke-virtual {v1, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 921
    :cond_5
    const-string v1, "1"

    .line 923
    :cond_6
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 925
    .local v4, "imageIndex":I
    invoke-virtual {v9, v4}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setSceneImage(I)V

    .line 926
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneName:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setSceneName(Ljava/lang/String;)V

    .line 927
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setStatus(I)V

    .line 928
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    invoke-virtual {v9, v13, v14}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setAddtime(J)V

    .line 929
    add-int/lit8 v13, v7, 0x1

    invoke-virtual {v9, v13}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setOrderNo(I)V

    .line 930
    invoke-virtual {v9, v2}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setCount(I)V

    .line 931
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->actionType:Ljava/lang/String;

    const-string v14, "edit"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 932
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneId:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setId(I)V

    .line 933
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->db:Lnet/tsz/afinal/FinalDb;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneId:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-class v15, Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual {v13, v14, v15}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kankunit/smartplugcronus/model/SceneModel;

    .line 934
    .local v8, "s":Lcom/kankunit/smartplugcronus/model/SceneModel;
    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getOrderNo()I

    move-result v13

    invoke-virtual {v9, v13}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setOrderNo(I)V

    .line 935
    invoke-virtual {v9, v4}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setSceneImage(I)V

    .line 936
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v13, v9}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 937
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v14, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, " sceneid= "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneId:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lnet/tsz/afinal/FinalDb;->deleteByWhere(Ljava/lang/Class;Ljava/lang/String;)V

    .line 941
    .end local v8    # "s":Lcom/kankunit/smartplugcronus/model/SceneModel;
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v14, Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual {v13, v14}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v10

    .line 942
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "scene":Lcom/kankunit/smartplugcronus/model/SceneModel;
    check-cast v9, Lcom/kankunit/smartplugcronus/model/SceneModel;

    .line 944
    .restart local v9    # "scene":Lcom/kankunit/smartplugcronus/model/SceneModel;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_9

    .line 975
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 977
    .local v5, "intent":Landroid/content/Intent;
    const/4 v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v5}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->setResult(ILandroid/content/Intent;)V

    .line 978
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->finish()V

    .line 980
    invoke-super/range {p0 .. p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v13

    goto/16 :goto_0

    .line 913
    .end local v1    # "contentD":Ljava/lang/CharSequence;
    .end local v4    # "imageIndex":I
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v9    # "scene":Lcom/kankunit/smartplugcronus/model/SceneModel;
    :cond_7
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kankunit/smartplugcronus/model/SceneModel;

    .line 914
    .local v11, "sceneModel":Lcom/kankunit/smartplugcronus/model/SceneModel;
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getOrderNo()I

    move-result v14

    if-le v14, v7, :cond_4

    .line 915
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getOrderNo()I

    move-result v7

    goto/16 :goto_2

    .line 939
    .end local v11    # "sceneModel":Lcom/kankunit/smartplugcronus/model/SceneModel;
    .restart local v1    # "contentD":Ljava/lang/CharSequence;
    .restart local v4    # "imageIndex":I
    .restart local v9    # "scene":Lcom/kankunit/smartplugcronus/model/SceneModel;
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v13, v9}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    goto :goto_3

    .line 944
    :cond_9
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 945
    .restart local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    invoke-direct {v3}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;-><init>()V

    .line 946
    .local v3, "detailModel":Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    const-string v14, "title"

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setTitle(Ljava/lang/String;)V

    .line 947
    const-string v14, "type"

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 948
    .restart local v12    # "type":I
    invoke-virtual {v3, v12}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setType(I)V

    .line 949
    const/4 v14, 0x1

    if-ne v12, v14, :cond_a

    .line 950
    const-string v14, "hour"

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v3, v14}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setHour(I)V

    .line 951
    const-string v14, "minute"

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v3, v14}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setMinute(I)V

    .line 952
    const-string v14, "second"

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v3, v14}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setSecond(I)V

    .line 968
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->actionType:Ljava/lang/String;

    const-string v15, "edit"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 969
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneId:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v3, v14}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setSceneId(I)V

    .line 973
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->db:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v14, v3}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 953
    :cond_a
    const/4 v14, 0x2

    if-eq v12, v14, :cond_b

    const/4 v14, 0x3

    if-eq v12, v14, :cond_b

    const/16 v14, 0xe

    if-eq v12, v14, :cond_b

    const/16 v14, 0xf

    if-ne v12, v14, :cond_c

    .line 954
    :cond_b
    const-string v14, "mac"

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setMac(Ljava/lang/String;)V

    .line 955
    const-string v14, "isNew"

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setIsNew(Ljava/lang/String;)V

    .line 956
    const-string v14, "status"

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setStatus(Ljava/lang/String;)V

    .line 957
    const-string v14, "deviceName"

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setDeviceName(Ljava/lang/String;)V

    .line 958
    const-string v14, "action"

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v3, v14}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setAction(I)V

    .line 959
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setDetailStatus(I)V

    goto :goto_5

    .line 961
    :cond_c
    const-string v14, "controlId"

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v3, v14}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setControlId(I)V

    .line 962
    const/4 v14, 0x6

    if-ne v12, v14, :cond_d

    .line 963
    const-string v14, "groupString"

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setGroupString(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 965
    :cond_d
    const-string v14, "recordIdx"

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setRecordIdx(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 971
    :cond_e
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getId()I

    move-result v14

    invoke-virtual {v3, v14}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setSceneId(I)V

    goto/16 :goto_6
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 216
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 217
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 218
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 212
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 213
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 214
    return-void
.end method

.method public updateTaskCount()V
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->taskcountTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    return-void
.end method
