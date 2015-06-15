.class Lorg/jdom/ContentList$FilterListIterator;
.super Ljava/lang/Object;
.source "ContentList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom/ContentList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FilterListIterator"
.end annotation


# instance fields
.field private canremove:Z

.field private canset:Z

.field private cursor:I

.field private expected:I

.field filter:Lorg/jdom/filter/Filter;

.field private forward:Z

.field private fsize:I

.field private index:I

.field private final this$0:Lorg/jdom/ContentList;

.field private tmpcursor:I


# direct methods
.method constructor <init>(Lorg/jdom/ContentList;Lorg/jdom/filter/Filter;I)V
    .locals 4
    .param p2, "filter"    # Lorg/jdom/filter/Filter;
    .param p3, "start"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    .line 714
    iput-boolean v2, p0, Lorg/jdom/ContentList$FilterListIterator;->forward:Z

    .line 716
    iput-boolean v2, p0, Lorg/jdom/ContentList$FilterListIterator;->canremove:Z

    .line 718
    iput-boolean v2, p0, Lorg/jdom/ContentList$FilterListIterator;->canset:Z

    .line 721
    iput v3, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    .line 723
    iput v3, p0, Lorg/jdom/ContentList$FilterListIterator;->tmpcursor:I

    .line 725
    iput v3, p0, Lorg/jdom/ContentList$FilterListIterator;->index:I

    .line 728
    iput v3, p0, Lorg/jdom/ContentList$FilterListIterator;->expected:I

    .line 731
    iput v2, p0, Lorg/jdom/ContentList$FilterListIterator;->fsize:I

    .line 737
    iput-object p2, p0, Lorg/jdom/ContentList$FilterListIterator;->filter:Lorg/jdom/filter/Filter;

    .line 738
    invoke-static {p1}, Lorg/jdom/ContentList;->access$000(Lorg/jdom/ContentList;)I

    move-result v1

    iput v1, p0, Lorg/jdom/ContentList$FilterListIterator;->expected:I

    .line 741
    iput-boolean v2, p0, Lorg/jdom/ContentList$FilterListIterator;->forward:Z

    .line 743
    if-gez p3, :cond_0

    .line 744
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 748
    :cond_0
    iput v2, p0, Lorg/jdom/ContentList$FilterListIterator;->fsize:I

    .line 751
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/jdom/ContentList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 752
    invoke-virtual {p1, v0}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 753
    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->fsize:I

    if-ne p3, v1, :cond_1

    .line 755
    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    .line 757
    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->fsize:I

    iput v1, p0, Lorg/jdom/ContentList$FilterListIterator;->index:I

    .line 759
    :cond_1
    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->fsize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jdom/ContentList$FilterListIterator;->fsize:I

    .line 751
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 763
    :cond_3
    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->fsize:I

    if-le p3, v1, :cond_4

    .line 764
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/jdom/ContentList$FilterListIterator;->fsize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 766
    :cond_4
    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    if-ne v1, v3, :cond_5

    .line 775
    invoke-virtual {p1}, Lorg/jdom/ContentList;->size()I

    move-result v1

    iput v1, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    .line 776
    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->fsize:I

    iput v1, p0, Lorg/jdom/ContentList$FilterListIterator;->index:I

    .line 779
    :cond_5
    return-void
.end method

