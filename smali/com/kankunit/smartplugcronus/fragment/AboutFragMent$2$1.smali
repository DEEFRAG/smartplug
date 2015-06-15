.class Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2$1;
.super Ljava/lang/Object;
.source "AboutFragMent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;

.field private final synthetic val$chooseListener:Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

.field private final synthetic val$phoneMac:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2$1;->val$chooseListener:Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

    iput-object p3, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2$1;->val$phoneMac:Ljava/lang/String;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "index"    # I

    .prologue
    const/4 v5, 0x0

    .line 127
    const-string v3, "Other"

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;)Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    move-result-object v4

    # getter for: Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->macs:[Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->access$3(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;)[Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2$1;->val$chooseListener:Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

    .line 128
    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;->getWhich()I

    move-result v6

    aget-object v4, v4, v6

    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 128
    if-eqz v3, :cond_0

    .line 129
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;)Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2$1;->val$phoneMac:Ljava/lang/String;

    # invokes: Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->otherMac(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->access$5(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;Ljava/lang/String;)V

    .line 153
    :goto_0
    return-void

    .line 132
    :cond_0
    const-string v3, "open"

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;)Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    move-result-object v4

    # getter for: Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->state:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->access$6(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;)Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    move-result-object v3

    const-string v4, "close"

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->access$7(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;Ljava/lang/String;)V

    .line 137
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2$1;->val$phoneMac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 139
    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 141
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;)Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 142
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;)Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    move-result-object v6

    # getter for: Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->macs:[Ljava/lang/String;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->access$3(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;)[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2$1;->val$chooseListener:Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

    .line 143
    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;->getWhich()I

    move-result v7

    .line 142
    aget-object v6, v6, v7

    .line 140
    invoke-static {v4, v6}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getDevicePWD(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 143
    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 144
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;)Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    move-result-object v4

    # getter for: Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->state:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->access$6(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%relay"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 137
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "cmd":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;)Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    move-result-object v4

    # getter for: Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->macs:[Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->access$3(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;)[Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2$1;->val$chooseListener:Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

    .line 146
    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;->getWhich()I

    move-result v6

    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 148
    const-string v4, "kankun-smartplug.com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "userJID":Ljava/lang/String;
    new-instance v0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    .line 150
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;)Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2$1;->val$phoneMac:Ljava/lang/String;

    .line 151
    const-string v7, ""

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;)Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    move-result-object v6

    # getter for: Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->access$8(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v8

    move-object v6, v5

    .line 149
    invoke-direct/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 152
    .local v0, "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    goto/16 :goto_0

    .line 135
    .end local v0    # "st2":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "userJID":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$2;)Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    move-result-object v3

    const-string v4, "open"

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->access$7(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
