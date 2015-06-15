.class Lcom/tencent/plus/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/plus/d;


# direct methods
.method constructor <init>(Lcom/tencent/plus/d;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/tencent/plus/c;->a:Lcom/tencent/plus/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/tencent/plus/c;->a:Lcom/tencent/plus/d;

    iget-object v0, v0, Lcom/tencent/plus/d;->a:Lcom/tencent/plus/TouchView;

    invoke-virtual {v0}, Lcom/tencent/plus/TouchView;->clearAnimation()V

    .line 283
    iget-object v0, p0, Lcom/tencent/plus/c;->a:Lcom/tencent/plus/d;

    iget-object v0, v0, Lcom/tencent/plus/d;->a:Lcom/tencent/plus/TouchView;

    invoke-static {v0}, Lcom/tencent/plus/TouchView;->a(Lcom/tencent/plus/TouchView;)V

    .line 285
    return-void
.end method