.method private checkConcurrentModification()V
    .locals 2

    .prologue
    .line 939
    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->expected:I

    iget-object v1, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-static {v1}, Lorg/jdom/ContentList;->access$000(Lorg/jdom/ContentList;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 940
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 942
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 882
    invoke-virtual {p0}, Lorg/jdom/ContentList$FilterListIterator;->nextIndex()I

    .line 885
    iget-object v0, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->tmpcursor:I

    invoke-virtual {v0, v1, p1}, Lorg/jdom/ContentList;->add(ILjava/lang/Object;)V

    .line 886
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom/ContentList$FilterListIterator;->forward:Z

    .line 887
    iget-object v0, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-static {v0}, Lorg/jdom/ContentList;->access$000(Lorg/jdom/ContentList;)I

    move-result v0

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->expected:I

    .line 888
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom/ContentList$FilterListIterator;->canset:Z

    iput-boolean v0, p0, Lorg/jdom/ContentList$FilterListIterator;->canremove:Z

    .line 889
    invoke-virtual {p0}, Lorg/jdom/ContentList$FilterListIterator;->nextIndex()I

    move-result v0

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->index:I

    .line 890
    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->tmpcursor:I

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    .line 891
    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->fsize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->fsize:I

    .line 892
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 785
    invoke-virtual {p0}, Lorg/jdom/ContentList$FilterListIterator;->nextIndex()I

    move-result v0

    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->fsize:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 807
    invoke-virtual {p0}, Lorg/jdom/ContentList$FilterListIterator;->previousIndex()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 792
    invoke-virtual {p0}, Lorg/jdom/ContentList$FilterListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 793
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "next() is beyond the end of the Iterator"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 794
    :cond_0
    invoke-virtual {p0}, Lorg/jdom/ContentList$FilterListIterator;->nextIndex()I

    move-result v0

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->index:I

    .line 795
    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->tmpcursor:I

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    .line 796
    iput-boolean v1, p0, Lorg/jdom/ContentList$FilterListIterator;->forward:Z

    .line 797
    iput-boolean v1, p0, Lorg/jdom/ContentList$FilterListIterator;->canremove:Z

    .line 798
    iput-boolean v1, p0, Lorg/jdom/ContentList$FilterListIterator;->canset:Z

    .line 799
    iget-object v0, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    invoke-virtual {v0, v1}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 3

    .prologue
    .line 829
    invoke-direct {p0}, Lorg/jdom/ContentList$FilterListIterator;->checkConcurrentModification()V

    .line 830
    iget-boolean v1, p0, Lorg/jdom/ContentList$FilterListIterator;->forward:Z

    if-eqz v1, :cond_2

    .line 832
    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    add-int/lit8 v0, v1, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v1}, Lorg/jdom/ContentList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 833
    iget-object v1, p0, Lorg/jdom/ContentList$FilterListIterator;->filter:Lorg/jdom/filter/Filter;

    iget-object v2, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v2, v0}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 834
    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->tmpcursor:I

    .line 835
    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->index:I

    add-int/lit8 v1, v1, 0x1

    .line 847
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 832
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 840
    :cond_1
    iget-object v1, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v1}, Lorg/jdom/ContentList;->size()I

    move-result v1

    iput v1, p0, Lorg/jdom/ContentList$FilterListIterator;->tmpcursor:I

    .line 841
    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->index:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 846
    .end local v0    # "i":I
    :cond_2
    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    iput v1, p0, Lorg/jdom/ContentList$FilterListIterator;->tmpcursor:I

    .line 847
    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->index:I

    goto :goto_1
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 814
    invoke-virtual {p0}, Lorg/jdom/ContentList$FilterListIterator;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_0

    .line 815
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "previous() is before the start of the Iterator"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 816
    :cond_0
    invoke-virtual {p0}, Lorg/jdom/ContentList$FilterListIterator;->previousIndex()I

    move-result v0

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->index:I

    .line 817
    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->tmpcursor:I

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    .line 818
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom/ContentList$FilterListIterator;->forward:Z

    .line 819
    iput-boolean v1, p0, Lorg/jdom/ContentList$FilterListIterator;->canremove:Z

    .line 820
    iput-boolean v1, p0, Lorg/jdom/ContentList$FilterListIterator;->canset:Z

    .line 821
    iget-object v0, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    invoke-virtual {v0, v1}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 3

    .prologue
    .line 856
    invoke-direct {p0}, Lorg/jdom/ContentList$FilterListIterator;->checkConcurrentModification()V

    .line 857
    iget-boolean v1, p0, Lorg/jdom/ContentList$FilterListIterator;->forward:Z

    if-nez v1, :cond_2

    .line 859
    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 860
    iget-object v1, p0, Lorg/jdom/ContentList$FilterListIterator;->filter:Lorg/jdom/filter/Filter;

    iget-object v2, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v2, v0}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 861
    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->tmpcursor:I

    .line 862
    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->index:I

    add-int/lit8 v1, v1, -0x1

    .line 874
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 859
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 867
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lorg/jdom/ContentList$FilterListIterator;->tmpcursor:I

    .line 868
    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->index:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 873
    .end local v0    # "i":I
    :cond_2
    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    iput v1, p0, Lorg/jdom/ContentList$FilterListIterator;->tmpcursor:I

    .line 874
    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->index:I

    goto :goto_1
.end method

.method public remove()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 899
    iget-boolean v0, p0, Lorg/jdom/ContentList$FilterListIterator;->canremove:Z

    if-nez v0, :cond_0

    .line 900
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not remove an element unless either next() or previous() has been called since the last remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 903
    :cond_0
    invoke-virtual {p0}, Lorg/jdom/ContentList$FilterListIterator;->nextIndex()I

    .line 904
    iget-object v0, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    invoke-virtual {v0, v1}, Lorg/jdom/ContentList;->remove(I)Ljava/lang/Object;

    .line 905
    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->tmpcursor:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    .line 906
    iget-object v0, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-static {v0}, Lorg/jdom/ContentList;->access$000(Lorg/jdom/ContentList;)I

    move-result v0

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->expected:I

    .line 908
    iput-boolean v2, p0, Lorg/jdom/ContentList$FilterListIterator;->forward:Z

    .line 909
    iput-boolean v2, p0, Lorg/jdom/ContentList$FilterListIterator;->canremove:Z

    .line 910
    iput-boolean v2, p0, Lorg/jdom/ContentList$FilterListIterator;->canset:Z

    .line 911
    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->fsize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->fsize:I

    .line 912
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 919
    iget-boolean v0, p0, Lorg/jdom/ContentList$FilterListIterator;->canset:Z

    if-nez v0, :cond_0

    .line 920
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not set an element unless either next() or previous() has been called since the last remove() or set()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 923
    :cond_0
    invoke-direct {p0}, Lorg/jdom/ContentList$FilterListIterator;->checkConcurrentModification()V

    .line 925
    iget-object v0, p0, Lorg/jdom/ContentList$FilterListIterator;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v0, p1}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 926
    new-instance v0, Lorg/jdom/IllegalAddException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Filter won\'t allow index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/jdom/ContentList$FilterListIterator;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " to be set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 930
    :cond_1
    iget-object v0, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    invoke-virtual {v0, v1, p1}, Lorg/jdom/ContentList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 931
    iget-object v0, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-static {v0}, Lorg/jdom/ContentList;->access$000(Lorg/jdom/ContentList;)I

    move-result v0

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->expected:I

    .line 933
    return-void
.end method
