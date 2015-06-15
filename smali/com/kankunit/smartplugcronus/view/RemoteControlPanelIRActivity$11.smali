.class Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$11;
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


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 512
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 513
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->access$6(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;Z)V

    .line 514
    return-void
.end method
