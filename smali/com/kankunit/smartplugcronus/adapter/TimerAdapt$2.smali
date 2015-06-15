.class Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;
.super Ljava/lang/Object;
.source "TimerAdapt.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

.field private final synthetic val$closeen:Landroid/widget/TextView;

.field private final synthetic val$commonMap:Ljava/util/Map;

.field private final synthetic val$idint:Ljava/lang/Integer;

.field private final synthetic val$openen:Landroid/widget/TextView;

.field private final synthetic val$state:Lcom/kankunit/smartplugcronus/customview/SwitchButton;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;Ljava/lang/Integer;Lcom/kankunit/smartplugcronus/customview/SwitchButton;Ljava/util/Map;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->val$idint:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->val$state:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    iput-object p4, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->val$commonMap:Ljava/util/Map;

    iput-object p5, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->val$openen:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->val$closeen:Landroid/widget/TextView;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;)Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    return-object v0
.end method


# virtual methods
.method public OnChanged(Lcom/kankunit/smartplugcronus/customview/SwitchButton;Z)V
    .locals 31
    .param p1, "wiperSwitch"    # Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    .param p2, "checkState"    # Z

    .prologue
    .line 167
    const/4 v4, 0x1

    sput-boolean v4, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->isSwitchClick:Z

    .line 168
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->val$idint:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v7}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$1(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;I)V

    .line 169
    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->isOpen:[Z
    invoke-static {}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$2()[Z

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->val$idint:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->val$state:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->getChecked()Z

    move-result v8

    aput-boolean v8, v4, v7

    .line 170
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$3(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v4

    if-nez v4, :cond_0

    .line 171
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    new-instance v7, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 172
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->context:Lcom/kankunit/smartplugcronus/view/TimerActivity;
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$4(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Lcom/kankunit/smartplugcronus/view/TimerActivity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;-><init>(Landroid/content/Context;)V

    .line 171
    invoke-static {v4, v7}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$5(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V

    .line 174
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$3(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v4

    const-wide/16 v7, 0x1f40

    new-instance v9, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2$1;-><init>(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;)V

    invoke-virtual {v4, v7, v8, v9}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->setTimeOut(JLcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$3(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v4

    new-instance v7, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2$2;-><init>(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;)V

    invoke-virtual {v4, v7}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$3(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 188
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$3(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->setProgressStyle(I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$3(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v4

    const-string v7, "Please wait"

    invoke-virtual {v4, v7}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$3(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v4

    const-string v7, "Save the..."

    invoke-virtual {v4, v7}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$3(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v4

    const/16 v7, 0x64

    invoke-virtual {v4, v7}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->setMax(I)V

    .line 192
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$3(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v4

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->setIndeterminate(Z)V

    .line 193
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$3(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->setCancelable(Z)V

    .line 194
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$3(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->show()V

    .line 198
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->val$commonMap:Ljava/util/Map;

    const-string v8, "open_realtime"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->val$commonMap:Ljava/util/Map;

    const-string v9, "close_realtime"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->val$commonMap:Ljava/util/Map;

    const-string v9, "timerid"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->val$commonMap:Ljava/util/Map;

    const-string v9, "repart_data"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->isOpen:[Z
    invoke-static {}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$2()[Z

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->val$idint:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-boolean v8, v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->val$openen:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->val$closeen:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->mac:Ljava/lang/String;
    invoke-static {v11}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$6(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->getCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v3 .. v11}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$7(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$8(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;Ljava/lang/String;)V

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->mac:Ljava/lang/String;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$6(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->pwd:Ljava/lang/String;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$9(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%confirm#"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 200
    .local v5, "confirmBeforeCmd":Ljava/lang/String;
    const-string v6, "%timer"

    .line 201
    .local v6, "confirmAfterCmd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->mac:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$6(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/DataUtil;->checkMac(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_1

    .line 202
    new-instance v3, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->cmd:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$10(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->handler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$11(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Landroid/os/Handler;

    move-result-object v7

    const v8, 0xb156

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->isDirect:Z
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$12(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->context:Lcom/kankunit/smartplugcronus/view/TimerActivity;
    invoke-static {v10}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$4(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Lcom/kankunit/smartplugcronus/view/TimerActivity;

    move-result-object v10

    invoke-direct/range {v3 .. v10}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;)V

    .line 203
    .local v3, "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    .line 267
    .end local v3    # "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->context:Lcom/kankunit/smartplugcronus/view/TimerActivity;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$4(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Lcom/kankunit/smartplugcronus/view/TimerActivity;

    move-result-object v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->val$commonMap:Ljava/util/Map;

    const-string v9, "open_realtime"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->val$commonMap:Ljava/util/Map;

    const-string v10, "close_realtime"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->val$commonMap:Ljava/util/Map;

    const-string v11, "timerid"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->val$commonMap:Ljava/util/Map;

    const-string v12, "repart_data"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->isOpen:[Z
    invoke-static {}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$2()[Z

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->val$idint:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aget-boolean v12, v4, v12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->val$openen:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->val$closeen:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->mac:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$6(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$3(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v16

    invoke-virtual/range {v7 .. v16}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->deleteTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->context:Lcom/kankunit/smartplugcronus/view/TimerActivity;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$4(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Lcom/kankunit/smartplugcronus/view/TimerActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 208
    .local v15, "phoneMac":Ljava/lang/String;
    const-string v4, ":"

    const-string v7, "-"

    invoke-virtual {v15, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 209
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->val$commonMap:Ljava/util/Map;

    const-string v10, "open_realtime"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->val$commonMap:Ljava/util/Map;

    const-string v11, "close_realtime"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->val$commonMap:Ljava/util/Map;

    const-string v12, "timerid"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->val$commonMap:Ljava/util/Map;

    const-string v13, "repart_data"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->isOpen:[Z
    invoke-static {}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$2()[Z

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->val$idint:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-boolean v12, v12, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->val$openen:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->val$closeen:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->getCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v7 .. v15}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$7(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$8(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;Ljava/lang/String;)V

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->mac:Ljava/lang/String;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$6(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "@"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "kankun-smartplug.com"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 212
    .local v30, "userJID":Ljava/lang/String;
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smack/XMPPConnection;->getChatManager()Lorg/jivesoftware/smack/ChatManager;

    move-result-object v26

    .line 213
    .local v26, "cm":Lorg/jivesoftware/smack/ChatManager;
    new-instance v27, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2$3;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2$3;-><init>(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;)V

    .line 230
    .local v27, "d":Lorg/jivesoftware/smack/MessageListener;
    move-object/from16 v0, v26

    move-object/from16 v1, v30

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/ChatManager;->createChat(Ljava/lang/String;Lorg/jivesoftware/smack/MessageListener;)Lorg/jivesoftware/smack/Chat;

    move-result-object v25

    .line 231
    .local v25, "chat":Lorg/jivesoftware/smack/Chat;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->cmd:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$10(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "set"

    const-string v8, "set#relay"

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v29

    .line 232
    .local v29, "message":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/kankunit/smartplugcronus/util/EncryptUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 234
    :try_start_0
    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Chat;->sendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 235
    :catch_0
    move-exception v28

    .line 236
    .local v28, "e":Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual/range {v28 .. v28}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    goto/16 :goto_0

    .line 239
    .end local v15    # "phoneMac":Ljava/lang/String;
    .end local v25    # "chat":Lorg/jivesoftware/smack/Chat;
    .end local v26    # "cm":Lorg/jivesoftware/smack/ChatManager;
    .end local v27    # "d":Lorg/jivesoftware/smack/MessageListener;
    .end local v28    # "e":Lorg/jivesoftware/smack/XMPPException;
    .end local v29    # "message":Ljava/lang/String;
    .end local v30    # "userJID":Ljava/lang/String;
    :cond_2
    new-instance v3, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->cmd:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$10(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "set"

    const-string v8, "set#relay"

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    const-string v19, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$11(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Landroid/os/Handler;

    move-result-object v20

    const v21, 0xb156

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->isDirect:Z
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$12(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Z

    move-result v22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->context:Lcom/kankunit/smartplugcronus/view/TimerActivity;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$4(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Lcom/kankunit/smartplugcronus/view/TimerActivity;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->userip:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$13(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v24}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;Ljava/lang/String;)V

    .line 240
    .restart local v3    # "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    goto/16 :goto_0
.end method
