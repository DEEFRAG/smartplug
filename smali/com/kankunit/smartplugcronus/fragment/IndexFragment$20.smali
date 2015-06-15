.class Lcom/kankunit/smartplugcronus/fragment/IndexFragment$20;
.super Ljava/lang/Object;
.source "IndexFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

.field private final synthetic val$deviceMac4:Ljava/lang/String;

.field private final synthetic val$dm4:Lcom/kankunit/smartplugcronus/model/DeviceModel;

.field private final synthetic val$pwdInput:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Landroid/widget/EditText;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$20;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$20;->val$pwdInput:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$20;->val$dm4:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    iput-object p4, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$20;->val$deviceMac4:Ljava/lang/String;

    .line 1591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1594
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$20;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$20;->val$pwdInput:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$16(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Ljava/lang/String;)V

    .line 1595
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$20;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$20;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1596
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$20;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1598
    :cond_0
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$20;->val$dm4:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsDirect()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1599
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$20;->val$deviceMac4:Ljava/lang/String;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1600
    .local v2, "macStr":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0K_SP3_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x3

    aget-object v6, v2, v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1601
    const/4 v6, 0x4

    aget-object v6, v2, v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x5

    aget-object v6, v2, v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1600
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1603
    .local v4, "ssidDirect":Ljava/lang/String;
    new-instance v1, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$20;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    .line 1604
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$20;->val$deviceMac4:Ljava/lang/String;

    .line 1603
    invoke-direct {v1, v5, v4, v6}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    .local v1, "dcThread":Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;->start()V

    .line 1612
    .end local v1    # "dcThread":Lcom/kankunit/smartplugcronus/fragment/IndexFragment$DirectConnectThread;
    .end local v2    # "macStr":[Ljava/lang/String;
    .end local v4    # "ssidDirect":Ljava/lang/String;
    :goto_0
    return-void

    .line 1607
    :cond_1
    const-string v0, "check%request"

    .line 1608
    .local v0, "cmd":Ljava/lang/String;
    new-instance v3, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$OperationThread;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$20;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$20;->val$deviceMac4:Ljava/lang/String;

    invoke-direct {v3, v5, v0, v6}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$OperationThread;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    .local v3, "operationThread":Lcom/kankunit/smartplugcronus/fragment/IndexFragment$OperationThread;
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$OperationThread;->start()V

    goto :goto_0
.end method
