.class Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$10;
.super Ljava/lang/Object;
.source "RemoteControlPanelIRActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->doReceive(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

.field private final synthetic val$brandTypes:[Ljava/lang/CharSequence;

.field private final synthetic val$brands:[Ljava/lang/CharSequence;

.field private final synthetic val$chooseListener:Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;[Ljava/lang/CharSequence;Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;[Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$10;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$10;->val$brands:[Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$10;->val$chooseListener:Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

    iput-object p4, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$10;->val$brandTypes:[Ljava/lang/CharSequence;

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 496
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$10;->val$brands:[Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$10;->val$chooseListener:Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;->getWhich()I

    move-result v5

    aget-object v4, v4, v5

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "brand":Ljava/lang/String;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$10;->val$brandTypes:[Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$10;->val$chooseListener:Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;->getWhich()I

    move-result v5

    aget-object v4, v4, v5

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 498
    .local v1, "brandType":Ljava/lang/String;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$10;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    invoke-virtual {v4, v0, v1}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->saveAirControl(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 499
    .local v2, "controlId":I
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 500
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$10;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    const-class v5, Lcom/kankunit/smartplugcronus/view/AirControlActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 501
    .local v3, "intent2":Landroid/content/Intent;
    const-string v4, "controlId"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$10;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    invoke-virtual {v4, v3}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->startActivity(Landroid/content/Intent;)V

    .line 503
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$10;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->access$6(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;Z)V

    .line 504
    return-void
.end method
