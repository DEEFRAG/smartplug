.class Lorg/jdom/ContentList$FilterList;
.super Ljava/util/AbstractList;
.source "ContentList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom/ContentList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FilterList"
.end annotation


# instance fields
.field count:I

.field expected:I

.field filter:Lorg/jdom/filter/Filter;

.field private final this$0:Lorg/jdom/ContentList;


# direct methods
.method constructor <init>(Lorg/jdom/ContentList;Lorg/jdom/filter/Filter;)V
    .locals 1
    .param p2, "filter"    # Lorg/jdom/filter/Filter;

    .prologue
    .line 549
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    .line 534
    const/4 v0, 0x0

    iput v0, p0, Lorg/jdom/ContentList$FilterList;->count:I

    .line 537
    const/4 v0, -0x1

    iput v0, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    .line 550
    iput-object p2, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    .line 551
    return-void
.end method

.method private final getAdjustedIndex(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 686
    const/4 v0, 0x0

    .line 687
    .local v0, "adjusted":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-static {v3}, Lorg/jdom/ContentList;->access$200(Lorg/jdom/ContentList;)I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 688
    iget-object v3, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-static {v3}, Lorg/jdom/ContentList;->access$100(Lorg/jdom/ContentList;)[Lorg/jdom/Content;

    move-result-object v3

    aget-object v2, v3, v1

    .line 689
    .local v2, "obj":Lorg/jdom/Content;
    iget-object v3, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v3, v2}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 690
    if-ne p1, v0, :cond_0

    .line 701
    .end local v1    # "i":I
    .end local v2    # "obj":Lorg/jdom/Content;
    :goto_1
    return v1

    .line 693
    .restart local v1    # "i":I
    .restart local v2    # "obj":Lorg/jdom/Content;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 687
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 697
    .end local v2    # "obj":Lorg/jdom/Content;
    :cond_2
    if-ne p1, v0, :cond_3

    .line 698
    iget-object v3, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-static {v3}, Lorg/jdom/ContentList;->access$200(Lorg/jdom/ContentList;)I

    move-result v1

    goto :goto_1

    .line 701
    :cond_3
    iget-object v3, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-static {v3}, Lorg/jdom/ContentList;->access$200(Lorg/jdom/ContentList;)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 563
    iget-object v1, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v1, p2}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 564
    invoke-direct {p0, p1}, Lorg/jdom/ContentList$FilterList;->getAdjustedIndex(I)I

    move-result v0

    .line 565
    .local v0, "adjusted":I
    iget-object v1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v1, v0, p2}, Lorg/jdom/ContentList;->add(ILjava/lang/Object;)V

    .line 566
    iget v1, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    .line 567
    iget v1, p0, Lorg/jdom/ContentList$FilterList;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jdom/ContentList$FilterList;->count:I

    .line 572
    return-void

    .line 569
    .end local v0    # "adjusted":I
    :cond_0
    new-instance v1, Lorg/jdom/IllegalAddException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Filter won\'t allow the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\' to be added to the list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 581
    invoke-direct {p0, p1}, Lorg/jdom/ContentList$FilterList;->getAdjustedIndex(I)I

    move-result v0

    .line 582
    .local v0, "adjusted":I
    iget-object v1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v1, v0}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4

    .prologue
    .line 586
    new-instance v0, Lorg/jdom/ContentList$FilterListIterator;

    iget-object v1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/jdom/ContentList$FilterListIterator;-><init>(Lorg/jdom/ContentList;Lorg/jdom/filter/Filter;I)V

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 4

    .prologue
    .line 590
    new-instance v0, Lorg/jdom/ContentList$FilterListIterator;

    iget-object v1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/jdom/ContentList$FilterListIterator;-><init>(Lorg/jdom/ContentList;Lorg/jdom/filter/Filter;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 594
    new-instance v0, Lorg/jdom/ContentList$FilterListIterator;

    iget-object v1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    invoke-direct {v0, v1, v2, p1}, Lorg/jdom/ContentList$FilterListIterator;-><init>(Lorg/jdom/ContentList;Lorg/jdom/filter/Filter;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 604
    invoke-direct {p0, p1}, Lorg/jdom/ContentList$FilterList;->getAdjustedIndex(I)I

    move-result v0

    .line 605
    .local v0, "adjusted":I
    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v2, v0}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 606
    .local v1, "old":Ljava/lang/Object;
    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v2, v1}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 607
    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v2, v0}, Lorg/jdom/ContentList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .line 608
    iget v2, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    .line 609
    iget v2, p0, Lorg/jdom/ContentList$FilterList;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/jdom/ContentList$FilterList;->count:I

    .line 617
    return-object v1

    .line 612
    :cond_0
    new-instance v2, Lorg/jdom/IllegalAddException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Filter won\'t allow the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\' (index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ") to be removed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 630
    const/4 v1, 0x0

    .line 631
    .local v1, "old":Ljava/lang/Object;
    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v2, p2}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 632
    invoke-direct {p0, p1}, Lorg/jdom/ContentList$FilterList;->getAdjustedIndex(I)I

    move-result v0

    .line 633
    .local v0, "adjusted":I
    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v2, v0}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 634
    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v2, v1}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 635
    new-instance v2, Lorg/jdom/IllegalAddException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Filter won\'t allow the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\' (index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ") to be removed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 640
    :cond_0
    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v2, v0, p2}, Lorg/jdom/ContentList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 641
    iget v2, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    .line 648
    return-object v1

    .line 644
    .end local v0    # "adjusted":I
    :cond_1
    new-instance v2, Lorg/jdom/IllegalAddException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Filter won\'t allow index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " to be set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public size()I
    .locals 4

    .prologue
    .line 664
    iget v2, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    iget-object v3, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-static {v3}, Lorg/jdom/ContentList;->access$000(Lorg/jdom/ContentList;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 665
    iget v2, p0, Lorg/jdom/ContentList$FilterList;->count:I

    .line 676
    :goto_0
    return v2

    .line 668
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lorg/jdom/ContentList$FilterList;->count:I

    .line 669
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v2}, Lorg/jdom/ContentList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 670
    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-static {v2}, Lorg/jdom/ContentList;->access$100(Lorg/jdom/ContentList;)[Lorg/jdom/Content;

    move-result-object v2

    aget-object v1, v2, v0

    .line 671
    .local v1, "obj":Lorg/jdom/Content;
    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v2, v1}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 672
    iget v2, p0, Lorg/jdom/ContentList$FilterList;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jdom/ContentList$FilterList;->count:I

    .line 669
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 675
    .end local v1    # "obj":Lorg/jdom/Content;
    :cond_2
    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-static {v2}, Lorg/jdom/ContentList;->access$000(Lorg/jdom/ContentList;)I

    move-result v2

    iput v2, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    .line 676
    iget v2, p0, Lorg/jdom/ContentList$FilterList;->count:I

    goto :goto_0
.end method
