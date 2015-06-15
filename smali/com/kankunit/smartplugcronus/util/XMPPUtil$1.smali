.class Lcom/kankunit/smartplugcronus/util/XMPPUtil$1;
.super Ljava/lang/Object;
.source "XMPPUtil.java"

# interfaces
.implements Lorg/jivesoftware/smack/MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/util/XMPPUtil;->SendMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/util/XMPPUtil;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/util/XMPPUtil;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/XMPPUtil$1;->this$0:Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smack/packet/Message;)V
    .locals 1
    .param p1, "chat"    # Lorg/jivesoftware/smack/Chat;
    .param p2, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .prologue
    .line 336
    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "messageBody":Ljava/lang/String;
    return-void
.end method
