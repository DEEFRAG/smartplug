.class Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;
.super Ljava/lang/Object;
.source "SceneControlActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->showTimer(Ljava/util/List;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

.field private final synthetic val$chooseListener:Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

.field private final synthetic val$isPoint:Ljava/lang/String;

.field private final synthetic val$linkageDetail:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->val$chooseListener:Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

    iput-object p3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->val$linkageDetail:Ljava/util/List;

    iput-object p4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->val$isPoint:Ljava/lang/String;

    .line 1094
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 21
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1098
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->val$chooseListener:Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;->getWhich()I

    move-result v2

    if-nez v2, :cond_1

    .line 1099
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->val$linkageDetail:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->val$isPoint:Ljava/lang/String;

    const/4 v9, 0x0

    # invokes: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->showTimerActivity(Ljava/util/List;Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4, v9}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$54(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Ljava/util/List;Ljava/lang/String;Z)V

    .line 1322
    :cond_0
    :goto_0
    return-void

    .line 1101
    :cond_1
    const/16 v19, 0x0

    .line 1102
    .local v19, "n":I
    const-string v5, "none"

    .line 1103
    .local v5, "repeatCmd":Ljava/lang/String;
    new-instance v1, Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    invoke-direct {v1}, Lcom/kankunit/smartplugcronus/model/LinkageTempModel;-><init>()V

    .line 1104
    .local v1, "ltm":Lcom/kankunit/smartplugcronus/model/LinkageTempModel;
    const-string v17, ""

    .line 1105
    .local v17, "linkageNum":Ljava/lang/String;
    new-instance v18, Lcom/kankunit/smartplugcronus/util/LinkageUtil;

    invoke-direct/range {v18 .. v18}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;-><init>()V

    .line 1106
    .local v18, "lu":Lcom/kankunit/smartplugcronus/util/LinkageUtil;
    const-string v16, ""

    .line 1107
    .local v16, "linkageChange":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 1108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "sceneId=\'"

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1109
    const-string v9, "\'"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1107
    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/dao/LinkageDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$55(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Lcom/kankunit/smartplugcronus/model/LinkageModel;)V

    .line 1110
    const-string v2, "y"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->val$isPoint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$38(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$56(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    .line 1113
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$38(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getLinkageNum()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "#update"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1116
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 1117
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "linkageId=\'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1118
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1119
    const-string v4, "\' and mac like \'%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->val$linkageDetail:Ljava/util/List;

    .line 1122
    const/4 v9, 0x0

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1123
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v2

    .line 1124
    const-string v9, ":timer"

    .line 1120
    invoke-static {v2, v9}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1124
    const-string v4, "%\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1115
    invoke-static {v3, v2}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 1125
    .local v15, "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    if-eqz v15, :cond_5

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 1126
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const/4 v2, 0x0

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-static {v3, v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$57(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;)V

    .line 1133
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer6()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1134
    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer6()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1135
    const-string v2, "16"

    .line 1136
    const-string v3, "none"

    const-string v4, "none"

    const-string v6, "unset"

    .line 1135
    invoke-static/range {v1 .. v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v1

    .line 1137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1138
    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->val$linkageDetail:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1141
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v2

    const-string v4, ":timer"

    .line 1140
    invoke-static {v2, v4}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->val$linkageDetail:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getPwd()Ljava/lang/String;

    move-result-object v2

    .line 1139
    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v4, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1144
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer7()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1145
    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer7()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1146
    const-string v2, "17"

    .line 1147
    const-string v3, "none"

    const-string v4, "none"

    const-string v6, "unset"

    .line 1146
    invoke-static/range {v1 .. v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v1

    .line 1148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1149
    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->val$linkageDetail:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1152
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v2

    const-string v4, ":timer"

    .line 1151
    invoke-static {v2, v4}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->val$linkageDetail:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getPwd()Ljava/lang/String;

    move-result-object v2

    .line 1150
    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v4, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1148
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1155
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer6(Ljava/lang/String;)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer7(Ljava/lang/String;)V

    .line 1157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 1158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$38(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 1159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->val$linkageDetail:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1160
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    const-string v9, ":timer"

    .line 1159
    invoke-static {v2, v4, v9}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->val$linkageDetail:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getPwd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setPwd(Ljava/lang/String;)V

    .line 1276
    .end local v15    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :goto_2
    const-string v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 1280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1281
    const v9, 0x7f0c0249

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1282
    const-string v9, "loading"

    const/16 v10, 0x2ee0

    new-instance v11, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12$1;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;)V

    .line 1279
    invoke-static {v3, v4, v9, v10, v11}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$52(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V

    .line 1293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 1294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->detailModels:Ljava/util/List;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$5(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v4

    .line 1293
    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v4}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getActionCmd(Landroid/content/Context;Ljava/util/List;Lnet/tsz/afinal/FinalDb;)Ljava/lang/String;

    move-result-object v20

    .line 1295
    .local v20, "sendMsg":Ljava/lang/String;
    const-string v2, "noAuth"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$36(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$36(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 1299
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const-string v3, "There are no permissions, linkage cannot be saved"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1128
    .end local v20    # "sendMsg":Ljava/lang/String;
    .restart local v15    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    new-instance v3, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-direct {v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;-><init>()V

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$57(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v2

    .line 1130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-static {v3}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageDetailId(Landroid/content/Context;)I

    move-result v3

    .line 1129
    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setId(I)V

    .line 1131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setLinkageId(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1163
    .end local v15    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$56(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    .line 1164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getRandom()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "#save"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    new-instance v3, Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-direct {v3}, Lcom/kankunit/smartplugcronus/model/LinkageModel;-><init>()V

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$55(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Lcom/kankunit/smartplugcronus/model/LinkageModel;)V

    .line 1166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    new-instance v3, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-direct {v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;-><init>()V

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$57(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$38(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v2

    .line 1169
    const-string v3, "yyyy-MM-dd HH-mm-ss"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 1168
    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/util/DateUtil;->dateToString(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setAddtime(Ljava/lang/String;)V

    .line 1170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$38(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setSceneId(Ljava/lang/String;)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$38(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setId(I)V

    .line 1172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$38(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v2

    invoke-static/range {v17 .. v17}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setLinkageNum(Ljava/lang/String;)V

    .line 1173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v2

    .line 1174
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-static {v3}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageDetailId(Landroid/content/Context;)I

    move-result v3

    .line 1173
    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setId(I)V

    .line 1175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setLinkageId(Ljava/lang/String;)V

    .line 1176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->val$linkageDetail:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1177
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    const-string v9, ":timer"

    .line 1176
    invoke-static {v2, v4, v9}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    .line 1178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->val$linkageDetail:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getPwd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setPwd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1181
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$38(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 1182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$56(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    .line 1183
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$38(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->getLinkageNum()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "#update"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 1187
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "linkageId=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1185
    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 1188
    .restart local v15    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    if-eqz v15, :cond_c

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 1189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const/4 v2, 0x0

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-static {v3, v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$57(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;)V

    .line 1196
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer1()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1197
    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1198
    const-string v2, "14"

    .line 1199
    const-string v3, "none"

    const-string v4, "none"

    const-string v6, "unset"

    .line 1198
    invoke-static/range {v1 .. v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v1

    .line 1200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1201
    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->val$linkageDetail:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1204
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v2

    const-string v4, ":timer"

    .line 1203
    invoke-static {v2, v4}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->val$linkageDetail:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getPwd()Ljava/lang/String;

    move-result-object v2

    .line 1202
    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v4, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1200
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1207
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer2()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1208
    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1209
    const-string v2, "15"

    .line 1210
    const-string v3, "none"

    const-string v4, "none"

    const-string v6, "unset"

    .line 1209
    invoke-static/range {v1 .. v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v1

    .line 1211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1212
    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->val$linkageDetail:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1215
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v2

    const-string v4, ":timer"

    .line 1214
    invoke-static {v2, v4}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->val$linkageDetail:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getPwd()Ljava/lang/String;

    move-result-object v2

    .line 1213
    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v4, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1211
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1225
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer4()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1226
    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer4()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1227
    const-string v2, "19"

    .line 1228
    const-string v3, "none"

    const-string v4, "none"

    const-string v6, "unset"

    .line 1227
    invoke-static/range {v1 .. v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v1

    .line 1229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1230
    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->val$linkageDetail:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1233
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v2

    const-string v4, ":timer"

    .line 1232
    invoke-static {v2, v4}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->val$linkageDetail:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getPwd()Ljava/lang/String;

    move-result-object v2

    .line 1231
    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v4, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1229
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1236
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer5()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1237
    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTimer5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1238
    const-string v2, "20"

    .line 1239
    const-string v3, "none"

    const-string v4, "none"

    const-string v6, "unset"

    .line 1238
    invoke-static/range {v1 .. v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->setLinkageTemp(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageTempModel;

    move-result-object v1

    .line 1240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1241
    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->val$linkageDetail:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1244
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v2

    const-string v4, ":timer"

    .line 1243
    invoke-static {v2, v4}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->val$linkageDetail:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getPwd()Ljava/lang/String;

    move-result-object v2

    .line 1242
    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v4, v2}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getLinkageChange(Lcom/kankunit/smartplugcronus/model/LinkageTempModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1240
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1247
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer1(Ljava/lang/String;)V

    .line 1248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer2(Ljava/lang/String;)V

    .line 1250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer4(Ljava/lang/String;)V

    .line 1251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setTimer5(Ljava/lang/String;)V

    .line 1252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setRepart(Ljava/lang/String;)V

    .line 1253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$38(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setHasTimer(Ljava/lang/String;)V

    .line 1254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->val$linkageDetail:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1255
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    const-string v9, ":timer"

    .line 1254
    invoke-static {v2, v4, v9}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    .line 1256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->val$linkageDetail:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getPwd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setPwd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1191
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    new-instance v3, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-direct {v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;-><init>()V

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$57(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;)V

    .line 1192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v2

    .line 1193
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-static {v3}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageDetailId(Landroid/content/Context;)I

    move-result v3

    .line 1192
    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setId(I)V

    .line 1194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setLinkageId(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1258
    .end local v15    # "ldms":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$56(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    .line 1259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getRandom()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "#save"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    new-instance v3, Lcom/kankunit/smartplugcronus/model/LinkageModel;

    invoke-direct {v3}, Lcom/kankunit/smartplugcronus/model/LinkageModel;-><init>()V

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$55(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Lcom/kankunit/smartplugcronus/model/LinkageModel;)V

    .line 1261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    new-instance v3, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-direct {v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;-><init>()V

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$57(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$38(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v2

    .line 1264
    const-string v3, "yyyy-MM-dd HH-mm-ss"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 1263
    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/util/DateUtil;->dateToString(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setAddtime(Ljava/lang/String;)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$38(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setSceneId(Ljava/lang/String;)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$38(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setId(I)V

    .line 1267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$38(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setLinkageNum(Ljava/lang/String;)V

    .line 1268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v2

    .line 1269
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-static {v3}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageDetailId(Landroid/content/Context;)I

    move-result v3

    .line 1268
    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setId(I)V

    .line 1270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setLinkageId(Ljava/lang/String;)V

    .line 1271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->val$linkageDetail:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1272
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    const-string v9, ":timer"

    .line 1271
    invoke-static {v2, v4, v9}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setMac(Ljava/lang/String;)V

    .line 1273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->ldm:Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$58(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->val$linkageDetail:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getPwd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->setPwd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1302
    .restart local v20    # "sendMsg":Ljava/lang/String;
    :cond_e
    const-string v2, "noDevice"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$36(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 1304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$36(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 1306
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const-string v3, "Device no longer exists, could not save the linkage"

    .line 1307
    const/4 v4, 0x1

    .line 1306
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 1307
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1310
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%%"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1311
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1312
    const-string v3, "%%linkage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1310
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1315
    .local v7, "cmd":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$18(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@addlinkage."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1316
    const-string v3, "kankun-smartplug.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1315
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1317
    .local v8, "userJID":Ljava/lang/String;
    new-instance v6, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    .line 1318
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1319
    const-string v13, "addlinkage"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$27(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v14

    .line 1317
    invoke-direct/range {v6 .. v14}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 1320
    .local v6, "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    goto/16 :goto_0
.end method
