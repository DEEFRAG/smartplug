.class Lcom/kankunit/smartplugcronus/service/MessageService$ServiceChatManagerListener;
.super Ljava/lang/Object;
.source "MessageService.java"

# interfaces
.implements Lorg/jivesoftware/smack/ChatManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/service/MessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceChatManagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/service/MessageService;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/service/MessageService;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/MessageService$ServiceChatManagerListener;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/service/MessageService$ServiceChatManagerListener;)Lcom/kankunit/smartplugcronus/service/MessageService;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/MessageService$ServiceChatManagerListener;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    return-object v0
.end method


# virtual methods
.method public chatCreated(Lorg/jivesoftware/smack/Chat;Z)V
    .locals 1
    .param p1, "chat"    # Lorg/jivesoftware/smack/Chat;
    .param p2, "arg1"    # Z

    .prologue
    .line 274
    new-instance v0, Lcom/kankunit/smartplugcronus/service/MessageService$ServiceChatManagerListener$1;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/service/MessageService$ServiceChatManagerListener$1;-><init>(Lcom/kankunit/smartplugcronus/service/MessageService$ServiceChatManagerListener;)V

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/Chat;->addMessageListener(Lorg/jivesoftware/smack/MessageListener;)V

    .line 314
    return-void
.end method
