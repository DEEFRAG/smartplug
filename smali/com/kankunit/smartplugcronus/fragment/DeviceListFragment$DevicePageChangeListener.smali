.class public Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;
.super Ljava/lang/Object;
.source "DeviceListFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DevicePageChangeListener"
.end annotation


# instance fields
.field one:I

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

.field two:I


# direct methods
.method public constructor <init>(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)V
    .locals 2

    .prologue
    .line 195
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->offset:I
    invoke-static {p1}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->bmpW:I
    invoke-static {p1}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->one:I

    .line 197
    iget v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->one:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->two:I

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;)Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    return-object v0
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 199
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 203
    return-void
.end method

.method public onPageSelected(I)V
    .locals 16
    .param p1, "arg0"    # I

    .prologue
    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    # invokes: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->resetImage()V
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)V

    .line 206
    const/4 v12, 0x0

    .local v12, "b":I
    const/4 v13, 0x0

    .line 207
    .local v13, "e":I
    if-nez p1, :cond_0

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->middle:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->access$4(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)I

    move-result v12

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->begin:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)I

    move-result v13

    .line 211
    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->currIndex:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)I

    move-result v2

    if-nez v2, :cond_1

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->begin:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)I

    move-result v12

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->middle:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->access$4(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)I

    move-result v13

    .line 216
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->currIndex:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->end:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)I

    move-result v12

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->middle:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->access$4(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)I

    move-result v13

    .line 221
    :cond_2
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->middle:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->access$4(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)I

    move-result v12

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->end:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)I

    move-result v13

    .line 225
    :cond_3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "b :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 226
    new-instance v11, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v12

    int-to-float v3, v13

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v11, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 227
    .local v11, "animation":Landroid/view/animation/Animation;
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 228
    .local v10, "alphaAnimation":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 229
    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    .line 228
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 230
    .local v1, "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    move/from16 v0, p1

    invoke-static {v2, v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->access$8(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;I)V

    .line 231
    move/from16 v14, p1

    .line 232
    .local v14, "index":I
    new-instance v2, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v14}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;I)V

    invoke-virtual {v11, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 263
    new-instance v15, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v15, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 264
    .local v15, "set":Landroid/view/animation/AnimationSet;
    const-wide/16 v2, 0x12c

    invoke-virtual {v15, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 265
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 266
    invoke-virtual {v15, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 267
    invoke-virtual {v15, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 268
    invoke-virtual {v15, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->imageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->access$16(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 272
    return-void
.end method
