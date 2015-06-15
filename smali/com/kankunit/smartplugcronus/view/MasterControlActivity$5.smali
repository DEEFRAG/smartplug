.class Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;
.super Ljava/lang/Object;
.source "MasterControlActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->createNewDragImage(IILjava/lang/String;II)Lcom/kankunit/smartplugcronus/customview/ParamButton;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    .line 804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 807
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    .line 808
    .local v18, "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    .line 809
    .local v22, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

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

    .line 811
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 812
    .local v15, "realFl":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v15, :cond_0

    .line 813
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

    .line 814
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

    .line 817
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

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

    .line 818
    const/4 v5, 0x1

    .line 819
    .local v5, "isShowIcon":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v23

    if-eqz v23, :cond_1

    .line 821
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 822
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 823
    .local v3, "fl":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v3, :cond_1

    .line 824
    iget v0, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v23, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

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

    .line 825
    iget v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v23, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

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

    .line 826
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 922
    .end local v3    # "fl":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    :goto_0
    const/16 v23, 0x1

    return v23

    .line 828
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 829
    const/16 v16, 0x0

    .line 830
    .local v16, "stopX":I
    const/16 v17, 0x0

    .line 832
    .local v17, "stopY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    const/high16 v24, 0x42600000    # 56.0f

    invoke-static/range {v23 .. v24}, Lcom/kankunit/smartplugcronus/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpg-float v23, v22, v23

    if-gez v23, :cond_6

    .line 833
    const/4 v5, 0x0

    .line 837
    :goto_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$7(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-lt v4, v0, :cond_7

    .line 893
    if-eqz v5, :cond_4

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

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

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$7(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

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

    .line 895
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    const-string v24, "aaaOut of Bounds"

    invoke-static/range {v23 .. v24}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 896
    const/4 v5, 0x0

    .line 899
    :cond_4
    if-nez v17, :cond_5

    .line 900
    const/4 v5, 0x0

    .line 902
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

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

    .line 903
    if-eqz v5, :cond_12

    .line 904
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 905
    .restart local v3    # "fl":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v3, :cond_1

    .line 906
    add-int/lit8 v23, v16, 0x14

    move/from16 v0, v23

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 907
    add-int/lit8 v23, v17, 0x14

    move/from16 v0, v23

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 908
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 910
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

    .line 911
    .local v2, "btnTag":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Drag the button Add btn of tag ---"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    # invokes: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->removeOldBtn(Ljava/lang/String;Landroid/view/View;)V
    invoke-static {v0, v2, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$8(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;Ljava/lang/String;Landroid/view/View;)V

    .line 914
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 835
    .end local v2    # "btnTag":Ljava/lang/String;
    .end local v3    # "fl":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "i":I
    :cond_6
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 838
    .restart local v4    # "i":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$7(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 839
    .local v9, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v23, "x"

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 840
    .local v10, "meshX":I
    const-string v23, "y"

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 841
    .local v11, "meshY":I
    if-nez v4, :cond_a

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$7(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Ljava/util/List;

    move-result-object v23

    add-int/lit8 v24, v4, 0x1

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    .line 843
    .local v14, "nextm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v23, "x"

    move-object/from16 v0, v23

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 844
    .local v12, "nextX":I
    const-string v23, "y"

    move-object/from16 v0, v23

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 845
    .local v13, "nextY":I
    int-to-float v0, v10

    move/from16 v23, v0

    cmpg-float v23, v23, v18

    if-gtz v23, :cond_8

    int-to-float v0, v12

    move/from16 v23, v0

    cmpg-float v23, v18, v23

    if-gtz v23, :cond_8

    .line 846
    move/from16 v16, v10

    .line 848
    :cond_8
    int-to-float v0, v11

    move/from16 v23, v0

    cmpg-float v23, v23, v22

    if-gtz v23, :cond_9

    int-to-float v0, v13

    move/from16 v23, v0

    cmpg-float v23, v22, v23

    if-gtz v23, :cond_9

    .line 849
    move/from16 v17, v11

    .line 837
    .end local v12    # "nextX":I
    .end local v13    # "nextY":I
    .end local v14    # "nextm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_9
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 851
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$7(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    if-ne v4, v0, :cond_c

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$7(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 853
    .local v8, "lastm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v23, "x"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 854
    .local v6, "lastX":I
    const-string v23, "y"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 855
    .local v7, "lastY":I
    int-to-float v0, v10

    move/from16 v23, v0

    cmpg-float v23, v23, v18

    if-gtz v23, :cond_b

    int-to-float v0, v6

    move/from16 v23, v0

    cmpl-float v23, v18, v23

    if-ltz v23, :cond_b

    .line 856
    move/from16 v16, v6

    .line 858
    :cond_b
    int-to-float v0, v11

    move/from16 v23, v0

    cmpl-float v23, v23, v22

    if-ltz v23, :cond_9

    int-to-float v0, v7

    move/from16 v23, v0

    cmpl-float v23, v22, v23

    if-ltz v23, :cond_9

    .line 859
    move/from16 v17, v7

    .line 861
    goto :goto_3

    .line 862
    .end local v6    # "lastX":I
    .end local v7    # "lastY":I
    .end local v8    # "lastm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$7(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Ljava/util/List;

    move-result-object v23

    add-int/lit8 v24, v4, 0x1

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    .line 863
    .restart local v14    # "nextm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v23, "x"

    move-object/from16 v0, v23

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 864
    .restart local v12    # "nextX":I
    const-string v23, "y"

    move-object/from16 v0, v23

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 865
    .restart local v13    # "nextY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$7(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Ljava/util/List;

    move-result-object v23

    add-int/lit8 v24, v4, -0x1

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 866
    .restart local v8    # "lastm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v23, "x"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 867
    .restart local v6    # "lastX":I
    const-string v23, "y"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 871
    .restart local v7    # "lastY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

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

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

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

    .line 872
    .local v19, "x1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

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

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

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

    .line 873
    .local v20, "x2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

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

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

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

    .line 875
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

    .line 876
    move/from16 v16, v19

    .line 885
    :cond_d
    :goto_4
    int-to-float v0, v11

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

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

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

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

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

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

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

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

    .line 886
    :cond_f
    move/from16 v17, v7

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->meshList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$7(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    add-int/lit8 v23, v23, -0x3

    move/from16 v0, v23

    if-ne v4, v0, :cond_9

    .line 888
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 877
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

    .line 878
    move/from16 v16, v20

    .line 879
    goto/16 :goto_4

    :cond_11
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v23, v18, v23

    if-ltz v23, :cond_d

    .line 880
    move/from16 v16, v21

    goto/16 :goto_4

    .line 917
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

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->dragview:Landroid/widget/FrameLayout;
    invoke-static/range {v23 .. v23}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$9(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/FrameLayout;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    move-object/from16 v23, v0

    const-string v24, "Remove aaa--dddd-"

    invoke-static/range {v23 .. v24}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
