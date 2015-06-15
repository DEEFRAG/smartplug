.class Lorg/apache/mina/util/byteaccess/ByteArrayList;
.super Ljava/lang/Object;
.source "ByteArrayList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/util/byteaccess/ByteArrayList$1;,
        Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    }
.end annotation


# instance fields
.field private firstByte:I

.field private final header:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

.field private lastByte:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;-><init>(Lorg/apache/mina/util/byteaccess/ByteArrayList;Lorg/apache/mina/util/byteaccess/ByteArrayList$1;)V

    iput-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->header:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 59
    return-void
.end method

.method static synthetic access$600(Lorg/apache/mina/util/byteaccess/ByteArrayList;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/util/byteaccess/ByteArrayList;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->header:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    return-object v0
.end method


# virtual methods
.method public addFirst(Lorg/apache/mina/util/byteaccess/ByteArray;)V
    .locals 2
    .param p1, "ba"    # Lorg/apache/mina/util/byteaccess/ByteArray;

    .prologue
    .line 128
    new-instance v0, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;-><init>(Lorg/apache/mina/util/byteaccess/ByteArrayList;Lorg/apache/mina/util/byteaccess/ByteArray;Lorg/apache/mina/util/byteaccess/ByteArrayList$1;)V

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->header:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    # getter for: Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->next:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    invoke-static {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$100(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->addNode(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)V

    .line 129
    iget v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->firstByte:I

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->firstByte:I

    .line 130
    return-void
.end method

.method public addLast(Lorg/apache/mina/util/byteaccess/ByteArray;)V
    .locals 2
    .param p1, "ba"    # Lorg/apache/mina/util/byteaccess/ByteArray;

    .prologue
    .line 141
    new-instance v0, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;-><init>(Lorg/apache/mina/util/byteaccess/ByteArrayList;Lorg/apache/mina/util/byteaccess/ByteArray;Lorg/apache/mina/util/byteaccess/ByteArrayList$1;)V

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->header:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {p0, v0, v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->addNode(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)V

    .line 142
    iget v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->lastByte:I

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->lastByte:I

    .line 143
    return-void
.end method

.method protected addNode(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)V
    .locals 1
    .param p1, "nodeToInsert"    # Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    .param p2, "insertBeforeNode"    # Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .prologue
    .line 183
    # setter for: Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->next:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    invoke-static {p1, p2}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$102(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 184
    # getter for: Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->previous:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    invoke-static {p2}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$400(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    # setter for: Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->previous:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    invoke-static {p1, v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$402(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 185
    # getter for: Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->previous:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    invoke-static {p2}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$400(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    # setter for: Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->next:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    invoke-static {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$102(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 186
    # setter for: Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->previous:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    invoke-static {p2, p1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$402(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 187
    return-void
.end method

.method public firstByte()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->firstByte:I

    return v0
.end method

.method public getFirst()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->header:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getNextNode()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    return-object v0
.end method

.method public getLast()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->header:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getPreviousNode()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->header:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    # getter for: Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->next:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    invoke-static {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$100(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->header:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastByte()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->lastByte:I

    return v0
.end method

.method public removeFirst()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    .locals 3

    .prologue
    .line 153
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->header:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getNextNode()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    .line 154
    .local v0, "node":Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    iget v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->firstByte:I

    # getter for: Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->ba:Lorg/apache/mina/util/byteaccess/ByteArray;
    invoke-static {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$300(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->firstByte:I

    .line 155
    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->removeNode(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v1

    return-object v1
.end method

.method public removeLast()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    .locals 3

    .prologue
    .line 166
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->header:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getPreviousNode()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    .line 167
    .local v0, "node":Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    iget v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->lastByte:I

    # getter for: Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->ba:Lorg/apache/mina/util/byteaccess/ByteArray;
    invoke-static {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$300(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->lastByte:I

    .line 168
    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->removeNode(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v1

    return-object v1
.end method

.method protected removeNode(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    .locals 2
    .param p1, "node"    # Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .prologue
    .line 198
    # getter for: Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->previous:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    invoke-static {p1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$400(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    # getter for: Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->next:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    invoke-static {p1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$100(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v1

    # setter for: Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->next:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    invoke-static {v0, v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$102(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 199
    # getter for: Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->next:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    invoke-static {p1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$100(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    # getter for: Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->previous:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    invoke-static {p1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$400(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v1

    # setter for: Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->previous:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    invoke-static {v0, v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$402(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 200
    const/4 v0, 0x1

    # setter for: Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->removed:Z
    invoke-static {p1, v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$502(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;Z)Z

    .line 201
    return-object p1
.end method
