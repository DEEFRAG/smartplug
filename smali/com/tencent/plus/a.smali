.class Lcom/tencent/plus/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tencent/plus/g;


# direct methods
.method constructor <init>(Lcom/tencent/plus/g;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 759
    iput-object p1, p0, Lcom/tencent/plus/a;->b:Lcom/tencent/plus/g;

    iput-object p2, p0, Lcom/tencent/plus/a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Lcom/tencent/plus/a;->b:Lcom/tencent/plus/g;

    iget-object v0, v0, Lcom/tencent/plus/g;->a:Lcom/tencent/plus/ImageActivity;

    iget-object v1, p0, Lcom/tencent/plus/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/plus/ImageActivity;->b(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;)V

    .line 763
    return-void
.end method
