.class Lcom/kankunit/smartplugcronus/view/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/SplashActivity;

.field verjson:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/SplashActivity;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SplashActivity;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->verjson:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/SplashActivity$1;)Lcom/kankunit/smartplugcronus/view/SplashActivity;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SplashActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SplashActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/SplashActivity$1$1;-><init>(Lcom/kankunit/smartplugcronus/view/SplashActivity$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 161
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 162
    return-void
.end method
