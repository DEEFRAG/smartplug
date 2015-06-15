.class Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;
.super Ljava/lang/Object;
.source "DefaultIoFilterChainBuilder.java"

# interfaces
.implements Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryImpl"
.end annotation


# instance fields
.field private volatile filter:Lorg/apache/mina/core/filterchain/IoFilter;

.field private final name:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;


# direct methods
.method private constructor <init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 510
    iput-object p1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    if-nez p2, :cond_0

    .line 512
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_0
    if-nez p3, :cond_1

    .line 515
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "filter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 518
    :cond_1
    iput-object p2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->name:Ljava/lang/String;

    .line 519
    iput-object p3, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->filter:Lorg/apache/mina/core/filterchain/IoFilter;

    .line 520
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lorg/apache/mina/core/filterchain/IoFilter;
    .param p4, "x3"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$1;

    .prologue
    .line 506
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;
    .param p1, "x1"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 506
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->setFilter(Lorg/apache/mina/core/filterchain/IoFilter;)V

    return-void
.end method

.method private setFilter(Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 0
    .param p1, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 531
    iput-object p1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->filter:Lorg/apache/mina/core/filterchain/IoFilter;

    .line 532
    return-void
.end method


# virtual methods
.method public addAfter(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 544
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->addAfter(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    .line 545
    return-void
.end method

.method public addBefore(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 548
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    .line 549
    return-void
.end method

.method public getFilter()Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->filter:Lorg/apache/mina/core/filterchain/IoFilter;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .locals 1

    .prologue
    .line 535
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->remove(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilter;

    .line 553
    return-void
.end method

.method public replace(Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 2
    .param p1, "newFilter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .prologue
    .line 556
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->replace(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter;

    .line 557
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->filter:Lorg/apache/mina/core/filterchain/IoFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
