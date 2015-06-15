.class Lcom/kankunit/smartplugcronus/view/LoadingActivity$2;
.super Ljava/lang/Object;
.source "LoadingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/LoadingActivity;->getImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/LoadingActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/LoadingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/LoadingActivity;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/LoadingActivity$2;)Lcom/kankunit/smartplugcronus/view/LoadingActivity;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/LoadingActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/LoadingActivity$2$1;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/LoadingActivity$2$1;-><init>(Lcom/kankunit/smartplugcronus/view/LoadingActivity$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 118
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 119
    return-void
.end method
