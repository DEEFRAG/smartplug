.class Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;
.super Ljava/lang/Object;
.source "CompositeByteArray.java"

# interfaces
.implements Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/util/byteaccess/CompositeByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CursorImpl"
.end annotation


# instance fields
.field private componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

.field private componentIndex:I

.field private componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

.field private index:I

.field private final listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

.field final synthetic this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;


# direct methods
.method public constructor <init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)V
    .locals 2

    .prologue
    .line 622
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;ILorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)V

    .line 623
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;I)V
    .locals 1
    .param p2, "index"    # I

    .prologue
    .line 628
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;ILorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)V

    .line 629
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;ILorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)V
    .locals 0
    .param p2, "index"    # I
    .param p3, "listener"    # Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    .prologue
    .line 639
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    iput p2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 641
    iput-object p3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    .line 642
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)V
    .locals 1
    .param p2, "listener"    # Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    .prologue
    .line 634
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;ILorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)V

    .line 635
    return-void
.end method

.method private prepareForAccess(I)V
    .locals 6
    .param p1, "accessSize"    # I

    .prologue
    const/4 v4, 0x0

    .line 706
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v3}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 708
    iput-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 709
    iput-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    .line 713
    :cond_0
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    iget v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    # invokes: Lorg/apache/mina/util/byteaccess/CompositeByteArray;->checkBounds(II)V
    invoke-static {v3, v4, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$000(Lorg/apache/mina/util/byteaccess/CompositeByteArray;II)V

    .line 717
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 720
    .local v2, "oldComponentNode":Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    if-nez v3, :cond_1

    .line 722
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->last()I

    move-result v3

    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v4}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v4}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v4

    add-int v0, v3, v4

    .line 723
    .local v0, "basMidpoint":I
    iget v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    if-gt v3, v0, :cond_2

    .line 726
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    # getter for: Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;
    invoke-static {v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$200(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Lorg/apache/mina/util/byteaccess/ByteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getFirst()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 727
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v3

    iput v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    .line 728
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    if-eqz v3, :cond_1

    .line 730
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    iget v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    iget-object v5, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v5}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;->enteredFirstComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V

    .line 746
    .end local v0    # "basMidpoint":I
    :cond_1
    :goto_0
    iget v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    iget v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    if-ge v3, v4, :cond_3

    .line 748
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v3}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getPreviousNode()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 749
    iget v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v4}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    .line 750
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    if-eqz v3, :cond_1

    .line 752
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    iget v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    iget-object v5, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v5}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;->enteredPreviousComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V

    goto :goto_0

    .line 736
    .restart local v0    # "basMidpoint":I
    :cond_2
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    # getter for: Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;
    invoke-static {v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$200(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Lorg/apache/mina/util/byteaccess/ByteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getLast()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 737
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->last()I

    move-result v3

    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v4}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    .line 738
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    if-eqz v3, :cond_1

    .line 740
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    iget v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    iget-object v5, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v5}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;->enteredLastComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V

    goto :goto_0

    .line 757
    .end local v0    # "basMidpoint":I
    :cond_3
    :goto_1
    iget v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    iget v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    iget-object v5, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v5}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/mina/util/byteaccess/ByteArray;->length()I

    move-result v5

    add-int/2addr v4, v5

    if-lt v3, v4, :cond_4

    .line 759
    iget v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v4}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    .line 760
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v3}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getNextNode()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 761
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    if-eqz v3, :cond_3

    .line 763
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    iget v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    iget-object v5, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v5}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;->enteredNextComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V

    goto :goto_1

    .line 768
    :cond_4
    iget v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    iget v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    sub-int v1, v3, v4

    .line 769
    .local v1, "internalComponentIndex":I
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    if-ne v3, v2, :cond_5

    .line 772
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v3, v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->setIndex(I)V

    .line 779
    :goto_2
    return-void

    .line 777
    :cond_5
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v3}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/apache/mina/util/byteaccess/ByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    goto :goto_2
.end method


# virtual methods
.method public get()B
    .locals 2

    .prologue
    .line 805
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 806
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->get()B

    move-result v0

    .line 807
    .local v0, "b":B
    iget v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 808
    return v0
.end method

