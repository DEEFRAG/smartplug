.class Lorg/apache/mina/core/service/AbstractIoService$2;
.super Ljava/util/AbstractSet;
.source "AbstractIoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/core/service/AbstractIoService;->broadcast(Ljava/lang/Object;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Lorg/apache/mina/core/future/WriteFuture;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/service/AbstractIoService;

.field final synthetic val$futures:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/apache/mina/core/service/AbstractIoService;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lorg/apache/mina/core/service/AbstractIoService$2;->this$0:Lorg/apache/mina/core/service/AbstractIoService;

    iput-object p2, p0, Lorg/apache/mina/core/service/AbstractIoService$2;->val$futures:Ljava/util/List;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/mina/core/future/WriteFuture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService$2;->val$futures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService$2;->val$futures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
