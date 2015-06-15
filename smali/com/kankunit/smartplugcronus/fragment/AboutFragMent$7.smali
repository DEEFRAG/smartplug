.class Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$7;
.super Ljava/lang/Object;
.source "AboutFragMent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->otherMac(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

.field private final synthetic val$et:Landroid/widget/EditText;

.field private final synthetic val$et2:Landroid/widget/EditText;

.field private final synthetic val$phoneMac:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$7;->this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$7;->val$et:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$7;->val$et2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$7;->val$phoneMac:Ljava/lang/String;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v5, 0x0

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$7;->val$et:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$7;->val$et2:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 259
    const-string v4, "%check#relay%timer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 258
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "cmd":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$7;->val$et:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@timetask."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 261
    const-string v4, "kankun-smartplug.com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 260
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "userJID":Ljava/lang/String;
    new-instance v0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    .line 263
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$7;->this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$7;->val$phoneMac:Ljava/lang/String;

    const-string v7, "timetask"

    .line 264
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$7;->this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->access$8(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v8

    move-object v6, v5

    .line 262
    invoke-direct/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 265
    .local v0, "s2t":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    .line 266
    return-void
.end method
