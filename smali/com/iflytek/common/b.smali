.class final Lcom/iflytek/common/b;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/iflytek/common/LaunchService;


# direct methods
.method constructor <init>(Lcom/iflytek/common/LaunchService;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/common/b;->a:Lcom/iflytek/common/LaunchService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "alarm onReceive"

    invoke-static {p1, v0}, Lcom/iflytek/common/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iflytek/common/a/c;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/iflytek/common/b;->a:Lcom/iflytek/common/LaunchService;

    invoke-static {v0}, Lcom/iflytek/common/LaunchService;->a(Lcom/iflytek/common/LaunchService;)V

    return-void
.end method
