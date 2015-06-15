.class public Lcom/kankunit/smartplugcronus/view/HumitureActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "HumitureActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# instance fields
.field private handler:Landroid/os/Handler;

.field private hongmi_header_title:Landroid/widget/TextView;

.field private humiture_hum_layout:Landroid/widget/RelativeLayout;

.field private humiture_humidity:Landroid/widget/TextView;

.field private humiture_lum:Landroid/widget/TextView;

.field private humiture_lum_layout:Landroid/widget/RelativeLayout;

.field private humiture_temp:Landroid/widget/TextView;

.field private humiture_temp_layout:Landroid/widget/RelativeLayout;

.field private isDirect:Z

.field private isOk:Z

.field private mac:Ljava/lang/String;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field private nowHum:Ljava/lang/String;

.field private nowLum:Ljava/lang/String;

.field private nowTemp:Ljava/lang/String;

.field private pwd:Ljava/lang/String;

.field private shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

.field private task:Ljava/util/TimerTask;

.field private final timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->isOk:Z

    .line 68
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->timer:Ljava/util/Timer;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/HumitureActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/HumitureActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->mac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/HumitureActivity;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    return-object v0
.end method

.method private doReceviMsg(Ljava/lang/String;)V
    .locals 13
    .param p1, "bsgMsg"    # Ljava/lang/String;

    .prologue
    const v12, 0x7f09002e

    const v11, 0x7f09002d

    const/4 v8, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 314
    const-string v6, "uack"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "lum"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 315
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v6, :cond_0

    .line 316
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 318
    :cond_0
    const-string v6, "%"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "backAll":[Ljava/lang/String;
    const/4 v6, 0x3

    aget-object v6, v0, v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "datas":[Ljava/lang/String;
    aget-object v6, v1, v8

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowTemp:Ljava/lang/String;

    .line 321
    const/4 v6, 0x6

    aget-object v6, v1, v6

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowHum:Ljava/lang/String;

    .line 322
    const/16 v6, 0x8

    aget-object v6, v1, v6

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowLum:Ljava/lang/String;

    .line 323
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowLum:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-le v6, v8, :cond_4

    const-string v6, "4"

    :goto_0
    iput-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowLum:Ljava/lang/String;

    .line 324
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowTemp:Ljava/lang/String;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_5

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowTemp:Ljava/lang/String;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 325
    .local v5, "templength":I
    :goto_1
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowHum:Ljava/lang/String;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_6

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowHum:Ljava/lang/String;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 326
    .local v2, "humilength":I
    :goto_2
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowTemp:Ljava/lang/String;

    invoke-virtual {v6, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowTemp:Ljava/lang/String;

    .line 327
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowTemp:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x1d

    if-gt v6, v7, :cond_1

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowTemp:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_7

    .line 328
    :cond_1
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->humiture_temp:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 332
    :goto_3
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowHum:Ljava/lang/String;

    invoke-virtual {v6, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowHum:Ljava/lang/String;

    .line 333
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowHum:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x4f

    if-gt v6, v7, :cond_2

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowHum:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x15

    if-ge v6, v7, :cond_8

    .line 334
    :cond_2
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->humiture_humidity:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    :goto_4
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->humiture_temp:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowTemp:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->humiture_humidity:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowHum:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    const/4 v3, 0x0

    .line 341
    .local v3, "lum_ico":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 342
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowLum:Ljava/lang/String;

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 343
    const v6, 0x7f0201d9

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 344
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->humiture_lum:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0207

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    :goto_5
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v7

    invoke-virtual {v3, v9, v9, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 366
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->humiture_lum:Landroid/widget/TextView;

    invoke-virtual {v6, v10, v10, v10, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 367
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->isOk:Z

    .line 369
    .end local v0    # "backAll":[Ljava/lang/String;
    .end local v1    # "datas":[Ljava/lang/String;
    .end local v2    # "humilength":I
    .end local v3    # "lum_ico":Landroid/graphics/drawable/Drawable;
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "templength":I
    :cond_3
    return-void

    .line 323
    .restart local v0    # "backAll":[Ljava/lang/String;
    .restart local v1    # "datas":[Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowLum:Ljava/lang/String;

    goto/16 :goto_0

    .line 324
    :cond_5
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowHum:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    goto/16 :goto_1

    .line 325
    .restart local v5    # "templength":I
    :cond_6
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowHum:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    goto/16 :goto_2

    .line 330
    .restart local v2    # "humilength":I
    :cond_7
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->humiture_temp:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 336
    :cond_8
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->humiture_humidity:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 346
    .restart local v3    # "lum_ico":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "res":Landroid/content/res/Resources;
    :cond_9
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowLum:Ljava/lang/String;

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 347
    const v6, 0x7f0201da

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 348
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->humiture_lum:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0208

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 350
    :cond_a
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowLum:Ljava/lang/String;

    const-string v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 351
    const v6, 0x7f0201db

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 352
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->humiture_lum:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0209

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 354
    :cond_b
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowLum:Ljava/lang/String;

    const-string v7, "3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 355
    const v6, 0x7f0201dc

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 356
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->humiture_lum:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c020a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 358
    :cond_c
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowLum:Ljava/lang/String;

    const-string v7, "4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 359
    const v6, 0x7f0201dd

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 360
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->humiture_lum:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c020b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 362
    :cond_d
    const v6, 0x7f0201d8

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_5
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 166
    const v0, 0x7f07022f

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->humiture_temp:Landroid/widget/TextView;

    .line 167
    const v0, 0x7f070231

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->humiture_humidity:Landroid/widget/TextView;

    .line 168
    const v0, 0x7f070234

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->humiture_lum:Landroid/widget/TextView;

    .line 169
    const v0, 0x7f07022c

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->humiture_temp_layout:Landroid/widget/RelativeLayout;

    .line 170
    const v0, 0x7f070230

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->humiture_hum_layout:Landroid/widget/RelativeLayout;

    .line 171
    const v0, 0x7f070233

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->humiture_lum_layout:Landroid/widget/RelativeLayout;

    .line 172
    return-void
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 176
    const-string v1, "msgBody"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->doReceviMsg(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0238

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 306
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 240
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    const/16 v6, 0x143

    if-ne v5, v6, :cond_0

    .line 241
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 242
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->mac:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "kankun-smartplug.com"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, "userJID":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .line 244
    .local v19, "phoneMac":Ljava/lang/String;
    const-string v5, ":"

    const-string v6, "-"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    .line 245
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wan_phone%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%check#3032#status%uart"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "cmd":Ljava/lang/String;
    new-instance v1, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, ""

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object/from16 v4, p0

    invoke-direct/range {v1 .. v9}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 247
    .local v1, "s2t":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    .line 255
    .end local v1    # "s2t":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v3    # "userJID":Ljava/lang/String;
    .end local v19    # "phoneMac":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 261
    .local v14, "bsgMsg":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/16 v6, 0x6f

    if-ne v5, v6, :cond_2

    const-string v5, "uack"

    invoke-virtual {v14, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "lum"

    invoke-virtual {v14, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 262
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v5, :cond_1

    .line 263
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 265
    :cond_1
    const-string v5, "%"

    invoke-virtual {v14, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 266
    .local v13, "backAll":[Ljava/lang/String;
    const/4 v5, 0x3

    aget-object v5, v13, v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 267
    .local v15, "datas":[Ljava/lang/String;
    const/4 v5, 0x4

    aget-object v5, v15, v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowTemp:Ljava/lang/String;

    .line 268
    const/4 v5, 0x6

    aget-object v5, v15, v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowHum:Ljava/lang/String;

    .line 269
    const/16 v5, 0x8

    aget-object v5, v15, v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowLum:Ljava/lang/String;

    .line 270
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowTemp:Ljava/lang/String;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowTemp:Ljava/lang/String;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v21

    .line 271
    .local v21, "templength":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowHum:Ljava/lang/String;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowHum:Ljava/lang/String;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    .line 272
    .local v16, "humilength":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowTemp:Ljava/lang/String;

    const/4 v6, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowTemp:Ljava/lang/String;

    .line 273
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowHum:Ljava/lang/String;

    const/4 v6, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowHum:Ljava/lang/String;

    .line 274
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->humiture_temp:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowTemp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->humiture_humidity:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowHum:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    const/16 v17, 0x0

    .line 277
    .local v17, "lum_ico":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 278
    .local v20, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowLum:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_6

    const-string v5, "4"

    :goto_3
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowLum:Ljava/lang/String;

    .line 279
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowLum:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 280
    const v5, 0x7f0201d9

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 297
    :goto_4
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v7

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 298
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->humiture_lum:Landroid/widget/TextView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v5, v6, v7, v8, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 299
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->isOk:Z

    .line 301
    .end local v13    # "backAll":[Ljava/lang/String;
    .end local v15    # "datas":[Ljava/lang/String;
    .end local v16    # "humilength":I
    .end local v17    # "lum_ico":Landroid/graphics/drawable/Drawable;
    .end local v20    # "res":Landroid/content/res/Resources;
    .end local v21    # "templength":I
    :cond_2
    const/4 v5, 0x0

    return v5

    .line 249
    .end local v14    # "bsgMsg":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wan_phone%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->mac:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%check#3032#status%uart"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 250
    .restart local v2    # "cmd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->mac:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v18

    .line 251
    .local v18, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    new-instance v4, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    const-string v6, ""

    const-string v7, ""

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->handler:Landroid/os/Handler;

    const v9, 0xb156

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->isDirect:Z

    invoke-virtual/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIp()Ljava/lang/String;

    move-result-object v12

    move-object v5, v2

    move-object/from16 v11, p0

    invoke-direct/range {v4 .. v12}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;Ljava/lang/String;)V

    .line 252
    .local v4, "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    goto/16 :goto_0

    .line 270
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v4    # "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    .end local v18    # "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .restart local v13    # "backAll":[Ljava/lang/String;
    .restart local v14    # "bsgMsg":Ljava/lang/String;
    .restart local v15    # "datas":[Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowHum:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v21

    goto/16 :goto_1

    .line 271
    .restart local v21    # "templength":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowHum:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v16

    goto/16 :goto_2

    .line 278
    .restart local v16    # "humilength":I
    .restart local v17    # "lum_ico":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "res":Landroid/content/res/Resources;
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowLum:Ljava/lang/String;

    goto/16 :goto_3

    .line 282
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowLum:Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 283
    const v5, 0x7f0201da

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 284
    goto/16 :goto_4

    .line 285
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowLum:Ljava/lang/String;

    const-string v6, "2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 286
    const v5, 0x7f0201db

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 287
    goto/16 :goto_4

    .line 288
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowLum:Ljava/lang/String;

    const-string v6, "3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 289
    const v5, 0x7f0201dc

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 290
    goto/16 :goto_4

    .line 291
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowLum:Ljava/lang/String;

    const-string v6, "4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 292
    const v5, 0x7f0201dd

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 293
    goto/16 :goto_4

    .line 294
    :cond_b
    const v5, 0x7f0201d8

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    goto/16 :goto_4
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 380
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->mac:Ljava/lang/String;

    const-string v4, "tp_module"

    invoke-static {p0, v3, v4}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutModelByMacAndPluginType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v3

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 381
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01f9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 383
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 385
    :cond_0
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->hongmi_header_title:Landroid/widget/TextView;

    .line 386
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->hongmi_header_title:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->hongmi_header_title:Landroid/widget/TextView;

    new-instance v4, Lcom/kankunit/smartplugcronus/view/HumitureActivity$3;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/HumitureActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 394
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/HumitureActivity$4;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/HumitureActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 401
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 402
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const v3, 0x7f02046c

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 403
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 404
    new-instance v3, Lcom/kankunit/smartplugcronus/view/HumitureActivity$5;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/HumitureActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    iget-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->isOk:Z

    if-nez v2, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0249

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0202

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p0}, Lcom/kankunit/smartplugcronus/util/AlertUtil;->nomalAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 230
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v2

    if-nez v2, :cond_1

    .line 188
    const-string v2, "The current network is unavailable, please check."

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 191
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 192
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 193
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 195
    :sswitch_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 196
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v2, "mac"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->mac:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v2, "pwd"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v2, "nowTemp"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowTemp:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v2, "isDirect"

    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->isDirect:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 200
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 201
    .restart local v1    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/kankunit/smartplugcronus/view/HumitureTempActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 202
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 206
    :sswitch_1
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 207
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v2, "mac"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->mac:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v2, "pwd"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v2, "nowHum"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowHum:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v2, "isDirect"

    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->isDirect:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 211
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 212
    .restart local v1    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/kankunit/smartplugcronus/view/HumitureHumActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 213
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 217
    :sswitch_2
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 218
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v2, "mac"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->mac:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v2, "pwd"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v2, "nowLum"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->nowLum:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v2, "isDirect"

    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->isDirect:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 222
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 223
    .restart local v1    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/kankunit/smartplugcronus/view/HumitureLumActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 224
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 225
    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 193
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f07022c -> :sswitch_0
        0x7f070230 -> :sswitch_1
        0x7f070233 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 124
    .local v6, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 125
    const-string v0, "mac"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->mac:Ljava/lang/String;

    .line 126
    const-string v0, "pwd"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->pwd:Ljava/lang/String;

    .line 127
    const-string v0, "isDirect"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->isDirect:Z

    .line 128
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const v0, 0x7f030083

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->setContentView(I)V

    .line 136
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->handler:Landroid/os/Handler;

    .line 137
    new-instance v0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v0, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 138
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->initView()V

    .line 139
    const v0, 0x7f07022b

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 140
    .local v7, "topbar":Landroid/widget/ImageView;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 141
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    :goto_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0249

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "loading..."

    const/16 v2, 0x1f40

    new-instance v3, Lcom/kankunit/smartplugcronus/view/HumitureActivity$1;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/HumitureActivity;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 151
    new-instance v0, Lcom/kankunit/smartplugcronus/view/HumitureActivity$2;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/HumitureActivity;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->task:Ljava/util/TimerTask;

    .line 159
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->task:Ljava/util/TimerTask;

    const-wide/16 v2, 0xa

    const-wide/16 v4, 0xbb8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 160
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->humiture_temp_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->humiture_hum_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->humiture_lum_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 79
    const-string v2, "Modify the name"

    invoke-interface {p1, v2}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    const v3, 0x7f02046c

    invoke-interface {v2, v3}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v0

    .line 80
    .local v0, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    .line 81
    .local v1, "subMenuItem":Landroid/view/MenuItem;
    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 82
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 233
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->finish()V

    .line 236
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->finish()V

    .line 119
    :goto_0
    return v4

    .line 109
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "title"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->mac:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v2, "type"

    const-string v3, "tp_plugs"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 113
    const-string v2, "name"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v1, "intent":Landroid/content/Intent;
    const-class v2, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 117
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 100
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 101
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->mac:Ljava/lang/String;

    const-string v1, "tp_module"

    invoke-static {p0, v0, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutModelByMacAndPluginType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 88
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->hongmi_header_title:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->hongmi_header_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 96
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 97
    return-void

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 374
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onStop()V

    .line 375
    return-void
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 2
    .param p1, "backMsg"    # Ljava/lang/Object;

    .prologue
    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->doReceviMsg(Ljava/lang/String;)V

    .line 311
    return-void
.end method
