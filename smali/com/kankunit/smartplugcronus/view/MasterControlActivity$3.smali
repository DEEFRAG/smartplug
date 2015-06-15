.class Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;
.super Ljava/lang/Object;
.source "MasterControlActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->createIcon(IILjava/lang/String;ILjava/lang/String;IZ)Lcom/kankunit/smartplugcronus/customview/ParamButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    .line 353
    .local v18, "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    .line 354
    .local v22, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "createNewDragImage----x:"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "--y:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 357
    .local v15, "realFl":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v15, :cond_0

    .line 358
    iget v0, v15, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v23, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v18, v0

    .line 359
    iget v0, v15, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v23, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v22, v0

    .line 362
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "realX:"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "--realY:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 363
    const/4 v5, 0x1

    .line 364
    .local v5, "isShowIcon":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v23

    if-eqz v23, :cond_1

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 367
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 368
    .local v3, "fl":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v3, :cond_1

    .line 369
    iget v0, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v23, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a0103

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    sub-int v23, v23, v24

    move/from16 v0, v23

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 370
    iget v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v23, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a0103

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    sub-int v23, v23, v24

    move/from16 v0, v23

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 371
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    .end local v3    # "fl":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    :goto_0
    const/16 v23, 0x1

    return v23

    .line 373
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 374
    const/16 v16, 0x0

    .line 375
    .local v16, "stopX":I
    const/16 v17, 0x0

    .line 377
    .local v17, "stopY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    const/high16 v24, 0x42600000    # 56.0f

    invoke-static/range {v23 .. v24}, Lcom/kankunit/smartplugcronus/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpg-float v23, v22, v23

    if-gez v23, :cond_6

    .line 378
    const/4 v5, 0x0

    .line 382
    :goto_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$7(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-lt v4, v0, :cond_7

    .line 438
    if-eqz v5, :cond_4

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$7(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Ljava/util/List;

    move-result-object v23

    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map;

    const-string v24, "x"

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v16

    move/from16 v1, v23

    if-lt v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$7(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v24, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;
    invoke-static/range {v24 .. v24}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$7(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map;

    const-string v24, "y"

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v17

    move/from16 v1, v23

    if-le v0, v1, :cond_4

    .line 440
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    const-string v24, "aaaOut of Bounds"

    invoke-static/range {v23 .. v24}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 441
    const/4 v5, 0x0

    .line 444
    :cond_4
    if-nez v17, :cond_5

    .line 445
    const/4 v5, 0x0

    .line 447
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "aaastopX---"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "-----aaastopY:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 448
    if-eqz v5, :cond_12

    .line 449
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 450
    .restart local v3    # "fl":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v3, :cond_1

    .line 451
    add-int/lit8 v23, v16, 0x14

    move/from16 v0, v23

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 452
    add-int/lit8 v23, v17, 0x14

    move/from16 v0, v23

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 453
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "btn"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 456
    .local v2, "btnTag":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Drag the button Add btn of tag---"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    # invokes: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->removeOldBtn(Ljava/lang/String;Landroid/view/View;)V
    invoke-static {v0, v2, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$8(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;Ljava/lang/String;Landroid/view/View;)V

    .line 459
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 380
    .end local v2    # "btnTag":Ljava/lang/String;
    .end local v3    # "fl":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "i":I
    :cond_6
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 383
    .restart local v4    # "i":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$7(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 384
    .local v9, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v23, "x"

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 385
    .local v10, "meshX":I
    const-string v23, "y"

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 386
    .local v11, "meshY":I
    if-nez v4, :cond_a

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$7(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Ljava/util/List;

    move-result-object v23

    add-int/lit8 v24, v4, 0x1

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    .line 388
    .local v14, "nextm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v23, "x"

    move-object/from16 v0, v23

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 389
    .local v12, "nextX":I
    const-string v23, "y"

    move-object/from16 v0, v23

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 390
    .local v13, "nextY":I
    int-to-float v0, v10

    move/from16 v23, v0

    cmpg-float v23, v23, v18

    if-gtz v23, :cond_8

    int-to-float v0, v12

    move/from16 v23, v0

    cmpg-float v23, v18, v23

    if-gtz v23, :cond_8

    .line 391
    move/from16 v16, v10

    .line 393
    :cond_8
    int-to-float v0, v11

    move/from16 v23, v0

    cmpg-float v23, v23, v22

    if-gtz v23, :cond_9

    int-to-float v0, v13

    move/from16 v23, v0

    cmpg-float v23, v22, v23

    if-gtz v23, :cond_9

    .line 394
    move/from16 v17, v11

    .line 382
    .end local v12    # "nextX":I
    .end local v13    # "nextY":I
    .end local v14    # "nextm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_9
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 396
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$7(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    if-ne v4, v0, :cond_c

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$7(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 398
    .local v8, "lastm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v23, "x"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 399
    .local v6, "lastX":I
    const-string v23, "y"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 400
    .local v7, "lastY":I
    int-to-float v0, v10

    move/from16 v23, v0

    cmpg-float v23, v23, v18

    if-gtz v23, :cond_b

    int-to-float v0, v6

    move/from16 v23, v0

    cmpl-float v23, v18, v23

    if-ltz v23, :cond_b

    .line 401
    move/from16 v16, v6

    .line 403
    :cond_b
    int-to-float v0, v11

    move/from16 v23, v0

    cmpl-float v23, v23, v22

    if-ltz v23, :cond_9

    int-to-float v0, v7

    move/from16 v23, v0

    cmpl-float v23, v22, v23

    if-ltz v23, :cond_9

    .line 404
    move/from16 v17, v7

    .line 406
    goto :goto_3

    .line 407
    .end local v6    # "lastX":I
    .end local v7    # "lastY":I
    .end local v8    # "lastm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$7(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Ljava/util/List;

    move-result-object v23

    add-int/lit8 v24, v4, 0x1

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    .line 408
    .restart local v14    # "nextm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v23, "x"

    move-object/from16 v0, v23

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 409
    .restart local v12    # "nextX":I
    const-string v23, "y"

    move-object/from16 v0, v23

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 410
    .restart local v13    # "nextY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$7(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Ljava/util/List;

    move-result-object v23

    add-int/lit8 v24, v4, -0x1

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 411
    .restart local v8    # "lastm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v23, "x"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 412
    .restart local v6    # "lastX":I
    const-string v23, "y"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 413
    .restart local v7    # "lastY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a0101

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a0100

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    add-int v19, v23, v24

    .line 414
    .local v19, "x1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a0101

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a0100

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    add-int v20, v23, v24

    .line 415
    .local v20, "x2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a0101

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a0100

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    add-int v21, v23, v24

    .line 420
    .local v21, "x3":I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v23, v23, v18

    if-ltz v23, :cond_10

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v23, v18, v23

    if-ltz v23, :cond_10

    .line 421
    move/from16 v16, v19

    .line 430
    :cond_d
    :goto_4
    int-to-float v0, v11

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a0101

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v24, v24, v22

    cmpl-float v23, v23, v24

    if-ltz v23, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a0101

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v23, v23, v22

    int-to-float v0, v7

    move/from16 v24, v0

    cmpl-float v23, v23, v24

    if-gez v23, :cond_f

    :cond_e
    int-to-float v0, v11

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a0101

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v24, v24, v22

    cmpg-float v23, v23, v24

    if-gtz v23, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a0101

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v23, v23, v22

    int-to-float v0, v13

    move/from16 v24, v0

    cmpg-float v23, v23, v24

    if-gtz v23, :cond_9

    .line 431
    :cond_f
    move/from16 v17, v7

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$7(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    add-int/lit8 v23, v23, -0x3

    move/from16 v0, v23

    if-ne v4, v0, :cond_9

    .line 433
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 422
    :cond_10
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    cmpg-float v23, v23, v18

    if-gtz v23, :cond_11

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    cmpg-float v23, v18, v23

    if-gtz v23, :cond_11

    .line 423
    move/from16 v16, v20

    .line 424
    goto/16 :goto_4

    :cond_11
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v23, v18, v23

    if-ltz v23, :cond_d

    .line 425
    move/from16 v16, v21

    goto/16 :goto_4

    .line 462
    .end local v6    # "lastX":I
    .end local v7    # "lastY":I
    .end local v8    # "lastm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v9    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10    # "meshX":I
    .end local v11    # "meshY":I
    .end local v12    # "nextX":I
    .end local v13    # "nextY":I
    .end local v14    # "nextm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v19    # "x1":I
    .end local v20    # "x2":I
    .end local v21    # "x3":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->dragview:Landroid/widget/FrameLayout;
    invoke-static/range {v23 .. v23}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$9(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/FrameLayout;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    const-string v24, "Remove ah ah ah--dddd-"

    invoke-static/range {v23 .. v24}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
