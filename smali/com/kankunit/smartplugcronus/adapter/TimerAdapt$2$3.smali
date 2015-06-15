.class Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2$3;
.super Ljava/lang/Object;
.source "TimerAdapt.java"

# interfaces
.implements Lorg/jivesoftware/smack/MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->OnChanged(Lcom/kankunit/smartplugcronus/customview/SwitchButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2$3;->this$1:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smack/packet/Message;)V
    .locals 3
    .param p1, "arg0"    # Lorg/jivesoftware/smack/Chat;
    .param p2, "msg"    # Lorg/jivesoftware/smack/packet/Message;

    .prologue
    .line 217
    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "msgBody":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/util/EncryptUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    const-string v2, "tack"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 224
    .local v0, "message2":Landroid/os/Message;
    const/16 v2, 0x6f

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 225
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 226
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2$3;->this$1:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->access$0(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;)Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    move-result-object v2

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$11(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
