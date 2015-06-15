.class public Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
.super Ljavax/swing/tree/DefaultMutableTreeNode;


# static fields
.field private static final serialVersionUID:J = 0x52b29a36eefed5e7L


# instance fields
.field protected _hasFatalChildren:Z

.field protected _hasFatalRecords:Z

.field protected _numberOfContainedRecords:I

.field protected _numberOfRecordsFromChildren:I

.field protected _selected:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljavax/swing/tree/DefaultMutableTreeNode;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_selected:Z

    iput v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_numberOfContainedRecords:I

    iput v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_numberOfRecordsFromChildren:I

    iput-boolean v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_hasFatalChildren:Z

    iput-boolean v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_hasFatalRecords:Z

    invoke-virtual {p0, p1}, Ljavax/swing/tree/DefaultMutableTreeNode;->setUserObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addRecord()V
    .locals 1

    iget v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_numberOfContainedRecords:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_numberOfContainedRecords:I

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->addRecordToParent()V

    return-void
.end method

.method protected addRecordFromChild()V
    .locals 1

    iget v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_numberOfRecordsFromChildren:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_numberOfRecordsFromChildren:I

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->addRecordToParent()V

    return-void
.end method

.method protected addRecordToParent()V
    .locals 1

    invoke-virtual {p0}, Ljavax/swing/tree/DefaultMutableTreeNode;->getParent()Ljavax/swing/tree/TreeNode;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    check-cast v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->addRecordFromChild()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumberOfContainedRecords()I
    .locals 1

    iget v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_numberOfContainedRecords:I

    return v0
.end method

.method protected getNumberOfRecordsFromChildren()I
    .locals 1

    iget v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_numberOfRecordsFromChildren:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljavax/swing/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected getTotalNumberOfRecords()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getNumberOfRecordsFromChildren()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getNumberOfContainedRecords()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public hasFatalChildren()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_hasFatalChildren:Z

    return v0
.end method

.method public hasFatalRecords()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_hasFatalRecords:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_selected:Z

    return v0
.end method

.method public resetNumberOfContainedRecords()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_numberOfContainedRecords:I

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_numberOfRecordsFromChildren:I

    iput-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_hasFatalRecords:Z

    iput-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_hasFatalChildren:Z

    return-void
.end method

.method public setAllDescendantsDeSelected()V
    .locals 3

    invoke-virtual {p0}, Ljavax/swing/tree/DefaultMutableTreeNode;->children()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setSelected(Z)V

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setAllDescendantsDeSelected()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAllDescendantsSelected()V
    .locals 3

    invoke-virtual {p0}, Ljavax/swing/tree/DefaultMutableTreeNode;->children()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setSelected(Z)V

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setAllDescendantsSelected()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setHasFatalChildren(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_hasFatalChildren:Z

    return-void
.end method

.method public setHasFatalRecords(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_hasFatalRecords:Z

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_selected:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_selected:Z

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
