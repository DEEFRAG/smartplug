.class Lcom/kankunit/smartplugcronus/view/TimerActivity$3;
.super Ljava/lang/Object;
.source "TimerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/TimerActivity;->deleteTimerlist(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

.field private final synthetic val$index:I

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/TimerActivity;ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    iput p2, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->val$index:I

    iput-object p3, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->val$view:Landroid/view/View;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/TimerActivity$3;)Lcom/kankunit/smartplugcronus/view/TimerActivity;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 14
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 318
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TimerActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->access$2(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v5

    if-nez v5, :cond_0

    .line 319
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    new-instance v7, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 320
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    invoke-direct {v7, v9}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;-><init>(Landroid/content/Context;)V

    .line 319
    invoke-static {v5, v7}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->access$3(Lcom/kankunit/smartplugcronus/view/TimerActivity;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V

    .line 322
    :cond_0
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TimerActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->access$2(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v5

    new-instance v7, Lcom/kankunit/smartplugcronus/view/TimerActivity$3$1;

    invoke-direct {v7, p0}, Lcom/kankunit/smartplugcronus/view/TimerActivity$3$1;-><init>(Lcom/kankunit/smartplugcronus/view/TimerActivity$3;)V

    invoke-virtual {v5, v7}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 327
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TimerActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->access$2(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v5

    const-wide/16 v9, 0x2ee0

    new-instance v7, Lcom/kankunit/smartplugcronus/view/TimerActivity$3$2;

    invoke-direct {v7, p0}, Lcom/kankunit/smartplugcronus/view/TimerActivity$3$2;-><init>(Lcom/kankunit/smartplugcronus/view/TimerActivity$3;)V

    invoke-virtual {v5, v9, v10, v7}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->setTimeOut(JLcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)V

    .line 333
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TimerActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->access$2(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 334
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TimerActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->access$2(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->setProgressStyle(I)V

    .line 335
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TimerActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->access$2(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v5

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0c024a

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TimerActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->access$2(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v5

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0c024c

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TimerActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->access$2(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v5

    const/16 v7, 0x64

    invoke-virtual {v5, v7}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->setMax(I)V

    .line 338
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TimerActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->access$2(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->setIndeterminate(Z)V

    .line 339
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TimerActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->access$2(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->setCancelable(Z)V

    .line 340
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TimerActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->access$2(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->show()V

    .line 341
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    iget v7, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->val$index:I

    invoke-static {v5, v7}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->access$4(Lcom/kankunit/smartplugcronus/view/TimerActivity;I)V

    .line 342
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->val$view:Landroid/view/View;

    const v7, 0x7f070384

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 343
    .local v13, "id":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->access$5(Lcom/kankunit/smartplugcronus/view/TimerActivity;Ljava/lang/String;)V

    .line 344
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TimerActivity;->mac:Ljava/lang/String;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->access$6(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "%"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TimerActivity;->pwd:Ljava/lang/String;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->access$7(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "%alarm#"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 345
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TimerActivity;->timerid:Ljava/lang/String;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->access$8(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "#"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "en"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "#"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "opentime"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "#"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 346
    const-string v7, "openEn"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "#"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "closetime"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "#"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "closeEn"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 347
    const-string v7, "#"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "repart"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "#unset%timer%timer"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 344
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "cmd":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TimerActivity;->mac:Ljava/lang/String;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->access$6(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "%"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TimerActivity;->pwd:Ljava/lang/String;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->access$7(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "%confirm#"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, "beforeCmd":Ljava/lang/String;
    const-string v3, "%timer"

    .line 350
    .local v3, "afterCmd":Ljava/lang/String;
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->access$9(Lcom/kankunit/smartplugcronus/view/TimerActivity;Z)V

    .line 351
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TimerActivity;->mac:Ljava/lang/String;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->access$6(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kankunit/smartplugcronus/util/DataUtil;->checkMac(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_1

    .line 352
    new-instance v0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TimerActivity;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->access$10(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Landroid/os/Handler;

    move-result-object v4

    const v5, 0xb156

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TimerActivity;->isDirect:Z
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->access$11(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Z

    move-result v6

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    invoke-direct/range {v0 .. v7}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;)V

    .line 353
    .local v0, "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    .line 375
    .end local v0    # "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    :goto_0
    return-void

    .line 356
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TimerActivity;->mac:Ljava/lang/String;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->access$6(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "@"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "kankun-smartplug.com"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 357
    .local v6, "userJID":Ljava/lang/String;
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    invoke-static {v5}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 358
    .local v8, "phoneMac":Ljava/lang/String;
    const-string v5, ":"

    const-string v7, "-"

    invoke-virtual {v8, v5, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 359
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "wan_phone%"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "%"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TimerActivity;->pwd:Ljava/lang/String;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->access$7(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "%alarm#"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 360
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TimerActivity;->timerid:Ljava/lang/String;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->access$8(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "#"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "en"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "#"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "opentime"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "#"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 361
    const-string v7, "openEn"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "#"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "closetime"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "#"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "closeEn"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 362
    const-string v7, "#"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "repart"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "#unset#relay%timer%timer"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 359
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 363
    new-instance v4, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TimerActivity;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->access$10(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Landroid/os/Handler;

    move-result-object v9

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TimerActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->access$12(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v10

    const-string v11, ""

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/TimerActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TimerActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->access$13(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v12

    move-object v5, v1

    invoke-direct/range {v4 .. v12}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 364
    .local v4, "s2t":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    goto/16 :goto_0
.end method
