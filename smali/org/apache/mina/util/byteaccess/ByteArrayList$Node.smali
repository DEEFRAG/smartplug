.class public Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
.super Ljava/lang/Object;
.source "ByteArrayList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/util/byteaccess/ByteArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Node"
.end annotation


# instance fields
.field private ba:Lorg/apache/mina/util/byteaccess/ByteArray;

.field private next:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

.field private previous:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

.field private removed:Z

.field final synthetic this$0:Lorg/apache/mina/util/byteaccess/ByteArrayList;


# direct methods
.method private constructor <init>(Lorg/apache/mina/util/byteaccess/ByteArrayList;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->previous:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 233
    iput-object p0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->next:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 234
    return-void
.end method

.method private constructor <init>(Lorg/apache/mina/util/byteaccess/ByteArrayList;Lorg/apache/mina/util/byteaccess/ByteArray;)V
    .locals 2
    .param p2, "ba"    # Lorg/apache/mina/util/byteaccess/ByteArray;

    .prologue
    .line 241
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    if-nez p2, :cond_0

    .line 246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ByteArray must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    iput-object p2, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->ba:Lorg/apache/mina/util/byteaccess/ByteArray;

    .line 250
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/util/byteaccess/ByteArrayList;Lorg/apache/mina/util/byteaccess/ByteArray;Lorg/apache/mina/util/byteaccess/ByteArrayList$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/util/byteaccess/ByteArrayList;
    .param p2, "x1"    # Lorg/apache/mina/util/byteaccess/ByteArray;
    .param p3, "x2"    # Lorg/apache/mina/util/byteaccess/ByteArrayList$1;

    .prologue
    .line 211
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;-><init>(Lorg/apache/mina/util/byteaccess/ByteArrayList;Lorg/apache/mina/util/byteaccess/ByteArray;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/util/byteaccess/ByteArrayList;Lorg/apache/mina/util/byteaccess/ByteArrayList$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/util/byteaccess/ByteArrayList;
    .param p2, "x1"    # Lorg/apache/mina/util/byteaccess/ByteArrayList$1;

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;-><init>(Lorg/apache/mina/util/byteaccess/ByteArrayList;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .prologue
    .line 211
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->next:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    return-object v0
.end method

.method static synthetic access$102(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    .param p1, "x1"    # Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .prologue
    .line 211
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->next:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    return-object p1
.end method

.method static synthetic access$300(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .prologue
    .line 211
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->ba:Lorg/apache/mina/util/byteaccess/ByteArray;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .prologue
    .line 211
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->previous:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    return-object v0
.end method

.method static synthetic access$402(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    .param p1, "x1"    # Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .prologue
    .line 211
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->previous:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    return-object p1
.end method

.method static synthetic access$502(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    .param p1, "x1"    # Z

    .prologue
    .line 211
    iput-boolean p1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->removed:Z

    return p1
.end method


# virtual methods
.method public getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->ba:Lorg/apache/mina/util/byteaccess/ByteArray;

    return-object v0
.end method

.method public getNextNode()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->hasNextNode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 279
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->next:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    return-object v0
.end method

.method public getPreviousNode()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->hasPreviousNode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 264
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->previous:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    return-object v0
.end method

.method public hasNextNode()Z
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->next:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    # getter for: Lorg/apache/mina/util/byteaccess/ByteArrayList;->header:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    invoke-static {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->access$600(Lorg/apache/mina/util/byteaccess/ByteArrayList;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPreviousNode()Z
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->previous:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->this$0:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    # getter for: Lorg/apache/mina/util/byteaccess/ByteArrayList;->header:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    invoke-static {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->access$600(Lorg/apache/mina/util/byteaccess/ByteArrayList;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRemoved()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->removed:Z

    return v0
.end method
