.class Lcom/kankunit/smartplugcronus/service/MessageService$1$1;
.super Ljava/lang/Object;
.source "MessageService.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/service/MessageService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/service/MessageService$1;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/service/MessageService$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/MessageService$1$1;->this$1:Lcom/kankunit/smartplugcronus/service/MessageService$1;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receiveMsg(Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 165
    return-void
.end method