.method public get(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 4
    .param p1, "bb"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    .line 828
    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 830
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    .line 831
    .local v2, "remainingBefore":I
    invoke-direct {p0, v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 832
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v3, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->get(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 833
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    .line 835
    .local v1, "remainingAfter":I
    sub-int v0, v2, v1

    .line 836
    .local v0, "chunkSize":I
    iget v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    goto :goto_0

    .line 838
    .end local v0    # "chunkSize":I
    .end local v1    # "remainingAfter":I
    .end local v2    # "remainingBefore":I
    :cond_0
    return-void
.end method

.method public getChar()C
    .locals 5

    .prologue
    .line 1164
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 1165
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v3}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    .line 1167
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v3}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getChar()C

    move-result v2

    .line 1168
    .local v2, "c":C
    iget v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 1181
    .end local v2    # "c":C
    :goto_0
    return v2

    .line 1173
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v0

    .line 1174
    .local v0, "b0":B
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v1

    .line 1175
    .local v1, "b1":B
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    # getter for: Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;
    invoke-static {v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$300(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1177
    shl-int/lit8 v3, v0, 0x8

    shl-int/lit8 v4, v1, 0x0

    or-int/2addr v3, v4

    int-to-char v2, v3

    goto :goto_0

    .line 1181
    :cond_1
    shl-int/lit8 v3, v1, 0x8

    shl-int/lit8 v4, v0, 0x0

    or-int/2addr v3, v4

    int-to-char v2, v3

    goto :goto_0
.end method

.method public getDouble()D
    .locals 6

    .prologue
    .line 1125
    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 1126
    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v4}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_0

    .line 1128
    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v4}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getDouble()D

    move-result-wide v0

    .line 1129
    .local v0, "d":D
    iget v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/lit8 v4, v4, 0x8

    iput v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 1135
    .end local v0    # "d":D
    :goto_0
    return-wide v0

    .line 1134
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->getLong()J

    move-result-wide v2

    .line 1135
    .local v2, "l":J
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getFloat()F
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1086
    invoke-direct {p0, v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 1087
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 1089
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getFloat()F

    move-result v0

    .line 1090
    .local v0, "f":F
    iget v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 1096
    .end local v0    # "f":F
    :goto_0
    return v0

    .line 1095
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->getInt()I

    move-result v1

    .line 1096
    .local v1, "i":I
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto :goto_0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 650
    iget v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    return v0
.end method

.method public getInt()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 923
    invoke-direct {p0, v6}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 924
    iget-object v5, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v5}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v5

    if-lt v5, v6, :cond_0

    .line 926
    iget-object v5, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v5}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getInt()I

    move-result v4

    .line 927
    .local v4, "i":I
    iget v5, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 942
    .end local v4    # "i":I
    :goto_0
    return v4

    .line 932
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v0

    .line 933
    .local v0, "b0":B
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v1

    .line 934
    .local v1, "b1":B
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v2

    .line 935
    .local v2, "b2":B
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v3

    .line 936
    .local v3, "b3":B
    iget-object v5, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    # getter for: Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;
    invoke-static {v5}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$300(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 938
    shl-int/lit8 v5, v0, 0x18

    shl-int/lit8 v6, v1, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v2, 0x8

    or-int/2addr v5, v6

    shl-int/lit8 v6, v3, 0x0

    or-int v4, v5, v6

    goto :goto_0

    .line 942
    :cond_1
    shl-int/lit8 v5, v3, 0x18

    shl-int/lit8 v6, v2, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v1, 0x8

    or-int/2addr v5, v6

    shl-int/lit8 v6, v0, 0x0

    or-int v4, v5, v6

    goto :goto_0
.end method

.method public getLong()J
    .locals 17

    .prologue
    .line 992
    const/16 v11, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 993
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v11}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v11

    const/4 v12, 0x4

    if-lt v11, v12, :cond_0

    .line 995
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v11}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getLong()J

    move-result-wide v9

    .line 996
    .local v9, "l":J
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/lit8 v11, v11, 0x8

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 1017
    .end local v9    # "l":J
    :goto_0
    return-wide v9

    .line 1001
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v1

    .line 1002
    .local v1, "b0":B
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v2

    .line 1003
    .local v2, "b1":B
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v3

    .line 1004
    .local v3, "b2":B
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v4

    .line 1005
    .local v4, "b3":B
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v5

    .line 1006
    .local v5, "b4":B
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v6

    .line 1007
    .local v6, "b5":B
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v7

    .line 1008
    .local v7, "b6":B
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v8

    .line 1009
    .local v8, "b7":B
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    # getter for: Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;
    invoke-static {v11}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$300(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v11

    sget-object v12, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1011
    int-to-long v11, v1

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    const/16 v13, 0x38

    shl-long/2addr v11, v13

    int-to-long v13, v2

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    const/16 v15, 0x30

    shl-long/2addr v13, v15

    or-long/2addr v11, v13

    int-to-long v13, v3

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    const/16 v15, 0x28

    shl-long/2addr v13, v15

    or-long/2addr v11, v13

    int-to-long v13, v4

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    const/16 v15, 0x20

    shl-long/2addr v13, v15

    or-long/2addr v11, v13

    int-to-long v13, v5

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    const/16 v15, 0x18

    shl-long/2addr v13, v15

    or-long/2addr v11, v13

    int-to-long v13, v6

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    const/16 v15, 0x10

    shl-long/2addr v13, v15

    or-long/2addr v11, v13

    int-to-long v13, v7

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    const/16 v15, 0x8

    shl-long/2addr v13, v15

    or-long/2addr v11, v13

    int-to-long v13, v8

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    const/4 v15, 0x0

    shl-long/2addr v13, v15

    or-long v9, v11, v13

    goto :goto_0

    .line 1017
    :cond_1
    int-to-long v11, v8

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    const/16 v13, 0x38

    shl-long/2addr v11, v13

    int-to-long v13, v7

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    const/16 v15, 0x30

    shl-long/2addr v13, v15

    or-long/2addr v11, v13

    int-to-long v13, v6

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    const/16 v15, 0x28

    shl-long/2addr v13, v15

    or-long/2addr v11, v13

    int-to-long v13, v5

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    const/16 v15, 0x20

    shl-long/2addr v13, v15

    or-long/2addr v11, v13

    int-to-long v13, v4

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    const/16 v15, 0x18

    shl-long/2addr v13, v15

    or-long/2addr v11, v13

    int-to-long v13, v3

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    const/16 v15, 0x10

    shl-long/2addr v13, v15

    or-long/2addr v11, v13

    int-to-long v13, v2

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    const/16 v15, 0x8

    shl-long/2addr v13, v15

    or-long/2addr v11, v13

    int-to-long v13, v1

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    const/4 v15, 0x0

    shl-long/2addr v13, v15

    or-long v9, v11, v13

    goto/16 :goto_0
.end method

.method public getRemaining()I
    .locals 2

    .prologue
    .line 787
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->last()I

    move-result v0

    iget v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getShort()S
    .locals 5

    .prologue
    .line 864
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 865
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v3}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    .line 867
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v3}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getShort()S

    move-result v2

    .line 868
    .local v2, "s":S
    iget v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 881
    .end local v2    # "s":S
    :goto_0
    return v2

    .line 873
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v0

    .line 874
    .local v0, "b0":B
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v1

    .line 875
    .local v1, "b1":B
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    # getter for: Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;
    invoke-static {v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$300(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 877
    shl-int/lit8 v3, v0, 0x8

    shl-int/lit8 v4, v1, 0x0

    or-int/2addr v3, v4

    int-to-short v2, v3

    goto :goto_0

    .line 881
    :cond_1
    shl-int/lit8 v3, v1, 0x8

    shl-int/lit8 v4, v0, 0x0

    or-int/2addr v3, v4

    int-to-short v2, v3

    goto :goto_0
.end method

.method public hasRemaining()Z
    .locals 1

    .prologue
    .line 796
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->getRemaining()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public put(B)V
    .locals 1
    .param p1, "b"    # B

    .prologue
    .line 817
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 818
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->put(B)V

    .line 819
    iget v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 820
    return-void
.end method

.method public put(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 4
    .param p1, "bb"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    .line 846
    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 848
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    .line 849
    .local v2, "remainingBefore":I
    invoke-direct {p0, v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 850
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v3, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->put(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 851
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    .line 853
    .local v1, "remainingAfter":I
    sub-int v0, v2, v1

    .line 854
    .local v0, "chunkSize":I
    iget v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    goto :goto_0

    .line 856
    .end local v0    # "chunkSize":I
    .end local v1    # "remainingAfter":I
    .end local v2    # "remainingBefore":I
    :cond_0
    return-void
.end method

.method public putChar(C)V
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 1192
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 1193
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 1195
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v2, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putChar(C)V

    .line 1196
    iget v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 1215
    :goto_0
    return-void

    .line 1202
    :cond_0
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    # getter for: Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;
    invoke-static {v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$300(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1204
    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v0, v2

    .line 1205
    .local v0, "b0":B
    shr-int/lit8 v2, p1, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v1, v2

    .line 1212
    .local v1, "b1":B
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 1213
    invoke-virtual {p0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    goto :goto_0

    .line 1209
    .end local v0    # "b0":B
    .end local v1    # "b1":B
    :cond_1
    shr-int/lit8 v2, p1, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v0, v2

    .line 1210
    .restart local v0    # "b0":B
    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v1, v2

    .restart local v1    # "b1":B
    goto :goto_1
.end method

.method public putDouble(D)V
    .locals 4
    .param p1, "d"    # D

    .prologue
    .line 1145
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 1146
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 1148
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v2, p1, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putDouble(D)V

    .line 1149
    iget v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 1156
    :goto_0
    return-void

    .line 1153
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 1154
    .local v0, "l":J
    invoke-virtual {p0, v0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->putLong(J)V

    goto :goto_0
.end method

.method public putFloat(F)V
    .locals 3
    .param p1, "f"    # F

    .prologue
    const/4 v2, 0x4

    .line 1106
    invoke-direct {p0, v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 1107
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 1109
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putFloat(F)V

    .line 1110
    iget v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 1117
    :goto_0
    return-void

    .line 1114
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1115
    .local v0, "i":I
    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->putInt(I)V

    goto :goto_0
.end method

.method public putInt(I)V
    .locals 6
    .param p1, "i"    # I

    .prologue
    const/4 v5, 0x4

    .line 953
    invoke-direct {p0, v5}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 954
    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v4}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v4

    if-lt v4, v5, :cond_0

    .line 956
    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v4, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putInt(I)V

    .line 957
    iget v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 984
    :goto_0
    return-void

    .line 965
    :cond_0
    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    # getter for: Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;
    invoke-static {v4}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$300(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 967
    shr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v0, v4

    .line 968
    .local v0, "b0":B
    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v1, v4

    .line 969
    .local v1, "b1":B
    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v2, v4

    .line 970
    .local v2, "b2":B
    shr-int/lit8 v4, p1, 0x0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v3, v4

    .line 979
    .local v3, "b3":B
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 980
    invoke-virtual {p0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 981
    invoke-virtual {p0, v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 982
    invoke-virtual {p0, v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    goto :goto_0

    .line 974
    .end local v0    # "b0":B
    .end local v1    # "b1":B
    .end local v2    # "b2":B
    .end local v3    # "b3":B
    :cond_1
    shr-int/lit8 v4, p1, 0x0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v0, v4

    .line 975
    .restart local v0    # "b0":B
    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v1, v4

    .line 976
    .restart local v1    # "b1":B
    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v2, v4

    .line 977
    .restart local v2    # "b2":B
    shr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v3, v4

    .restart local v3    # "b3":B
    goto :goto_1
.end method

.method public putLong(J)V
    .locals 12
    .param p1, "l"    # J

    .prologue
    .line 1031
    const/16 v8, 0x8

    invoke-direct {p0, v8}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 1032
    iget-object v8, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v8}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v8

    const/4 v9, 0x4

    if-lt v8, v9, :cond_0

    .line 1034
    iget-object v8, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v8, p1, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putLong(J)V

    .line 1035
    iget v8, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/lit8 v8, v8, 0x8

    iput v8, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 1078
    :goto_0
    return-void

    .line 1047
    :cond_0
    iget-object v8, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    # getter for: Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;
    invoke-static {v8}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$300(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1049
    const/16 v8, 0x38

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v0, v8

    .line 1050
    .local v0, "b0":B
    const/16 v8, 0x30

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v1, v8

    .line 1051
    .local v1, "b1":B
    const/16 v8, 0x28

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v2, v8

    .line 1052
    .local v2, "b2":B
    const/16 v8, 0x20

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v3, v8

    .line 1053
    .local v3, "b3":B
    const/16 v8, 0x18

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v4, v8

    .line 1054
    .local v4, "b4":B
    const/16 v8, 0x10

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v5, v8

    .line 1055
    .local v5, "b5":B
    const/16 v8, 0x8

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v6, v8

    .line 1056
    .local v6, "b6":B
    const/4 v8, 0x0

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v7, v8

    .line 1069
    .local v7, "b7":B
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 1070
    invoke-virtual {p0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 1071
    invoke-virtual {p0, v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 1072
    invoke-virtual {p0, v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 1073
    invoke-virtual {p0, v4}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 1074
    invoke-virtual {p0, v5}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 1075
    invoke-virtual {p0, v6}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 1076
    invoke-virtual {p0, v7}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    goto :goto_0

    .line 1060
    .end local v0    # "b0":B
    .end local v1    # "b1":B
    .end local v2    # "b2":B
    .end local v3    # "b3":B
    .end local v4    # "b4":B
    .end local v5    # "b5":B
    .end local v6    # "b6":B
    .end local v7    # "b7":B
    :cond_1
    const/4 v8, 0x0

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v0, v8

    .line 1061
    .restart local v0    # "b0":B
    const/16 v8, 0x8

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v1, v8

    .line 1062
    .restart local v1    # "b1":B
    const/16 v8, 0x10

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v2, v8

    .line 1063
    .restart local v2    # "b2":B
    const/16 v8, 0x18

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v3, v8

    .line 1064
    .restart local v3    # "b3":B
    const/16 v8, 0x20

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v4, v8

    .line 1065
    .restart local v4    # "b4":B
    const/16 v8, 0x28

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v5, v8

    .line 1066
    .restart local v5    # "b5":B
    const/16 v8, 0x30

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v6, v8

    .line 1067
    .restart local v6    # "b6":B
    const/16 v8, 0x38

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v7, v8

    .restart local v7    # "b7":B
    goto :goto_1
.end method

.method public putShort(S)V
    .locals 4
    .param p1, "s"    # S

    .prologue
    .line 892
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 893
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 895
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v2, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putShort(S)V

    .line 896
    iget v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 915
    :goto_0
    return-void

    .line 902
    :cond_0
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    # getter for: Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;
    invoke-static {v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$300(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 904
    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v0, v2

    .line 905
    .local v0, "b0":B
    shr-int/lit8 v2, p1, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v1, v2

    .line 912
    .local v1, "b1":B
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 913
    invoke-virtual {p0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    goto :goto_0

    .line 909
    .end local v0    # "b0":B
    .end local v1    # "b1":B
    :cond_1
    shr-int/lit8 v2, p1, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v0, v2

    .line 910
    .restart local v0    # "b0":B
    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v1, v2

    .restart local v1    # "b1":B
    goto :goto_1
.end method

.method public setIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 659
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    const/4 v1, 0x0

    # invokes: Lorg/apache/mina/util/byteaccess/CompositeByteArray;->checkBounds(II)V
    invoke-static {v0, p1, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$000(Lorg/apache/mina/util/byteaccess/CompositeByteArray;II)V

    .line 660
    iput p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 661
    return-void
.end method

.method public skip(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 669
    iget v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->setIndex(I)V

    .line 670
    return-void
.end method

.method public slice(I)Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 5
    .param p1, "length"    # I

    .prologue
    .line 678
    new-instance v3, Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    # getter for: Lorg/apache/mina/util/byteaccess/CompositeByteArray;->byteArrayFactory:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;
    invoke-static {v4}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$100(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;-><init>(Lorg/apache/mina/util/byteaccess/ByteArrayFactory;)V

    .line 679
    .local v3, "slice":Lorg/apache/mina/util/byteaccess/CompositeByteArray;
    move v2, p1

    .line 680
    .local v2, "remaining":I
    :goto_0
    if-lez v2, :cond_0

    .line 682
    invoke-direct {p0, v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 683
    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v4}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 684
    .local v1, "componentSliceSize":I
    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v4, v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->slice(I)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v0

    .line 685
    .local v0, "componentSlice":Lorg/apache/mina/util/byteaccess/ByteArray;
    invoke-virtual {v3, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->addLast(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    .line 686
    iget v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 687
    sub-int/2addr v2, v1

    .line 688
    goto :goto_0

    .line 689
    .end local v0    # "componentSlice":Lorg/apache/mina/util/byteaccess/ByteArray;
    .end local v1    # "componentSliceSize":I
    :cond_0
    return-object v3
.end method
